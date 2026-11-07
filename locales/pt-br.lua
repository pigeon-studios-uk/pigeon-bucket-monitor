--[[
    Pigeon Bucket Monitor: Brazilian Portuguese (Português do Brasil).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pt-br'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales['pt-br'] = {
    -- Report titles.
    title_change = 'Bucket alterado',
    title_stuck = 'Jogador preso fora do bucket padrão',
    title_spawn = 'Spawnou fora do bucket padrão',
    title_character = 'Personagem carregado fora do bucket padrão',
    title_set = 'Bucket definido pela staff',
    title_fix = 'Bucket corrigido pela staff',
    title_set_export = 'Bucket definido por um recurso',
    title_snapshot = 'Resumo dos buckets',

    -- Report text.
    text_change = '{player} passou do bucket {old} para o bucket {new}.',
    text_stuck = '{player} está no bucket {bucket} há {time}. O bucket padrão é {default}.',
    text_spawn = '{player} spawnou no bucket {bucket}. O bucket padrão é {default}.',
    text_character = '{player} carregou um personagem no bucket {bucket}. O bucket padrão é {default}.',
    text_set = '{staff} moveu {player} do bucket {old} para o bucket {new}.',
    text_fix = '{staff} levou {player} do bucket {old} de volta ao bucket padrão {new}.',
    text_set_export = '{resource} moveu {player} do bucket {old} para o bucket {new}.',
    text_snapshot = '{staff} pediu um resumo do bucket de cada jogador.',

    -- Report fields.
    field_player = 'Jogador',
    field_bucket = 'Bucket',
    field_buckets = 'Mudança',
    field_time = 'Tempo no bucket',
    field_cause = 'Causa provável',
    field_known = 'Recursos que mudam buckets',
    field_reason = 'Motivo',
    field_character = 'Personagem',
    field_identifiers = 'Identificadores',
    field_position = 'Posição',
    field_health = 'Vida',
    field_players = 'Jogadores',
    field_outside = 'Fora do bucket padrão',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} antes)',
    cause_unknown = 'Desconhecida. Nenhum recurso informou uma mudança nos {seconds} segundos anteriores.',
    no_reason = 'nenhum motivo informado',
    position = '{x}, {y}, {z}, direção {heading}',
    health = 'Vida {health}, colete {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'o console do servidor',
    unknown = 'Desconhecido',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} está no bucket {bucket}{expected}.',
    reply_check_expected = ' (esperado)',
    reply_check_default = ' (o padrão)',
    reply_set = '{player} movido para o bucket {bucket}.',
    reply_list_title = 'Jogadores fora do bucket padrão {default}:',
    reply_list_line = '  {player}: bucket {bucket}, há {time}',
    reply_list_none = 'Todos os jogadores estão no bucket padrão {default}.',
    reply_snapshot = 'Resumo enviado ao Discord.',
    reply_snapshot_console = 'Nenhum webhook do Discord foi definido, então o resumo foi impresso no console do servidor.',
    reply_usage = 'Uso: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Não há nenhum jogador com o ID {id}.',
    reply_bad_bucket = 'Um bucket é um número inteiro a partir de 0.',
    reply_no_permission = 'Você não tem permissão para usar /{command}.',

    -- Chat command suggestions.
    suggest = 'Verifique e corrija os routing buckets dos jogadores',
    suggest_action = 'check, set, fix, list ou snapshot',
    suggest_id = 'ID de servidor do jogador',
    suggest_bucket = 'Bucket (só set)',
}
