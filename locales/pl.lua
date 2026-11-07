--[[
    Pigeon Bucket Monitor: Polish (Polski).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pl'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.pl = {
    -- Report titles.
    title_change = 'Zmiana bucketu',
    title_stuck = 'Gracz utknął poza domyślnym bucketem',
    title_spawn = 'Spawn poza domyślnym bucketem',
    title_character = 'Postać wczytana poza domyślnym bucketem',
    title_set = 'Bucket ustawiony przez administrację',
    title_fix = 'Bucket naprawiony przez administrację',
    title_set_export = 'Bucket ustawiony przez zasób',
    title_snapshot = 'Zestawienie bucketów',

    -- Report text.
    text_change = '{player} przeszedł z bucketu {old} do bucketu {new}.',
    text_stuck = '{player} jest w buckecie {bucket} od {time}. Domyślny bucket to {default}.',
    text_spawn = '{player} pojawił się w buckecie {bucket}. Domyślny bucket to {default}.',
    text_character = '{player} wczytał postać w buckecie {bucket}. Domyślny bucket to {default}.',
    text_set = '{staff} przeniósł gracza {player} z bucketu {old} do bucketu {new}.',
    text_fix = '{staff} przeniósł gracza {player} z bucketu {old} z powrotem do domyślnego bucketu {new}.',
    text_set_export = '{resource} przeniósł gracza {player} z bucketu {old} do bucketu {new}.',
    text_snapshot = '{staff} poprosił o zestawienie bucketów wszystkich graczy.',

    -- Report fields.
    field_player = 'Gracz',
    field_bucket = 'Bucket',
    field_buckets = 'Zmiana',
    field_time = 'Czas w buckecie',
    field_cause = 'Prawdopodobna przyczyna',
    field_known = 'Zasoby zmieniające buckety',
    field_reason = 'Powód',
    field_character = 'Postać',
    field_identifiers = 'Identyfikatory',
    field_position = 'Pozycja',
    field_health = 'Zdrowie',
    field_players = 'Gracze',
    field_outside = 'Poza domyślnym bucketem',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} wcześniej)',
    cause_unknown = 'Nieznana. Żaden zasób nie zgłosił zmiany w ciągu {seconds} sekund wcześniej.',
    no_reason = 'nie podano powodu',
    position = '{x}, {y}, {z}, kierunek {heading}',
    health = 'Zdrowie {health}, pancerz {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'konsola serwera',
    unknown = 'Nieznane',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} jest w buckecie {bucket}{expected}.',
    reply_check_expected = ' (oczekiwany)',
    reply_check_default = ' (domyślny)',
    reply_set = 'Przeniesiono {player} do bucketu {bucket}.',
    reply_list_title = 'Gracze poza domyślnym bucketem {default}:',
    reply_list_line = '  {player}: bucket {bucket}, od {time}',
    reply_list_none = 'Wszyscy gracze są w domyślnym buckecie {default}.',
    reply_snapshot = 'Zestawienie wysłane na Discord.',
    reply_snapshot_console = 'Nie ustawiono webhooka Discord, więc zestawienie wypisano w konsoli serwera.',
    reply_usage = 'Użycie: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Nie ma gracza o ID {id}.',
    reply_bad_bucket = 'Bucket to liczba całkowita od 0 w górę.',
    reply_no_permission = 'Nie masz uprawnień do /{command}.',

    -- Chat command suggestions.
    suggest = 'Sprawdzaj i naprawiaj routing buckety graczy',
    suggest_action = 'check, set, fix, list lub snapshot',
    suggest_id = 'Server ID gracza',
    suggest_bucket = 'Bucket (tylko set)',
}
