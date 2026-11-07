--[[
    Pigeon Bucket Monitor: Slovenian (Slovenščina).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sl'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.sl = {
    -- Report titles.
    title_change = 'Bucket spremenjen',
    title_stuck = 'Igralec je obtičal zunaj privzetega bucketa',
    title_spawn = 'Spawn zunaj privzetega bucketa',
    title_character = 'Lik naložen zunaj privzetega bucketa',
    title_set = 'Bucket nastavilo osebje',
    title_fix = 'Bucket popravilo osebje',
    title_set_export = 'Bucket nastavil vir',
    title_snapshot = 'Pregled bucketov',

    -- Report text.
    text_change = '{player} je prešel iz bucketa {old} v bucket {new}.',
    text_stuck = '{player} je v bucketu {bucket} že {time}. Privzeti bucket je {default}.',
    text_spawn = '{player} se je spawnal v bucketu {bucket}. Privzeti bucket je {default}.',
    text_character = '{player} je naložil lik v bucketu {bucket}. Privzeti bucket je {default}.',
    text_set = '{staff} je premaknil igralca {player} iz bucketa {old} v bucket {new}.',
    text_fix = '{staff} je vrnil igralca {player} iz bucketa {old} v privzeti bucket {new}.',
    text_set_export = '{resource} je premaknil igralca {player} iz bucketa {old} v bucket {new}.',
    text_snapshot = '{staff} je zahteval pregled bucketov vseh igralcev.',

    -- Report fields.
    field_player = 'Igralec',
    field_bucket = 'Bucket',
    field_buckets = 'Sprememba',
    field_time = 'Čas v bucketu',
    field_cause = 'Verjeten vzrok',
    field_known = 'Viri, ki spreminjajo buckete',
    field_reason = 'Razlog',
    field_character = 'Lik',
    field_identifiers = 'Identifikatorji',
    field_position = 'Položaj',
    field_health = 'Zdravje',
    field_players = 'Igralci',
    field_outside = 'Zunaj privzetega bucketa',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} prej)',
    cause_unknown = 'Neznano. Noben vir ni sporočil spremembe v {seconds} sekundah pred tem.',
    no_reason = 'razlog ni naveden',
    position = '{x}, {y}, {z}, smer {heading}',
    health = 'Zdravje {health}, oklep {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'konzola strežnika',
    unknown = 'Neznano',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} je v bucketu {bucket}{expected}.',
    reply_check_expected = ' (pričakovano)',
    reply_check_default = ' (privzeti)',
    reply_set = '{player} premaknjen v bucket {bucket}.',
    reply_list_title = 'Igralci zunaj privzetega bucketa {default}:',
    reply_list_line = '  {player}: bucket {bucket}, že {time}',
    reply_list_none = 'Vsi igralci so v privzetem bucketu {default}.',
    reply_snapshot = 'Pregled poslan na Discord.',
    reply_snapshot_console = 'Discord webhook ni nastavljen, zato je bil pregled izpisan v konzolo strežnika.',
    reply_usage = 'Uporaba: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Igralca z ID {id} ni.',
    reply_bad_bucket = 'Bucket je celo število od 0 naprej.',
    reply_no_permission = 'Nimaš dovoljenja za /{command}.',

    -- Chat command suggestions.
    suggest = 'Preveri in popravi routing buckete igralcev',
    suggest_action = 'check, set, fix, list ali snapshot',
    suggest_id = 'Server ID igralca',
    suggest_bucket = 'Bucket (samo set)',
}
