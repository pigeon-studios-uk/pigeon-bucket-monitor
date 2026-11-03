--[[
    Pigeon Bucket Monitor: client.

    Tells the server when the player spawns, so a spawn outside the default bucket can be reported.
    Nothing else is sent: the server reads the player's bucket, position and health itself.
]]

AddEventHandler('playerSpawned', function()
    TriggerServerEvent(GetCurrentResourceName() .. ':spawned')
end)
