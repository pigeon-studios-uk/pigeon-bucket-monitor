--[[
    Pigeon Bucket Monitor: Estonian (Eesti).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'et'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.et = {
    -- Report titles.
    title_change = 'Bucket muutus',
    title_stuck = 'Mängija on vaikimisi bucketist väljas kinni',
    title_spawn = 'Spawnis väljaspool vaikimisi bucketit',
    title_character = 'Tegelane laaditi väljaspool vaikimisi bucketit',
    title_set = 'Meeskond määras bucketi',
    title_fix = 'Meeskond parandas bucketi',
    title_set_export = 'Ressurss määras bucketi',
    title_snapshot = 'Bucketite ülevaade',

    -- Report text.
    text_change = '{player} liikus bucketist {old} bucketisse {new}.',
    text_stuck = '{player} on olnud bucketis {bucket} juba {time}. Vaikimisi bucket on {default}.',
    text_spawn = '{player} spawnis bucketisse {bucket}. Vaikimisi bucket on {default}.',
    text_character = '{player} laadis tegelase bucketis {bucket}. Vaikimisi bucket on {default}.',
    text_set = '{staff} viis mängija {player} bucketist {old} bucketisse {new}.',
    text_fix = '{staff} viis mängija {player} bucketist {old} tagasi vaikimisi bucketisse {new}.',
    text_set_export = '{resource} viis mängija {player} bucketist {old} bucketisse {new}.',
    text_snapshot = '{staff} küsis ülevaadet kõigi mängijate bucketitest.',

    -- Report fields.
    field_player = 'Mängija',
    field_bucket = 'Bucket',
    field_buckets = 'Muutus',
    field_time = 'Aeg bucketis',
    field_cause = 'Tõenäoline põhjus',
    field_known = 'Bucketeid muutvad ressursid',
    field_reason = 'Põhjus',
    field_character = 'Tegelane',
    field_identifiers = 'Identifikaatorid',
    field_position = 'Asukoht',
    field_health = 'Tervis',
    field_players = 'Mängijad',
    field_outside = 'Väljaspool vaikimisi bucketit',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} enne)',
    cause_unknown = 'Teadmata. Ükski ressurss ei teatanud muutusest {seconds} sekundi jooksul enne seda.',
    no_reason = 'põhjust pole antud',
    position = '{x}, {y}, {z}, suund {heading}',
    health = 'Tervis {health}, soomus {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'serveri konsool',
    unknown = 'Teadmata',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} on bucketis {bucket}{expected}.',
    reply_check_expected = ' (oodatud)',
    reply_check_default = ' (vaikimisi)',
    reply_set = '{player} viidi bucketisse {bucket}.',
    reply_list_title = 'Mängijad väljaspool vaikimisi bucketit {default}:',
    reply_list_line = '  {player}: bucket {bucket}, juba {time}',
    reply_list_none = 'Kõik mängijad on vaikimisi bucketis {default}.',
    reply_snapshot = 'Ülevaade saadeti Discordi.',
    reply_snapshot_console = 'Discordi webhook pole määratud, seega ülevaade prinditi serveri konsooli.',
    reply_usage = 'Kasutus: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Mängijat ID-ga {id} pole.',
    reply_bad_bucket = 'Bucket on täisarv alates 0-st.',
    reply_no_permission = 'Sul pole õigust kasutada /{command}.',

    -- Chat command suggestions.
    suggest = 'Kontrolli ja paranda mängijate routing bucketeid',
    suggest_action = 'check, set, fix, list või snapshot',
    suggest_id = 'Mängija server ID',
    suggest_bucket = 'Bucket (ainult set)',
}
