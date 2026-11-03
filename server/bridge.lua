--[[
    Pigeon Bucket Monitor: frameworks.

    Finds Qbox, QBCore or ESX if one is running, and reads the character a player has loaded. Without a
    framework the resource works the same, and reports simply leave the character out.
]]

Bridge = {}

local framework, core

local function detect()
    if framework ~= nil then return end
    if GetResourceState('qbx_core') == 'started' then
        framework = 'qbx'
    elseif GetResourceState('qb-core') == 'started' then
        framework = 'qb'
        core = exports['qb-core']:GetCoreObject()
    elseif GetResourceState('es_extended') == 'started' then
        framework = 'esx'
        core = exports.es_extended:getSharedObject()
    else
        framework = false
    end
end

local function fromQb(player)
    local data = player and player.PlayerData
    if not data then return nil end
    local info = data.charinfo or {}
    local job, gang = data.job or {}, data.gang or {}
    local name = ((info.firstname or '') .. ' ' .. (info.lastname or '')):match('^%s*(.-)%s*$')
    return {
        name = name ~= '' and name or nil,
        id = data.citizenid,
        job = job.label and ('%s, %s'):format(job.label, job.grade and job.grade.name or '?') or nil,
        gang = gang.name and gang.name ~= 'none' and ('%s, %s'):format(gang.label or gang.name, gang.grade and gang.grade.name or '?') or nil,
    }
end

local readers = {
    qbx = function(source)
        return fromQb(exports.qbx_core:GetPlayer(source))
    end,
    qb = function(source)
        return fromQb(core.Functions.GetPlayer(source))
    end,
    esx = function(source)
        local player = core.GetPlayerFromId(source)
        if not player then return nil end
        local job = player.getJob and player.getJob() or player.job or {}
        return {
            name = player.getName and player.getName() or nil,
            id = player.getIdentifier and player.getIdentifier() or player.identifier,
            job = job.label and ('%s, %s'):format(job.label, job.grade_label or job.grade or '?') or nil,
        }
    end,
}

--- The framework in use: 'qbx', 'qb', 'esx' or false.
function Bridge.Framework()
    detect()
    return framework
end

--- The player's loaded character as { name, id, job, gang }, or nil if there isn't one.
function Bridge.GetCharacter(source)
    detect()
    if not framework then return nil end
    local ok, character = pcall(readers[framework], source)
    if ok and type(character) == 'table' and (character.name or character.id) then return character end
    return nil
end
