--[[
    Pigeon Bucket Monitor: German (Deutsch).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'de'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.de = {
    -- Report titles.
    title_change = 'Bucket geändert',
    title_stuck = 'Spieler steckt außerhalb des Standard-Buckets fest',
    title_spawn = 'Außerhalb des Standard-Buckets gespawnt',
    title_character = 'Charakter außerhalb des Standard-Buckets geladen',
    title_set = 'Bucket vom Team gesetzt',
    title_fix = 'Bucket vom Team korrigiert',
    title_set_export = 'Bucket von einer Ressource gesetzt',
    title_snapshot = 'Bucket-Übersicht',

    -- Report text.
    text_change = '{player} ist von Bucket {old} in Bucket {new} gewechselt.',
    text_stuck = '{player} ist seit {time} in Bucket {bucket}. Der Standard-Bucket ist {default}.',
    text_spawn = '{player} ist in Bucket {bucket} gespawnt. Der Standard-Bucket ist {default}.',
    text_character = '{player} hat einen Charakter in Bucket {bucket} geladen. Der Standard-Bucket ist {default}.',
    text_set = '{staff} hat {player} von Bucket {old} in Bucket {new} verschoben.',
    text_fix = '{staff} hat {player} von Bucket {old} zurück in den Standard-Bucket {new} verschoben.',
    text_set_export = '{resource} hat {player} von Bucket {old} in Bucket {new} verschoben.',
    text_snapshot = '{staff} hat eine Übersicht der Buckets aller Spieler angefordert.',

    -- Report fields.
    field_player = 'Spieler',
    field_bucket = 'Bucket',
    field_buckets = 'Wechsel',
    field_time = 'Zeit im Bucket',
    field_cause = 'Wahrscheinliche Ursache',
    field_known = 'Ressourcen, die Buckets ändern',
    field_reason = 'Grund',
    field_character = 'Charakter',
    field_identifiers = 'Identifier',
    field_position = 'Position',
    field_health = 'Gesundheit',
    field_players = 'Spieler',
    field_outside = 'Außerhalb des Standard-Buckets',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} vorher)',
    cause_unknown = 'Unbekannt. Keine Ressource hat in den {seconds} Sekunden davor einen Wechsel gemeldet.',
    no_reason = 'kein Grund angegeben',
    position = '{x}, {y}, {z}, Richtung {heading}',
    health = 'Gesundheit {health}, Rüstung {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'die Serverkonsole',
    unknown = 'Unbekannt',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} ist in Bucket {bucket}{expected}.',
    reply_check_expected = ' (erwartet)',
    reply_check_default = ' (der Standard)',
    reply_set = '{player} in Bucket {bucket} verschoben.',
    reply_list_title = 'Spieler außerhalb des Standard-Buckets {default}:',
    reply_list_line = '  {player}: Bucket {bucket}, seit {time}',
    reply_list_none = 'Alle Spieler sind im Standard-Bucket {default}.',
    reply_snapshot = 'Übersicht an Discord gesendet.',
    reply_snapshot_console = 'Es ist kein Discord-Webhook gesetzt, daher wurde die Übersicht in der Serverkonsole ausgegeben.',
    reply_usage = 'Verwendung: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Es gibt keinen Spieler mit der ID {id}.',
    reply_bad_bucket = 'Ein Bucket ist eine ganze Zahl ab 0.',
    reply_no_permission = 'Du hast keine Berechtigung für /{command}.',

    -- Chat command suggestions.
    suggest = 'Routing-Buckets von Spielern prüfen und korrigieren',
    suggest_action = 'check, set, fix, list oder snapshot',
    suggest_id = 'Server-ID des Spielers',
    suggest_bucket = 'Bucket (nur bei set)',
}
