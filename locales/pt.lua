--[[
    Pigeon Bucket Monitor: Portuguese (Português).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pt'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.pt = {
    -- Report titles.
    title_change = 'Bucket alterado',
    title_stuck = 'Jogador preso fora do bucket predefinido',
    title_spawn = 'Fez spawn fora do bucket predefinido',
    title_character = 'Personagem carregada fora do bucket predefinido',
    title_set = 'Bucket definido pela staff',
    title_fix = 'Bucket corrigido pela staff',
    title_set_export = 'Bucket definido por um recurso',
    title_snapshot = 'Resumo dos buckets',

    -- Report text.
    text_change = '{player} passou do bucket {old} para o bucket {new}.',
    text_stuck = '{player} está no bucket {bucket} há {time}. O bucket predefinido é {default}.',
    text_spawn = '{player} fez spawn no bucket {bucket}. O bucket predefinido é {default}.',
    text_character = '{player} carregou uma personagem no bucket {bucket}. O bucket predefinido é {default}.',
    text_set = '{staff} moveu {player} do bucket {old} para o bucket {new}.',
    text_fix = '{staff} devolveu {player} do bucket {old} ao bucket predefinido {new}.',
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
    field_outside = 'Fora do bucket predefinido',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} antes)',
    cause_unknown = 'Desconhecida. Nenhum recurso comunicou uma mudança nos {seconds} segundos anteriores.',
    no_reason = 'sem motivo indicado',
    position = '{x}, {y}, {z}, direção {heading}',
    health = 'Vida {health}, colete {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'a consola do servidor',
    unknown = 'Desconhecido',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} está no bucket {bucket}{expected}.',
    reply_check_expected = ' (esperado)',
    reply_check_default = ' (o predefinido)',
    reply_set = '{player} movido para o bucket {bucket}.',
    reply_list_title = 'Jogadores fora do bucket predefinido {default}:',
    reply_list_line = '  {player}: bucket {bucket}, há {time}',
    reply_list_none = 'Todos os jogadores estão no bucket predefinido {default}.',
    reply_snapshot = 'Resumo enviado para o Discord.',
    reply_snapshot_console = 'Não está definido nenhum webhook do Discord, por isso o resumo foi impresso na consola do servidor.',
    reply_usage = 'Utilização: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Não há nenhum jogador com o ID {id}.',
    reply_bad_bucket = 'Um bucket é um número inteiro a partir de 0.',
    reply_no_permission = 'Não tens permissão para usar /{command}.',

    -- Chat command suggestions.
    suggest = 'Verifica e corrige os routing buckets dos jogadores',
    suggest_action = 'check, set, fix, list ou snapshot',
    suggest_id = 'ID de servidor do jogador',
    suggest_bucket = 'Bucket (só set)',
}
