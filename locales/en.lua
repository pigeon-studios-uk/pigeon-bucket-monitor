--[[
    Pigeon Bucket Monitor: English.

    To translate, copy this file to a new one named with the language's two-letter code (such as de.lua),
    change `Locales.en` to match (Locales.de), translate the text in quotes, and set Config.Locale.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.en = {
    -- Report titles.
    title_change = 'Bucket changed',
    title_stuck = 'Player stuck outside the default bucket',
    title_spawn = 'Spawned outside the default bucket',
    title_character = 'Character loaded outside the default bucket',
    title_set = 'Bucket set by staff',
    title_fix = 'Bucket fixed by staff',
    title_set_export = 'Bucket set by a resource',
    title_snapshot = 'Bucket snapshot',

    -- Report text.
    text_change = '{player} moved from bucket {old} to bucket {new}.',
    text_stuck = '{player} has been in bucket {bucket} for {time}. The default bucket is {default}.',
    text_spawn = '{player} spawned in bucket {bucket}. The default bucket is {default}.',
    text_character = '{player} loaded a character in bucket {bucket}. The default bucket is {default}.',
    text_set = '{staff} moved {player} from bucket {old} to bucket {new}.',
    text_fix = '{staff} moved {player} from bucket {old} back to the default bucket {new}.',
    text_set_export = '{resource} moved {player} from bucket {old} to bucket {new}.',
    text_snapshot = '{staff} asked for a snapshot of every player\'s bucket.',

    -- Report fields.
    field_player = 'Player',
    field_bucket = 'Bucket',
    field_buckets = 'Change',
    field_time = 'Time in bucket',
    field_cause = 'Likely cause',
    field_known = 'Resources that change buckets',
    field_reason = 'Reason',
    field_character = 'Character',
    field_identifiers = 'Identifiers',
    field_position = 'Position',
    field_health = 'Health',
    field_players = 'Players',
    field_outside = 'Outside the default bucket',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} before)',
    cause_unknown = 'Unknown. No resource reported a change in the {seconds} seconds before.',
    no_reason = 'no reason given',
    position = '{x}, {y}, {z}, heading {heading}',
    health = 'Health {health}, armour {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'the server console',
    unknown = 'Unknown',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} is in bucket {bucket}{expected}.',
    reply_check_expected = ' (expected)',
    reply_check_default = ' (the default)',
    reply_set = 'Moved {player} to bucket {bucket}.',
    reply_list_title = 'Players outside the default bucket {default}:',
    reply_list_line = '  {player}: bucket {bucket}, for {time}',
    reply_list_none = 'Every player is in the default bucket {default}.',
    reply_snapshot = 'Snapshot sent to Discord.',
    reply_snapshot_console = 'No Discord webhook is set, so the snapshot was printed in the server console.',
    reply_usage = 'Use: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'There\'s no player with ID {id}.',
    reply_bad_bucket = 'A bucket is a whole number from 0 up.',
    reply_no_permission = 'You don\'t have permission to use /{command}.',

    -- Chat command suggestions.
    suggest = 'Check and fix players\' routing buckets',
    suggest_action = 'check, set, fix, list or snapshot',
    suggest_id = 'Player server ID',
    suggest_bucket = 'Bucket (set only)',
}
