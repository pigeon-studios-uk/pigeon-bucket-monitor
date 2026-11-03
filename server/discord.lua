--[[
    Pigeon Bucket Monitor: Discord.

    Sends reports to the webhook one at a time, at most one every two seconds (Discord allows about 30
    a minute per webhook). If Discord asks it to slow down, it waits as long as Discord says and tries
    the same report again. If reports pile up faster than they can be sent, the oldest are dropped.
]]

Discord = {}

local SEND_INTERVAL_MS = 2000
local MAX_QUEUE = 100
local MAX_ATTEMPTS = 3

local queue = {}
local sending = false
local dropped = 0

local function webhook()
    local fromConvar = GetConvar('pigeon_bucket_monitor_webhook', '')
    if fromConvar ~= '' then return fromConvar end
    return Config.Webhook or ''
end

function Discord.Enabled()
    return webhook():match('^https://') ~= nil
end

local function post(item, done)
    local payload = {
        username = Config.Discord.username,
        avatar_url = Config.Discord.avatar ~= '' and Config.Discord.avatar or nil,
        content = item.content,
        embeds = { item.embed },
        allowed_mentions = { parse = { 'roles', 'users' } },
    }
    PerformHttpRequest(webhook(), function(status, body)
        done(tonumber(status) or 0, body)
    end, 'POST', json.encode(payload), { ['Content-Type'] = 'application/json' })
end

local function retryAfter(response)
    local ok, data = pcall(json.decode, response or '')
    local seconds = ok and type(data) == 'table' and tonumber(data.retry_after)
    return math.floor(((seconds or 5) * 1000) + 250)
end

local function pump()
    if sending then return end
    sending = true
    CreateThread(function()
        while #queue > 0 do
            local item = queue[1]
            local status, response
            post(item, function(code, body) status, response = code, body end)
            while status == nil do Wait(50) end

            if status == 429 then
                Wait(retryAfter(response))
            else
                item.attempts = item.attempts + 1
                if (status >= 200 and status < 300) or item.attempts >= MAX_ATTEMPTS then
                    if status < 200 or status >= 300 then
                        print(('[%s] Discord refused a report (HTTP %s). Check the webhook URL.'):format(GetCurrentResourceName(), tostring(status)))
                    end
                    table.remove(queue, 1)
                end
                Wait(SEND_INTERVAL_MS)
            end
        end
        if dropped > 0 then
            print(('[%s] %d older reports weren\'t sent to Discord because too many came at once.'):format(GetCurrentResourceName(), dropped))
            dropped = 0
        end
        sending = false
    end)
end

--- Queues an embed, with optional message text such as a role mention.
function Discord.Send(embed, content)
    if not Discord.Enabled() then return false end
    if #queue >= MAX_QUEUE then
        table.remove(queue, 1)
        dropped = dropped + 1
    end
    queue[#queue + 1] = { embed = embed, content = content ~= '' and content or nil, attempts = 0 }
    pump()
    return true
end
