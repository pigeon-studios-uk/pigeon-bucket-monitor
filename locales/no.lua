--[[
    Pigeon Bucket Monitor: Norwegian (Norsk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'no'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.no = {
    -- Report titles.
    title_change = 'Bucket endret',
    title_stuck = 'Spiller sitter fast utenfor standard-bucket',
    title_spawn = 'Spawnet utenfor standard-bucket',
    title_character = 'Karakter lastet inn utenfor standard-bucket',
    title_set = 'Bucket satt av stab',
    title_fix = 'Bucket rettet av stab',
    title_set_export = 'Bucket satt av en ressurs',
    title_snapshot = 'Bucket-oversikt',

    -- Report text.
    text_change = '{player} flyttet fra bucket {old} til bucket {new}.',
    text_stuck = '{player} har vært i bucket {bucket} i {time}. Standard-bucket er {default}.',
    text_spawn = '{player} spawnet i bucket {bucket}. Standard-bucket er {default}.',
    text_character = '{player} lastet inn en karakter i bucket {bucket}. Standard-bucket er {default}.',
    text_set = '{staff} flyttet {player} fra bucket {old} til bucket {new}.',
    text_fix = '{staff} flyttet {player} fra bucket {old} tilbake til standard-bucket {new}.',
    text_set_export = '{resource} flyttet {player} fra bucket {old} til bucket {new}.',
    text_snapshot = '{staff} ba om en oversikt over alle spilleres bucket.',

    -- Report fields.
    field_player = 'Spiller',
    field_bucket = 'Bucket',
    field_buckets = 'Endring',
    field_time = 'Tid i bucket',
    field_cause = 'Sannsynlig årsak',
    field_known = 'Ressurser som endrer buckets',
    field_reason = 'Årsak',
    field_character = 'Karakter',
    field_identifiers = 'Identifikatorer',
    field_position = 'Posisjon',
    field_health = 'Helse',
    field_players = 'Spillere',
    field_outside = 'Utenfor standard-bucket',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} før)',
    cause_unknown = 'Ukjent. Ingen ressurs meldte en endring i de {seconds} sekundene før.',
    no_reason = 'ingen årsak oppgitt',
    position = '{x}, {y}, {z}, retning {heading}',
    health = 'Helse {health}, skuddsikker vest {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'serverkonsollen',
    unknown = 'Ukjent',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} er i bucket {bucket}{expected}.',
    reply_check_expected = ' (forventet)',
    reply_check_default = ' (standard)',
    reply_set = 'Flyttet {player} til bucket {bucket}.',
    reply_list_title = 'Spillere utenfor standard-bucket {default}:',
    reply_list_line = '  {player}: bucket {bucket}, i {time}',
    reply_list_none = 'Alle spillere er i standard-bucket {default}.',
    reply_snapshot = 'Oversikt sendt til Discord.',
    reply_snapshot_console = 'Ingen Discord-webhook er satt, så oversikten ble skrevet i serverkonsollen.',
    reply_usage = 'Bruk: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Det finnes ingen spiller med ID {id}.',
    reply_bad_bucket = 'En bucket er et heltall fra 0 og opp.',
    reply_no_permission = 'Du har ikke tillatelse til å bruke /{command}.',

    -- Chat command suggestions.
    suggest = 'Sjekk og rett spilleres routing buckets',
    suggest_action = 'check, set, fix, list eller snapshot',
    suggest_id = 'Spillerens server-ID',
    suggest_bucket = 'Bucket (kun set)',
}
