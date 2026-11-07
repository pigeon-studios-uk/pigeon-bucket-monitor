--[[
    Pigeon Bucket Monitor: Croatian (Hrvatski).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'hr'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.hr = {
    -- Report titles.
    title_change = 'Bucket promijenjen',
    title_stuck = 'Igrač je zapeo izvan zadanog bucketa',
    title_spawn = 'Spawnan izvan zadanog bucketa',
    title_character = 'Lik učitan izvan zadanog bucketa',
    title_set = 'Bucket postavilo osoblje',
    title_fix = 'Bucket ispravilo osoblje',
    title_set_export = 'Bucket postavio resurs',
    title_snapshot = 'Pregled bucketa',

    -- Report text.
    text_change = '{player} je prešao iz bucketa {old} u bucket {new}.',
    text_stuck = '{player} je u bucketu {bucket} već {time}. Zadani bucket je {default}.',
    text_spawn = '{player} se spawnao u bucketu {bucket}. Zadani bucket je {default}.',
    text_character = '{player} je učitao lika u bucketu {bucket}. Zadani bucket je {default}.',
    text_set = '{staff} je premjestio igrača {player} iz bucketa {old} u bucket {new}.',
    text_fix = '{staff} je vratio igrača {player} iz bucketa {old} u zadani bucket {new}.',
    text_set_export = '{resource} je premjestio igrača {player} iz bucketa {old} u bucket {new}.',
    text_snapshot = '{staff} je zatražio pregled bucketa svih igrača.',

    -- Report fields.
    field_player = 'Igrač',
    field_bucket = 'Bucket',
    field_buckets = 'Promjena',
    field_time = 'Vrijeme u bucketu',
    field_cause = 'Vjerojatni uzrok',
    field_known = 'Resursi koji mijenjaju buckete',
    field_reason = 'Razlog',
    field_character = 'Lik',
    field_identifiers = 'Identifikatori',
    field_position = 'Položaj',
    field_health = 'Zdravlje',
    field_players = 'Igrači',
    field_outside = 'Izvan zadanog bucketa',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} (prije {time})',
    cause_unknown = 'Nepoznato. Nijedan resurs nije prijavio promjenu u {seconds} sekundi prije toga.',
    no_reason = 'razlog nije naveden',
    position = '{x}, {y}, {z}, smjer {heading}',
    health = 'Zdravlje {health}, oklop {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'konzola servera',
    unknown = 'Nepoznato',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} je u bucketu {bucket}{expected}.',
    reply_check_expected = ' (očekivano)',
    reply_check_default = ' (zadani)',
    reply_set = '{player} premješten u bucket {bucket}.',
    reply_list_title = 'Igrači izvan zadanog bucketa {default}:',
    reply_list_line = '  {player}: bucket {bucket}, već {time}',
    reply_list_none = 'Svi igrači su u zadanom bucketu {default}.',
    reply_snapshot = 'Pregled poslan na Discord.',
    reply_snapshot_console = 'Discord webhook nije postavljen pa je pregled ispisan u konzoli servera.',
    reply_usage = 'Upotreba: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Nema igrača s ID-jem {id}.',
    reply_bad_bucket = 'Bucket je cijeli broj od 0 naviše.',
    reply_no_permission = 'Nemaš dopuštenje za /{command}.',

    -- Chat command suggestions.
    suggest = 'Provjeri i ispravi routing buckete igrača',
    suggest_action = 'check, set, fix, list ili snapshot',
    suggest_id = 'Server ID igrača',
    suggest_bucket = 'Bucket (samo za set)',
}
