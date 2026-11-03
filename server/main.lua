--[[
    Pigeon Bucket Monitor: server.

    Keeps track of every player's routing bucket. A change is seen as it happens when FiveM reports it
    (onEntityBucketChange), and otherwise by the regular scan. Players left outside the default bucket
    are reported as stuck, and staff can check, move and fix them with one command.

    Other resources can say why they're about to move a player (ReportBucketChange), or move them through
    this resource (SetPlayerBucket), so reports show the likely cause.
]]

local RESOURCE = GetCurrentResourceName()
local VERSION = GetResourceMetadata(RESOURCE, 'version', 0) or '?'
local MAX_BUCKET = 2147483647
local SPAWN_COOLDOWN_MS = 10000

local strings = Locales[Config.Locale] or Locales.en
local expected = {}
local sessions = {}       -- [source] = { bucket, since, cause, changeCause, lastStuck, expectChange, lastSpawn }

for _, bucket in ipairs(Config.ExpectedBuckets or {}) do
    expected[bucket] = true
end

---------------------------------------------------------------------------
-- Text

local function t(key, values)
    local text = strings[key] or Locales.en[key] or key
    return (text:gsub('{(%w+)}', function(name)
        local value = values and values[name]
        return value ~= nil and tostring(value) or '{' .. name .. '}'
    end))
end

local function truncate(text, limit)
    text = tostring(text)
    if #text > limit then return text:sub(1, limit - 3) .. '...' end
    return text
end

local function now()
    return GetGameTimer()
end

local function duration(ms)
    local seconds = math.max(0, math.floor(ms / 1000))
    if seconds < 60 then return ('%ds'):format(seconds) end
    local minutes = seconds // 60
    if minutes < 60 then return ('%dm %02ds'):format(minutes, seconds % 60) end
    return ('%dh %02dm'):format(minutes // 60, minutes % 60)
end

local function serverName()
    local name = GetConvar('sv_projectName', '')
    if name == '' then name = GetConvar('sv_hostname', 'FiveM server') end
    return (name:gsub('%^%d', ''))
end

local function playerLabel(source)
    return ('%s (ID %s)'):format(GetPlayerName(source) or t('unknown'), source)
end

local function staffLabel(source)
    if source == 0 then return t('console') end
    return playerLabel(source)
end

---------------------------------------------------------------------------
-- Buckets

local function exists(source)
    return source and source > 0 and GetPlayerName(source) ~= nil
end

local function bucketOf(source)
    return GetPlayerRoutingBucket(source)
end

local function isOutside(bucket)
    return bucket ~= Config.DefaultBucket and not expected[bucket]
end

local function session(source)
    local entry = sessions[source]
    if not entry then
        entry = { bucket = bucketOf(source), since = now() }
        sessions[source] = entry
    end
    return entry
end

--- The likely cause of a change happening now, from the last change another resource reported.
local function currentCause(entry)
    local cause = entry.cause
    if cause and now() - cause.at <= Config.CauseSeconds * 1000 then
        return t('cause_reported', { resource = cause.resource, reason = cause.reason, time = duration(now() - cause.at) })
    end
    return nil
end

---------------------------------------------------------------------------
-- Reports

local function playerFields(source)
    local fields = {}
    local function add(name, value)
        if value then fields[#fields + 1] = { name = truncate(name, 256), value = truncate(value, 1024), inline = false } end
    end

    if Config.Include.character then
        local character = Bridge.GetCharacter(source)
        if character then
            local values = {
                name = character.name or t('unknown'),
                id = character.id or '?',
                job = character.job or '?',
                gang = character.gang,
            }
            add(t('field_character'), t(character.gang and 'character_gang' or 'character', values))
        end
    end

    if Config.Include.identifiers then
        local lines = {}
        for _, kind in ipairs({ 'license', 'license2', 'discord', 'fivem', 'steam' }) do
            local identifier = GetPlayerIdentifierByType(source, kind)
            if identifier then
                local line = ('%s: ||%s||'):format(kind, identifier)
                if kind == 'discord' then line = line .. (' <@%s>'):format(identifier:gsub('^discord:', '')) end
                lines[#lines + 1] = line
            end
        end
        if #lines > 0 then add(t('field_identifiers'), table.concat(lines, '\n')) end
    end

    local ped = GetPlayerPed(source)
    if ped and ped ~= 0 then
        if Config.Include.position then
            local coords = GetEntityCoords(ped)
            add(t('field_position'), t('position', {
                x = ('%.2f'):format(coords.x), y = ('%.2f'):format(coords.y), z = ('%.2f'):format(coords.z),
                heading = ('%.0f'):format(GetEntityHeading(ped)),
            }))
        end
        if Config.Include.health then
            add(t('field_health'), t('health', { health = GetEntityHealth(ped), armour = GetPedArmour(ped) }))
        end
    end

    return fields
end

local function field(name, value, inline)
    return { name = truncate(name, 256), value = truncate(value, 1024), inline = inline ~= false }
end

---@param options { title: string, text: string, colour: number, fields?: table, source?: number, mention?: boolean }
local function report(options)
    local fields = options.fields or {}
    if options.source then
        for _, extra in ipairs(playerFields(options.source)) do
            if #fields < 25 then fields[#fields + 1] = extra end
        end
    end

    if Config.Console then
        print(('[%s] %s: %s'):format(RESOURCE, options.title, options.text))
    end

    Discord.Send({
        author = { name = truncate(serverName(), 256) },
        title = truncate(options.title, 256),
        description = truncate(options.text, 4096),
        color = options.colour,
        fields = fields,
        footer = { text = ('Pigeon Bucket Monitor v%s'):format(VERSION) },
        timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ'),
    }, options.mention and Config.Discord.mention or nil)
end

local function causeFields(cause)
    local fields = { field(t('field_cause'), cause or t('cause_unknown', { seconds = Config.CauseSeconds }), false) }
    if not cause and #(Config.KnownBucketResources or {}) > 0 then
        fields[2] = field(t('field_known'), table.concat(Config.KnownBucketResources, '\n'), false)
    end
    return fields
end

---------------------------------------------------------------------------
-- Watching changes

--- Records the player's bucket, and reports it if it changed.
local function observe(source, bucket)
    local entry = sessions[source]
    if not entry then
        session(source)
        return
    end
    if entry.bucket == bucket then return end

    local old = entry.bucket
    entry.bucket = bucket
    entry.since = now()
    entry.lastStuck = nil
    entry.changeCause = currentCause(entry)

    -- A change this resource made itself has already been reported with who made it.
    if entry.expectChange == bucket then
        entry.expectChange = nil
        return
    end

    if Config.Log.changes then
        local fields = { field(t('field_buckets'), ('%s → %s'):format(old, bucket)) }
        for _, extra in ipairs(causeFields(entry.changeCause)) do fields[#fields + 1] = extra end
        report({
            title = t('title_change'),
            text = t('text_change', { player = playerLabel(source), old = old, new = bucket }),
            colour = isOutside(bucket) and Config.Discord.colours.warning or Config.Discord.colours.change,
            fields = fields,
            source = source,
        })
    end
end

local function checkStuck(source)
    local entry = sessions[source]
    if not entry or not Config.Log.stuck or not isOutside(entry.bucket) then return end

    local elapsed = now() - entry.since
    if elapsed < Config.StuckAfterSeconds * 1000 then return end

    if entry.lastStuck then
        local repeatMs = (Config.StuckRepeatMinutes or 0) * 60000
        if repeatMs <= 0 or now() - entry.lastStuck < repeatMs then return end
    end
    entry.lastStuck = now()

    local fields = {
        field(t('field_bucket'), entry.bucket),
        field(t('field_time'), duration(elapsed)),
    }
    for _, extra in ipairs(causeFields(entry.changeCause)) do fields[#fields + 1] = extra end
    report({
        title = t('title_stuck'),
        text = t('text_stuck', { player = playerLabel(source), bucket = entry.bucket, time = duration(elapsed), default = Config.DefaultBucket }),
        colour = Config.Discord.colours.warning,
        fields = fields,
        source = source,
        mention = true,
    })
end

local function scan()
    for _, id in ipairs(GetPlayers()) do
        local source = tonumber(id)
        observe(source, bucketOf(source))
        checkStuck(source)
    end
end

AddEventHandler('onEntityBucketChange', function(entity, bucket)
    for _, id in ipairs(GetPlayers()) do
        local source = tonumber(id)
        if GetPlayerPed(source) == entity then
            observe(source, bucket)
            return
        end
    end
end)

AddEventHandler('playerJoining', function()
    local source = tonumber(source)
    sessions[source] = nil
    session(source)
end)

AddEventHandler('playerDropped', function()
    sessions[tonumber(source)] = nil
end)

--- Reports a player who spawned or loaded a character outside the default bucket.
local function arrived(source, title, text)
    if not exists(source) then return end
    local entry = session(source)
    observe(source, bucketOf(source))
    if not Config.Log.spawns or not isOutside(entry.bucket) then return end
    report({
        title = t(title),
        text = t(text, { player = playerLabel(source), bucket = entry.bucket, default = Config.DefaultBucket }),
        colour = Config.Discord.colours.warning,
        fields = causeFields(entry.changeCause),
        source = source,
    })
end

local function addSuggestion(source)
    if not IsPlayerAceAllowed(source, Config.Permission) then return end
    TriggerClientEvent('chat:addSuggestion', source, '/' .. Config.Command, t('suggest'), {
        { name = 'action', help = t('suggest_action') },
        { name = 'id', help = t('suggest_id') },
        { name = 'bucket', help = t('suggest_bucket') },
    })
end

RegisterNetEvent(RESOURCE .. ':spawned', function()
    local source = tonumber(source)
    local entry = sessions[source]
    if entry and entry.lastSpawn and now() - entry.lastSpawn < SPAWN_COOLDOWN_MS then return end
    session(source).lastSpawn = now()
    addSuggestion(source)
    arrived(source, 'title_spawn', 'text_spawn')
end)

AddEventHandler('QBCore:Server:PlayerLoaded', function(player)
    local data = type(player) == 'table' and player.PlayerData
    if data and data.source then arrived(tonumber(data.source), 'title_character', 'text_character') end
end)

AddEventHandler('esx:playerLoaded', function(playerId)
    arrived(tonumber(playerId), 'title_character', 'text_character')
end)

---------------------------------------------------------------------------
-- Moving players

local function validBucket(value)
    local bucket = math.tointeger(tonumber(value))
    if bucket and bucket >= 0 and bucket <= MAX_BUCKET then return bucket end
    return nil
end

--- Moves a player and, with reportOptions, reports who did it. reportOptions.text is a function of the
--- old bucket. A reason field is added when cause.showReason is set.
local function move(target, bucket, cause, reportOptions)
    local entry = session(target)
    observe(target, bucketOf(target))
    local old = entry.bucket
    entry.cause = cause
    -- With its own report, the change isn't reported a second time. Without one (that kind of logging
    -- is off), it's reported as an ordinary change, with this as the cause.
    if old ~= bucket and reportOptions then entry.expectChange = bucket end
    SetPlayerRoutingBucket(target, bucket)
    observe(target, bucketOf(target))

    if reportOptions then
        reportOptions.text = reportOptions.text(old)
        reportOptions.fields = { field(t('field_buckets'), ('%s → %s'):format(old, bucket)) }
        if cause.showReason then reportOptions.fields[2] = field(t('field_reason'), cause.reason, false) end
        reportOptions.source = target
        report(reportOptions)
    end
    return old
end

---------------------------------------------------------------------------
-- Staff commands

local function reply(source, text)
    if source == 0 then
        print(('[%s] %s'):format(RESOURCE, text))
    else
        TriggerClientEvent('chat:addMessage', source, {
            color = { 255, 144, 0 },
            multiline = true,
            args = { 'Bucket Monitor', text },
        })
    end
end

local function snapshotFields()
    local byBucket, total, outside = {}, 0, 0
    for _, id in ipairs(GetPlayers()) do
        local source = tonumber(id)
        local bucket = bucketOf(source)
        byBucket[bucket] = byBucket[bucket] or {}
        table.insert(byBucket[bucket], playerLabel(source))
        total = total + 1
        if isOutside(bucket) then outside = outside + 1 end
    end

    local buckets = {}
    for bucket in pairs(byBucket) do buckets[#buckets + 1] = bucket end
    table.sort(buckets)

    local fields = { field(t('field_players'), total), field(t('field_outside'), outside) }
    for _, bucket in ipairs(buckets) do
        if #fields == 25 then break end
        table.sort(byBucket[bucket])
        fields[#fields + 1] = field(t('field_in_bucket', { bucket = bucket }), table.concat(byBucket[bucket], '\n'), false)
    end
    return fields
end

local actions = {}

function actions.check(source, args)
    local target = tonumber(args[2])
    if not exists(target) then return reply(source, t('reply_no_player', { id = args[2] or '?' })) end
    local bucket = bucketOf(target)
    local note = bucket == Config.DefaultBucket and t('reply_check_default') or expected[bucket] and t('reply_check_expected') or ''
    reply(source, t('reply_check', { player = playerLabel(target), bucket = bucket, expected = note }))
end

local function staffMove(source, target, bucket, title, text)
    local staff = staffLabel(source)
    move(target, bucket, { resource = staff, reason = t(title), at = now() }, Config.Log.staff and {
        title = t(title),
        text = function(old) return t(text, { staff = staff, player = playerLabel(target), old = old, new = bucket }) end,
        colour = Config.Discord.colours.staff,
    } or nil)
    reply(source, t('reply_set', { player = playerLabel(target), bucket = bucket }))
end

function actions.set(source, args)
    local target, bucket = tonumber(args[2]), validBucket(args[3])
    if not exists(target) then return reply(source, t('reply_no_player', { id = args[2] or '?' })) end
    if not bucket then return reply(source, t('reply_bad_bucket')) end
    staffMove(source, target, bucket, 'title_set', 'text_set')
end

function actions.fix(source, args)
    local target = tonumber(args[2])
    if not exists(target) then return reply(source, t('reply_no_player', { id = args[2] or '?' })) end
    staffMove(source, target, Config.DefaultBucket, 'title_fix', 'text_fix')
end

function actions.list(source)
    local lines = {}
    for _, id in ipairs(GetPlayers()) do
        local target = tonumber(id)
        observe(target, bucketOf(target))
        local entry = sessions[target]
        if entry and entry.bucket ~= Config.DefaultBucket then
            lines[#lines + 1] = t('reply_list_line', { player = playerLabel(target), bucket = entry.bucket, time = duration(now() - entry.since) })
        end
    end
    if #lines == 0 then return reply(source, t('reply_list_none', { default = Config.DefaultBucket })) end
    table.sort(lines)
    reply(source, t('reply_list_title', { default = Config.DefaultBucket }) .. '\n' .. table.concat(lines, '\n'))
end

function actions.snapshot(source)
    local fields = snapshotFields()
    local text = t('text_snapshot', { staff = staffLabel(source) })
    if Discord.Enabled() then
        report({ title = t('title_snapshot'), text = text, colour = Config.Discord.colours.staff, fields = fields })
        reply(source, t('reply_snapshot'))
    else
        print(('[%s] %s'):format(RESOURCE, t('title_snapshot')))
        for _, entry in ipairs(fields) do
            print(('  %s: %s'):format(entry.name, (tostring(entry.value):gsub('\n', ', '))))
        end
        reply(source, t('reply_snapshot_console'))
    end
end

RegisterCommand(Config.Command, function(source, args)
    source = tonumber(source)
    if source ~= 0 and not IsPlayerAceAllowed(source, Config.Permission) then
        return reply(source, t('reply_no_permission', { command = Config.Command }))
    end
    local action = actions[(args[1] or ''):lower()]
    if not action then return reply(source, t('reply_usage', { command = Config.Command })) end
    action(source, args)
end, false)

---------------------------------------------------------------------------
-- Exports for other resources

--- Says why the calling resource is about to move a player, so the report shows it as the cause.
--- Call it just before SetPlayerRoutingBucket. Returns false if there's no such player.
exports('ReportBucketChange', function(target, reason)
    target = tonumber(target)
    if not exists(target) then return false end
    session(target).cause = {
        resource = GetInvokingResource() or RESOURCE,
        reason = type(reason) == 'string' and reason ~= '' and truncate(reason, 200) or t('no_reason'),
        at = now(),
    }
    return true
end)

--- Moves a player to a bucket and logs it with the calling resource's name and reason.
--- Returns true, or false if the player or bucket isn't valid.
exports('SetPlayerBucket', function(target, bucket, reason)
    target, bucket = tonumber(target), validBucket(bucket)
    if not exists(target) or not bucket then return false end
    local resource = GetInvokingResource() or RESOURCE
    local given = type(reason) == 'string' and reason ~= ''
    reason = given and truncate(reason, 200) or t('no_reason')
    local changing = bucketOf(target) ~= bucket
    move(target, bucket, { resource = resource, reason = reason, at = now(), showReason = given }, (Config.Log.changes and changing) and {
        title = t('title_set_export'),
        text = function(old) return t('text_set_export', { resource = resource, player = playerLabel(target), old = old, new = bucket }) end,
        colour = isOutside(bucket) and Config.Discord.colours.warning or Config.Discord.colours.change,
    } or nil)
    return true
end)

---------------------------------------------------------------------------

CreateThread(function()
    for _, id in ipairs(GetPlayers()) do
        session(tonumber(id))
    end
    while true do
        Wait(math.floor(Config.ScanSeconds * 1000))
        scan()
    end
end)

if not Discord.Enabled() then
    print(('[%s] No Discord webhook is set, so reports only go to the server console. See configuration/config.lua.'):format(RESOURCE))
end
