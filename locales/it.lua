--[[
    Pigeon Bucket Monitor: Italian (Italiano).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'it'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.it = {
    -- Report titles.
    title_change = 'Bucket cambiato',
    title_stuck = 'Giocatore bloccato fuori dal bucket predefinito',
    title_spawn = 'Spawnato fuori dal bucket predefinito',
    title_character = 'Personaggio caricato fuori dal bucket predefinito',
    title_set = 'Bucket impostato dallo staff',
    title_fix = 'Bucket corretto dallo staff',
    title_set_export = 'Bucket impostato da una risorsa',
    title_snapshot = 'Riepilogo dei bucket',

    -- Report text.
    text_change = '{player} è passato dal bucket {old} al bucket {new}.',
    text_stuck = '{player} è nel bucket {bucket} da {time}. Il bucket predefinito è {default}.',
    text_spawn = '{player} è spawnato nel bucket {bucket}. Il bucket predefinito è {default}.',
    text_character = '{player} ha caricato un personaggio nel bucket {bucket}. Il bucket predefinito è {default}.',
    text_set = '{staff} ha spostato {player} dal bucket {old} al bucket {new}.',
    text_fix = '{staff} ha riportato {player} dal bucket {old} al bucket predefinito {new}.',
    text_set_export = '{resource} ha spostato {player} dal bucket {old} al bucket {new}.',
    text_snapshot = '{staff} ha chiesto un riepilogo del bucket di ogni giocatore.',

    -- Report fields.
    field_player = 'Giocatore',
    field_bucket = 'Bucket',
    field_buckets = 'Cambio',
    field_time = 'Tempo nel bucket',
    field_cause = 'Causa probabile',
    field_known = 'Risorse che cambiano i bucket',
    field_reason = 'Motivo',
    field_character = 'Personaggio',
    field_identifiers = 'Identificativi',
    field_position = 'Posizione',
    field_health = 'Salute',
    field_players = 'Giocatori',
    field_outside = 'Fuori dal bucket predefinito',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} prima)',
    cause_unknown = 'Sconosciuta. Nessuna risorsa ha segnalato un cambio nei {seconds} secondi precedenti.',
    no_reason = 'nessun motivo indicato',
    position = '{x}, {y}, {z}, direzione {heading}',
    health = 'Salute {health}, armatura {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'la console del server',
    unknown = 'Sconosciuto',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} è nel bucket {bucket}{expected}.',
    reply_check_expected = ' (previsto)',
    reply_check_default = ' (quello predefinito)',
    reply_set = '{player} spostato nel bucket {bucket}.',
    reply_list_title = 'Giocatori fuori dal bucket predefinito {default}:',
    reply_list_line = '  {player}: bucket {bucket}, da {time}',
    reply_list_none = 'Tutti i giocatori sono nel bucket predefinito {default}.',
    reply_snapshot = 'Riepilogo inviato su Discord.',
    reply_snapshot_console = 'Nessun webhook Discord impostato, quindi il riepilogo è stato stampato nella console del server.',
    reply_usage = 'Uso: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Non c\'è nessun giocatore con ID {id}.',
    reply_bad_bucket = 'Un bucket è un numero intero da 0 in su.',
    reply_no_permission = 'Non hai il permesso di usare /{command}.',

    -- Chat command suggestions.
    suggest = 'Controlla e correggi i routing bucket dei giocatori',
    suggest_action = 'check, set, fix, list o snapshot',
    suggest_id = 'ID server del giocatore',
    suggest_bucket = 'Bucket (solo set)',
}
