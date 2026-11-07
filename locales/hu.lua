--[[
    Pigeon Bucket Monitor: Hungarian (Magyar).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'hu'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.hu = {
    -- Report titles.
    title_change = 'Bucket megváltozott',
    title_stuck = 'Játékos az alapértelmezett bucketen kívül ragadt',
    title_spawn = 'Az alapértelmezett bucketen kívül spawnolt',
    title_character = 'Karakter betöltve az alapértelmezett bucketen kívül',
    title_set = 'Bucket beállítva a stáb által',
    title_fix = 'Bucket javítva a stáb által',
    title_set_export = 'Bucket beállítva egy resource által',
    title_snapshot = 'Bucket pillanatkép',

    -- Report text.
    text_change = '{player} átkerült a(z) {old} bucketből a(z) {new} bucketbe.',
    text_stuck = '{player} már {time} ideje a(z) {bucket} bucketben van. Az alapértelmezett bucket: {default}.',
    text_spawn = '{player} a(z) {bucket} bucketben spawnolt. Az alapértelmezett bucket: {default}.',
    text_character = '{player} karaktert töltött be a(z) {bucket} bucketben. Az alapértelmezett bucket: {default}.',
    text_set = '{staff} áthelyezte {player} játékost a(z) {old} bucketből a(z) {new} bucketbe.',
    text_fix = '{staff} visszahelyezte {player} játékost a(z) {old} bucketből az alapértelmezett {new} bucketbe.',
    text_set_export = '{resource} áthelyezte {player} játékost a(z) {old} bucketből a(z) {new} bucketbe.',
    text_snapshot = '{staff} pillanatképet kért minden játékos bucketjéről.',

    -- Report fields.
    field_player = 'Játékos',
    field_bucket = 'Bucket',
    field_buckets = 'Változás',
    field_time = 'Idő a bucketben',
    field_cause = 'Valószínű ok',
    field_known = 'Bucketet váltó resource-ok',
    field_reason = 'Indok',
    field_character = 'Karakter',
    field_identifiers = 'Azonosítók',
    field_position = 'Pozíció',
    field_health = 'Életerő',
    field_players = 'Játékosok',
    field_outside = 'Az alapértelmezett bucketen kívül',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} korábban)',
    cause_unknown = 'Ismeretlen. Egy resource sem jelzett változást az előtte lévő {seconds} másodpercben.',
    no_reason = 'nincs indok megadva',
    position = '{x}, {y}, {z}, irány {heading}',
    health = 'Életerő {health}, páncél {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'a szerverkonzol',
    unknown = 'Ismeretlen',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} a(z) {bucket} bucketben van{expected}.',
    reply_check_expected = ' (várt)',
    reply_check_default = ' (az alapértelmezett)',
    reply_set = '{player} áthelyezve a(z) {bucket} bucketbe.',
    reply_list_title = 'Az alapértelmezett {default} bucketen kívüli játékosok:',
    reply_list_line = '  {player}: {bucket} bucket, {time} óta',
    reply_list_none = 'Minden játékos az alapértelmezett {default} bucketben van.',
    reply_snapshot = 'Pillanatkép elküldve a Discordra.',
    reply_snapshot_console = 'Nincs beállítva Discord webhook, így a pillanatkép a szerverkonzolba került.',
    reply_usage = 'Használat: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Nincs {id} ID-jű játékos.',
    reply_bad_bucket = 'A bucket egy 0-tól kezdődő egész szám.',
    reply_no_permission = 'Nincs jogosultságod a /{command} használatához.',

    -- Chat command suggestions.
    suggest = 'Játékosok routing bucketjeinek ellenőrzése és javítása',
    suggest_action = 'check, set, fix, list vagy snapshot',
    suggest_id = 'A játékos szerver ID-ja',
    suggest_bucket = 'Bucket (csak set)',
}
