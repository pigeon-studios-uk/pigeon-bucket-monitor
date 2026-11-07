--[[
    Pigeon Bucket Monitor: Romanian (Română).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'ro'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.ro = {
    -- Report titles.
    title_change = 'Bucket schimbat',
    title_stuck = 'Jucător blocat în afara bucket-ului implicit',
    title_spawn = 'Spawnat în afara bucket-ului implicit',
    title_character = 'Personaj încărcat în afara bucket-ului implicit',
    title_set = 'Bucket setat de staff',
    title_fix = 'Bucket reparat de staff',
    title_set_export = 'Bucket setat de o resursă',
    title_snapshot = 'Situația bucket-urilor',

    -- Report text.
    text_change = '{player} a trecut din bucket-ul {old} în bucket-ul {new}.',
    text_stuck = '{player} este în bucket-ul {bucket} de {time}. Bucket-ul implicit este {default}.',
    text_spawn = '{player} s-a spawnat în bucket-ul {bucket}. Bucket-ul implicit este {default}.',
    text_character = '{player} a încărcat un personaj în bucket-ul {bucket}. Bucket-ul implicit este {default}.',
    text_set = '{staff} l-a mutat pe {player} din bucket-ul {old} în bucket-ul {new}.',
    text_fix = '{staff} l-a readus pe {player} din bucket-ul {old} în bucket-ul implicit {new}.',
    text_set_export = '{resource} l-a mutat pe {player} din bucket-ul {old} în bucket-ul {new}.',
    text_snapshot = '{staff} a cerut situația bucket-ului fiecărui jucător.',

    -- Report fields.
    field_player = 'Jucător',
    field_bucket = 'Bucket',
    field_buckets = 'Schimbare',
    field_time = 'Timp în bucket',
    field_cause = 'Cauză probabilă',
    field_known = 'Resurse care schimbă bucket-uri',
    field_reason = 'Motiv',
    field_character = 'Personaj',
    field_identifiers = 'Identificatori',
    field_position = 'Poziție',
    field_health = 'Viață',
    field_players = 'Jucători',
    field_outside = 'În afara bucket-ului implicit',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} (cu {time} înainte)',
    cause_unknown = 'Necunoscută. Nicio resursă nu a raportat o schimbare în cele {seconds} secunde dinainte.',
    no_reason = 'niciun motiv dat',
    position = '{x}, {y}, {z}, direcție {heading}',
    health = 'Viață {health}, armură {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'consola serverului',
    unknown = 'Necunoscut',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} este în bucket-ul {bucket}{expected}.',
    reply_check_expected = ' (așteptat)',
    reply_check_default = ' (cel implicit)',
    reply_set = '{player} a fost mutat în bucket-ul {bucket}.',
    reply_list_title = 'Jucători în afara bucket-ului implicit {default}:',
    reply_list_line = '  {player}: bucket {bucket}, de {time}',
    reply_list_none = 'Toți jucătorii sunt în bucket-ul implicit {default}.',
    reply_snapshot = 'Situația a fost trimisă pe Discord.',
    reply_snapshot_console = 'Nu este setat niciun webhook Discord, așa că situația a fost afișată în consola serverului.',
    reply_usage = 'Utilizare: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Nu există niciun jucător cu ID-ul {id}.',
    reply_bad_bucket = 'Un bucket este un număr întreg de la 0 în sus.',
    reply_no_permission = 'Nu ai permisiunea să folosești /{command}.',

    -- Chat command suggestions.
    suggest = 'Verifică și repară routing bucket-urile jucătorilor',
    suggest_action = 'check, set, fix, list sau snapshot',
    suggest_id = 'Server ID-ul jucătorului',
    suggest_bucket = 'Bucket (doar set)',
}
