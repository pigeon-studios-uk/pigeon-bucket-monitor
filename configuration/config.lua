Config = {}

-- Language for the text players see. 'auto' follows ox_lib's language (setr ox:locale "de" in
-- server.cfg) and is English when that isn't set. Or name a file from locales/, such as 'de' or 'pt-br'.
Config.Locale = 'auto'

---------------------------------------------------------------------------
-- Buckets

-- The bucket players should normally be in. 0 is FiveM's default world.
Config.DefaultBucket = 0

-- Buckets that players are meant to spend time in, such as a housing or minigame resource's own
-- buckets. Changes into and out of them are still logged, but players in them are never reported as
-- stuck. Use {} for none.
Config.ExpectedBuckets = {}

-- How often, in seconds, every player's bucket is checked. Most changes are seen as they happen; this
-- also catches the rest.
Config.ScanSeconds = 10

-- A player outside the default bucket for this many seconds is reported as stuck. Short visits, such
-- as character selection, aren't reported. 0 reports them straight away.
Config.StuckAfterSeconds = 60

-- While a player stays stuck, report them again every this many minutes. 0 reports them only once.
Config.StuckRepeatMinutes = 10

-- How long, in seconds, a change another resource reported (see the README's Exports) is shown as the
-- likely cause of a bucket change.
Config.CauseSeconds = 30

-- Resources on your server that change buckets. They're listed in a report when its cause is unknown,
-- as a starting point. Use {} for none.
Config.KnownBucketResources = {
    -- 'my-multicharacter',
    -- 'my-housing',
}

---------------------------------------------------------------------------
-- What's logged

Config.Log = {
    changes = true,          -- every bucket change
    stuck = true,            -- players outside the default bucket for Config.StuckAfterSeconds
    spawns = true,           -- players who spawn, or load a character, outside the default bucket
    staff = true,            -- every use of the staff commands below
}

-- What a report includes about the player.
Config.Include = {
    identifiers = true,      -- licence, Discord, FiveM and Steam identifiers (never IP addresses)
    character = true,        -- character name, ID, job and gang, with Qbox, QBCore or ESX
    position = true,         -- coordinates and heading
    health = true,           -- health and armour
}

-- Print reports in the server console as well as sending them to Discord.
Config.Console = true

---------------------------------------------------------------------------
-- Discord

-- The webhook reports are sent to. Leave this '' and set it in server.cfg instead, which keeps it out
-- of this file:
--     set pigeon_bucket_monitor_webhook "https://discord.com/api/webhooks/..."
-- If both are set, server.cfg wins. Without a webhook, reports only go to the console.
Config.Webhook = ''

Config.Discord = {
    username = 'Bucket Monitor',     -- the name the messages are posted under
    avatar = '',                     -- an image URL for the messages, or '' for the webhook's own
    mention = '',                    -- added to stuck reports: '<@&' .. your role's ID .. '>' pings a role. '' for none
    colours = {
        change = 3447003,            -- blue
        warning = 16753920,          -- orange: stuck players and spawns outside the default bucket
        staff = 5763719,             -- green
    },
}

---------------------------------------------------------------------------
-- Staff commands

-- /bucket check <id> · /bucket set <id> <bucket> · /bucket fix <id> · /bucket list · /bucket snapshot
-- Staff need this ACE permission, granted in server.cfg:
--     add_ace group.admin pigeon-bucket-monitor.staff allow
-- The server console can always use them.
Config.Command = 'bucket'
Config.Permission = 'pigeon-bucket-monitor.staff'

-- Update checks are controlled in server.cfg for every Pigeon Studios resource at once:
--     set pigeon_update_check "on"      (default)  |  "quiet"  |  "off"
