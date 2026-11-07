--[[
    Pigeon Bucket Monitor: Dutch (Nederlands).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'nl'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.nl = {
    -- Report titles.
    title_change = 'Bucket gewijzigd',
    title_stuck = 'Speler zit vast buiten de standaardbucket',
    title_spawn = 'Gespawnd buiten de standaardbucket',
    title_character = 'Personage geladen buiten de standaardbucket',
    title_set = 'Bucket ingesteld door staf',
    title_fix = 'Bucket hersteld door staf',
    title_set_export = 'Bucket ingesteld door een resource',
    title_snapshot = 'Bucketoverzicht',

    -- Report text.
    text_change = '{player} ging van bucket {old} naar bucket {new}.',
    text_stuck = '{player} zit al {time} in bucket {bucket}. De standaardbucket is {default}.',
    text_spawn = '{player} spawnde in bucket {bucket}. De standaardbucket is {default}.',
    text_character = '{player} laadde een personage in bucket {bucket}. De standaardbucket is {default}.',
    text_set = '{staff} verplaatste {player} van bucket {old} naar bucket {new}.',
    text_fix = '{staff} zette {player} van bucket {old} terug naar de standaardbucket {new}.',
    text_set_export = '{resource} verplaatste {player} van bucket {old} naar bucket {new}.',
    text_snapshot = '{staff} vroeg een overzicht op van de bucket van elke speler.',

    -- Report fields.
    field_player = 'Speler',
    field_bucket = 'Bucket',
    field_buckets = 'Wijziging',
    field_time = 'Tijd in bucket',
    field_cause = 'Waarschijnlijke oorzaak',
    field_known = 'Resources die buckets wijzigen',
    field_reason = 'Reden',
    field_character = 'Personage',
    field_identifiers = 'Identifiers',
    field_position = 'Positie',
    field_health = 'Gezondheid',
    field_players = 'Spelers',
    field_outside = 'Buiten de standaardbucket',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} eerder)',
    cause_unknown = 'Onbekend. Geen resource meldde een wijziging in de {seconds} seconden ervoor.',
    no_reason = 'geen reden opgegeven',
    position = '{x}, {y}, {z}, richting {heading}',
    health = 'Gezondheid {health}, pantser {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'de serverconsole',
    unknown = 'Onbekend',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} zit in bucket {bucket}{expected}.',
    reply_check_expected = ' (verwacht)',
    reply_check_default = ' (de standaard)',
    reply_set = '{player} verplaatst naar bucket {bucket}.',
    reply_list_title = 'Spelers buiten de standaardbucket {default}:',
    reply_list_line = '  {player}: bucket {bucket}, al {time}',
    reply_list_none = 'Elke speler zit in de standaardbucket {default}.',
    reply_snapshot = 'Overzicht naar Discord gestuurd.',
    reply_snapshot_console = 'Er is geen Discord-webhook ingesteld, dus het overzicht is in de serverconsole geprint.',
    reply_usage = 'Gebruik: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Er is geen speler met ID {id}.',
    reply_bad_bucket = 'Een bucket is een heel getal vanaf 0.',
    reply_no_permission = 'Je hebt geen toestemming om /{command} te gebruiken.',

    -- Chat command suggestions.
    suggest = 'Routing buckets van spelers controleren en herstellen',
    suggest_action = 'check, set, fix, list of snapshot',
    suggest_id = 'Server-ID van de speler',
    suggest_bucket = 'Bucket (alleen set)',
}
