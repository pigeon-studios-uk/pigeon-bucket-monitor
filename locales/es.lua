--[[
    Pigeon Bucket Monitor: Spanish (Español).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'es'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.es = {
    -- Report titles.
    title_change = 'Bucket cambiado',
    title_stuck = 'Jugador atascado fuera del bucket por defecto',
    title_spawn = 'Apareció fuera del bucket por defecto',
    title_character = 'Personaje cargado fuera del bucket por defecto',
    title_set = 'Bucket puesto por el staff',
    title_fix = 'Bucket corregido por el staff',
    title_set_export = 'Bucket puesto por un recurso',
    title_snapshot = 'Resumen de buckets',

    -- Report text.
    text_change = '{player} pasó del bucket {old} al bucket {new}.',
    text_stuck = '{player} lleva {time} en el bucket {bucket}. El bucket por defecto es {default}.',
    text_spawn = '{player} apareció en el bucket {bucket}. El bucket por defecto es {default}.',
    text_character = '{player} cargó un personaje en el bucket {bucket}. El bucket por defecto es {default}.',
    text_set = '{staff} movió a {player} del bucket {old} al bucket {new}.',
    text_fix = '{staff} devolvió a {player} del bucket {old} al bucket por defecto {new}.',
    text_set_export = '{resource} movió a {player} del bucket {old} al bucket {new}.',
    text_snapshot = '{staff} pidió un resumen del bucket de cada jugador.',

    -- Report fields.
    field_player = 'Jugador',
    field_bucket = 'Bucket',
    field_buckets = 'Cambio',
    field_time = 'Tiempo en el bucket',
    field_cause = 'Causa probable',
    field_known = 'Recursos que cambian buckets',
    field_reason = 'Motivo',
    field_character = 'Personaje',
    field_identifiers = 'Identificadores',
    field_position = 'Posición',
    field_health = 'Salud',
    field_players = 'Jugadores',
    field_outside = 'Fuera del bucket por defecto',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} antes)',
    cause_unknown = 'Desconocida. Ningún recurso informó de un cambio en los {seconds} segundos anteriores.',
    no_reason = 'sin motivo',
    position = '{x}, {y}, {z}, rumbo {heading}',
    health = 'Salud {health}, blindaje {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'la consola del servidor',
    unknown = 'Desconocido',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} está en el bucket {bucket}{expected}.',
    reply_check_expected = ' (esperado)',
    reply_check_default = ' (el de por defecto)',
    reply_set = '{player} movido al bucket {bucket}.',
    reply_list_title = 'Jugadores fuera del bucket por defecto {default}:',
    reply_list_line = '  {player}: bucket {bucket}, desde hace {time}',
    reply_list_none = 'Todos los jugadores están en el bucket por defecto {default}.',
    reply_snapshot = 'Resumen enviado a Discord.',
    reply_snapshot_console = 'No hay ningún webhook de Discord configurado, así que el resumen se imprimió en la consola del servidor.',
    reply_usage = 'Uso: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'No hay ningún jugador con el ID {id}.',
    reply_bad_bucket = 'Un bucket es un número entero desde 0.',
    reply_no_permission = 'No tienes permiso para usar /{command}.',

    -- Chat command suggestions.
    suggest = 'Revisa y corrige los routing buckets de los jugadores',
    suggest_action = 'check, set, fix, list o snapshot',
    suggest_id = 'ID de servidor del jugador',
    suggest_bucket = 'Bucket (solo set)',
}
