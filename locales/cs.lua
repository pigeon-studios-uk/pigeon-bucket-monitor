--[[
    Pigeon Bucket Monitor: Czech (Čeština).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'cs'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.cs = {
    -- Report titles.
    title_change = 'Bucket změněn',
    title_stuck = 'Hráč uvízl mimo výchozí bucket',
    title_spawn = 'Spawn mimo výchozí bucket',
    title_character = 'Postava načtena mimo výchozí bucket',
    title_set = 'Bucket nastaven týmem',
    title_fix = 'Bucket opraven týmem',
    title_set_export = 'Bucket nastaven resourcem',
    title_snapshot = 'Snímek bucketů',

    -- Report text.
    text_change = '{player} přešel z bucketu {old} do bucketu {new}.',
    text_stuck = '{player} je v bucketu {bucket} už {time}. Výchozí bucket je {default}.',
    text_spawn = '{player} se spawnul v bucketu {bucket}. Výchozí bucket je {default}.',
    text_character = '{player} načetl postavu v bucketu {bucket}. Výchozí bucket je {default}.',
    text_set = '{staff} přesunul hráče {player} z bucketu {old} do bucketu {new}.',
    text_fix = '{staff} vrátil hráče {player} z bucketu {old} do výchozího bucketu {new}.',
    text_set_export = '{resource} přesunul hráče {player} z bucketu {old} do bucketu {new}.',
    text_snapshot = '{staff} si vyžádal snímek bucketů všech hráčů.',

    -- Report fields.
    field_player = 'Hráč',
    field_bucket = 'Bucket',
    field_buckets = 'Změna',
    field_time = 'Doba v bucketu',
    field_cause = 'Pravděpodobná příčina',
    field_known = 'Resources, které mění buckety',
    field_reason = 'Důvod',
    field_character = 'Postava',
    field_identifiers = 'Identifikátory',
    field_position = 'Pozice',
    field_health = 'Zdraví',
    field_players = 'Hráči',
    field_outside = 'Mimo výchozí bucket',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} (před {time})',
    cause_unknown = 'Neznámá. Žádný resource nenahlásil změnu během {seconds} sekund předtím.',
    no_reason = 'bez uvedení důvodu',
    position = '{x}, {y}, {z}, směr {heading}',
    health = 'Zdraví {health}, vesta {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'konzole serveru',
    unknown = 'Neznámé',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} je v bucketu {bucket}{expected}.',
    reply_check_expected = ' (očekávaný)',
    reply_check_default = ' (výchozí)',
    reply_set = '{player} přesunut do bucketu {bucket}.',
    reply_list_title = 'Hráči mimo výchozí bucket {default}:',
    reply_list_line = '  {player}: bucket {bucket}, po dobu {time}',
    reply_list_none = 'Všichni hráči jsou ve výchozím bucketu {default}.',
    reply_snapshot = 'Snímek odeslán na Discord.',
    reply_snapshot_console = 'Není nastaven Discord webhook, takže se snímek vypsal do konzole serveru.',
    reply_usage = 'Použití: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Hráč s ID {id} neexistuje.',
    reply_bad_bucket = 'Bucket je celé číslo od 0 výš.',
    reply_no_permission = 'Nemáš oprávnění používat /{command}.',

    -- Chat command suggestions.
    suggest = 'Kontrola a oprava routing bucketů hráčů',
    suggest_action = 'check, set, fix, list nebo snapshot',
    suggest_id = 'Server ID hráče',
    suggest_bucket = 'Bucket (jen pro set)',
}
