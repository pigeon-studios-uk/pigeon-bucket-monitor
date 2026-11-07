--[[
    Pigeon Bucket Monitor: French (Français).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fr'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.fr = {
    -- Report titles.
    title_change = 'Bucket changé',
    title_stuck = 'Joueur bloqué hors du bucket par défaut',
    title_spawn = 'Apparu hors du bucket par défaut',
    title_character = 'Personnage chargé hors du bucket par défaut',
    title_set = 'Bucket défini par le staff',
    title_fix = 'Bucket corrigé par le staff',
    title_set_export = 'Bucket défini par une ressource',
    title_snapshot = 'Relevé des buckets',

    -- Report text.
    text_change = '{player} est passé du bucket {old} au bucket {new}.',
    text_stuck = '{player} est dans le bucket {bucket} depuis {time}. Le bucket par défaut est {default}.',
    text_spawn = '{player} est apparu dans le bucket {bucket}. Le bucket par défaut est {default}.',
    text_character = '{player} a chargé un personnage dans le bucket {bucket}. Le bucket par défaut est {default}.',
    text_set = '{staff} a déplacé {player} du bucket {old} au bucket {new}.',
    text_fix = '{staff} a ramené {player} du bucket {old} au bucket par défaut {new}.',
    text_set_export = '{resource} a déplacé {player} du bucket {old} au bucket {new}.',
    text_snapshot = '{staff} a demandé un relevé du bucket de chaque joueur.',

    -- Report fields.
    field_player = 'Joueur',
    field_bucket = 'Bucket',
    field_buckets = 'Changement',
    field_time = 'Temps dans le bucket',
    field_cause = 'Cause probable',
    field_known = 'Ressources qui changent les buckets',
    field_reason = 'Raison',
    field_character = 'Personnage',
    field_identifiers = 'Identifiants',
    field_position = 'Position',
    field_health = 'Santé',
    field_players = 'Joueurs',
    field_outside = 'Hors du bucket par défaut',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource} : {reason} ({time} avant)',
    cause_unknown = 'Inconnue. Aucune ressource n\'a signalé de changement dans les {seconds} secondes précédentes.',
    no_reason = 'aucune raison donnée',
    position = '{x}, {y}, {z}, cap {heading}',
    health = 'Santé {health}, armure {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'la console du serveur',
    unknown = 'Inconnu',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} est dans le bucket {bucket}{expected}.',
    reply_check_expected = ' (attendu)',
    reply_check_default = ' (par défaut)',
    reply_set = '{player} déplacé dans le bucket {bucket}.',
    reply_list_title = 'Joueurs hors du bucket par défaut {default} :',
    reply_list_line = '  {player} : bucket {bucket}, depuis {time}',
    reply_list_none = 'Tous les joueurs sont dans le bucket par défaut {default}.',
    reply_snapshot = 'Relevé envoyé sur Discord.',
    reply_snapshot_console = 'Aucun webhook Discord n\'est défini, le relevé a donc été affiché dans la console du serveur.',
    reply_usage = 'Utilisation : /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Il n\'y a aucun joueur avec l\'ID {id}.',
    reply_bad_bucket = 'Un bucket est un nombre entier à partir de 0.',
    reply_no_permission = 'Vous n\'avez pas la permission d\'utiliser /{command}.',

    -- Chat command suggestions.
    suggest = 'Vérifier et corriger les routing buckets des joueurs',
    suggest_action = 'check, set, fix, list ou snapshot',
    suggest_id = 'ID serveur du joueur',
    suggest_bucket = 'Bucket (set uniquement)',
}
