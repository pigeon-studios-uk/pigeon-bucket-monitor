fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-bucket-monitor'
author 'Pigeon Studios'
description 'Logs routing bucket changes to Discord, warns when players are stuck in the wrong bucket, and gives staff commands to check and fix them.'
version '1.0.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-bucket-monitor'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-bucket-monitor'

-- Positions and health in reports are read on the server, which needs OneSync.
-- Without it, everything else still works and reports leave them out.

server_scripts {
    'configuration/config.lua',
    'locales/*.lua',
    'server/bridge.lua',
    'server/discord.lua',
    'server/main.lua',
    'server/version_check.lua',
}

client_scripts {
    'client/main.lua',
}
