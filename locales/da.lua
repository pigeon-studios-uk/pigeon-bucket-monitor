--[[
    Pigeon Bucket Monitor: Danish (Dansk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'da'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.da = {
    -- Report titles.
    title_change = 'Bucket ændret',
    title_stuck = 'Spiller sidder fast uden for standard-bucket',
    title_spawn = 'Spawnede uden for standard-bucket',
    title_character = 'Karakter indlæst uden for standard-bucket',
    title_set = 'Bucket sat af staff',
    title_fix = 'Bucket rettet af staff',
    title_set_export = 'Bucket sat af en ressource',
    title_snapshot = 'Bucket-oversigt',

    -- Report text.
    text_change = '{player} flyttede fra bucket {old} til bucket {new}.',
    text_stuck = '{player} har været i bucket {bucket} i {time}. Standard-bucket er {default}.',
    text_spawn = '{player} spawnede i bucket {bucket}. Standard-bucket er {default}.',
    text_character = '{player} indlæste en karakter i bucket {bucket}. Standard-bucket er {default}.',
    text_set = '{staff} flyttede {player} fra bucket {old} til bucket {new}.',
    text_fix = '{staff} flyttede {player} fra bucket {old} tilbage til standard-bucket {new}.',
    text_set_export = '{resource} flyttede {player} fra bucket {old} til bucket {new}.',
    text_snapshot = '{staff} bad om en oversigt over alle spilleres bucket.',

    -- Report fields.
    field_player = 'Spiller',
    field_bucket = 'Bucket',
    field_buckets = 'Ændring',
    field_time = 'Tid i bucket',
    field_cause = 'Sandsynlig årsag',
    field_known = 'Ressourcer der ændrer buckets',
    field_reason = 'Årsag',
    field_character = 'Karakter',
    field_identifiers = 'Identifikatorer',
    field_position = 'Position',
    field_health = 'Helbred',
    field_players = 'Spillere',
    field_outside = 'Uden for standard-bucket',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} før)',
    cause_unknown = 'Ukendt. Ingen ressource meldte en ændring i de {seconds} sekunder før.',
    no_reason = 'ingen årsag angivet',
    position = '{x}, {y}, {z}, retning {heading}',
    health = 'Helbred {health}, skudsikker vest {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'serverkonsollen',
    unknown = 'Ukendt',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} er i bucket {bucket}{expected}.',
    reply_check_expected = ' (forventet)',
    reply_check_default = ' (standard)',
    reply_set = 'Flyttede {player} til bucket {bucket}.',
    reply_list_title = 'Spillere uden for standard-bucket {default}:',
    reply_list_line = '  {player}: bucket {bucket}, i {time}',
    reply_list_none = 'Alle spillere er i standard-bucket {default}.',
    reply_snapshot = 'Oversigt sendt til Discord.',
    reply_snapshot_console = 'Der er ikke sat nogen Discord-webhook, så oversigten blev skrevet i serverkonsollen.',
    reply_usage = 'Brug: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Der er ingen spiller med ID {id}.',
    reply_bad_bucket = 'En bucket er et helt tal fra 0 og op.',
    reply_no_permission = 'Du har ikke tilladelse til at bruge /{command}.',

    -- Chat command suggestions.
    suggest = 'Tjek og ret spilleres routing buckets',
    suggest_action = 'check, set, fix, list eller snapshot',
    suggest_id = 'Spillerens server-ID',
    suggest_bucket = 'Bucket (kun set)',
}
