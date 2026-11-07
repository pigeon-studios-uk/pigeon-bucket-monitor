--[[
    Pigeon Bucket Monitor: Swedish (Svenska).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sv'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.sv = {
    -- Report titles.
    title_change = 'Bucket ändrad',
    title_stuck = 'Spelare fast utanför standard-bucket',
    title_spawn = 'Spawnade utanför standard-bucket',
    title_character = 'Karaktär laddad utanför standard-bucket',
    title_set = 'Bucket satt av personal',
    title_fix = 'Bucket rättad av personal',
    title_set_export = 'Bucket satt av en resurs',
    title_snapshot = 'Bucket-översikt',

    -- Report text.
    text_change = '{player} flyttade från bucket {old} till bucket {new}.',
    text_stuck = '{player} har varit i bucket {bucket} i {time}. Standard-bucket är {default}.',
    text_spawn = '{player} spawnade i bucket {bucket}. Standard-bucket är {default}.',
    text_character = '{player} laddade en karaktär i bucket {bucket}. Standard-bucket är {default}.',
    text_set = '{staff} flyttade {player} från bucket {old} till bucket {new}.',
    text_fix = '{staff} flyttade {player} från bucket {old} tillbaka till standard-bucket {new}.',
    text_set_export = '{resource} flyttade {player} från bucket {old} till bucket {new}.',
    text_snapshot = '{staff} bad om en översikt över alla spelares bucket.',

    -- Report fields.
    field_player = 'Spelare',
    field_bucket = 'Bucket',
    field_buckets = 'Ändring',
    field_time = 'Tid i bucket',
    field_cause = 'Trolig orsak',
    field_known = 'Resurser som ändrar buckets',
    field_reason = 'Anledning',
    field_character = 'Karaktär',
    field_identifiers = 'Identifierare',
    field_position = 'Position',
    field_health = 'Hälsa',
    field_players = 'Spelare',
    field_outside = 'Utanför standard-bucket',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} före)',
    cause_unknown = 'Okänd. Ingen resurs rapporterade en ändring under de {seconds} sekunderna innan.',
    no_reason = 'ingen anledning angiven',
    position = '{x}, {y}, {z}, riktning {heading}',
    health = 'Hälsa {health}, skyddsväst {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'serverkonsolen',
    unknown = 'Okänd',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} är i bucket {bucket}{expected}.',
    reply_check_expected = ' (förväntad)',
    reply_check_default = ' (standard)',
    reply_set = 'Flyttade {player} till bucket {bucket}.',
    reply_list_title = 'Spelare utanför standard-bucket {default}:',
    reply_list_line = '  {player}: bucket {bucket}, i {time}',
    reply_list_none = 'Alla spelare är i standard-bucket {default}.',
    reply_snapshot = 'Översikten skickades till Discord.',
    reply_snapshot_console = 'Ingen Discord-webhook är inställd, så översikten skrevs ut i serverkonsolen.',
    reply_usage = 'Användning: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Det finns ingen spelare med ID {id}.',
    reply_bad_bucket = 'En bucket är ett heltal från 0 och uppåt.',
    reply_no_permission = 'Du har inte behörighet att använda /{command}.',

    -- Chat command suggestions.
    suggest = 'Kontrollera och rätta spelares routing buckets',
    suggest_action = 'check, set, fix, list eller snapshot',
    suggest_id = 'Spelarens server-ID',
    suggest_bucket = 'Bucket (bara set)',
}
