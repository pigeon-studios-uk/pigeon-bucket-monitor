--[[
    Pigeon Bucket Monitor: Finnish (Suomi).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fi'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.fi = {
    -- Report titles.
    title_change = 'Bucket vaihtui',
    title_stuck = 'Pelaaja jumissa oletus-bucketin ulkopuolella',
    title_spawn = 'Syntyi oletus-bucketin ulkopuolelle',
    title_character = 'Hahmo ladattu oletus-bucketin ulkopuolella',
    title_set = 'Henkilökunta asetti bucketin',
    title_fix = 'Henkilökunta korjasi bucketin',
    title_set_export = 'Resurssi asetti bucketin',
    title_snapshot = 'Bucket-yhteenveto',

    -- Report text.
    text_change = '{player} siirtyi bucketista {old} bucketiin {new}.',
    text_stuck = '{player} on ollut bucketissa {bucket} jo {time}. Oletus-bucket on {default}.',
    text_spawn = '{player} syntyi bucketiin {bucket}. Oletus-bucket on {default}.',
    text_character = '{player} latasi hahmon bucketissa {bucket}. Oletus-bucket on {default}.',
    text_set = '{staff} siirsi pelaajan {player} bucketista {old} bucketiin {new}.',
    text_fix = '{staff} siirsi pelaajan {player} bucketista {old} takaisin oletus-bucketiin {new}.',
    text_set_export = '{resource} siirsi pelaajan {player} bucketista {old} bucketiin {new}.',
    text_snapshot = '{staff} pyysi yhteenvedon kaikkien pelaajien bucketeista.',

    -- Report fields.
    field_player = 'Pelaaja',
    field_bucket = 'Bucket',
    field_buckets = 'Muutos',
    field_time = 'Aika bucketissa',
    field_cause = 'Todennäköinen syy',
    field_known = 'Bucketeja vaihtavat resurssit',
    field_reason = 'Syy',
    field_character = 'Hahmo',
    field_identifiers = 'Tunnisteet',
    field_position = 'Sijainti',
    field_health = 'Terveys',
    field_players = 'Pelaajat',
    field_outside = 'Oletus-bucketin ulkopuolella',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} ennen)',
    cause_unknown = 'Tuntematon. Mikään resurssi ei ilmoittanut muutoksesta {seconds} sekuntia ennen.',
    no_reason = 'syytä ei annettu',
    position = '{x}, {y}, {z}, suunta {heading}',
    health = 'Terveys {health}, panssari {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'palvelimen konsoli',
    unknown = 'Tuntematon',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} on bucketissa {bucket}{expected}.',
    reply_check_expected = ' (odotettu)',
    reply_check_default = ' (oletus)',
    reply_set = '{player} siirretty bucketiin {bucket}.',
    reply_list_title = 'Pelaajat oletus-bucketin {default} ulkopuolella:',
    reply_list_line = '  {player}: bucket {bucket}, {time}',
    reply_list_none = 'Kaikki pelaajat ovat oletus-bucketissa {default}.',
    reply_snapshot = 'Yhteenveto lähetetty Discordiin.',
    reply_snapshot_console = 'Discord-webhookia ei ole asetettu, joten yhteenveto tulostettiin palvelimen konsoliin.',
    reply_usage = 'Käyttö: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Pelaajaa ID:llä {id} ei ole.',
    reply_bad_bucket = 'Bucket on kokonaisluku 0:sta ylöspäin.',
    reply_no_permission = 'Sinulla ei ole oikeutta käyttää komentoa /{command}.',

    -- Chat command suggestions.
    suggest = 'Tarkista ja korjaa pelaajien routing bucketit',
    suggest_action = 'check, set, fix, list tai snapshot',
    suggest_id = 'Pelaajan palvelin-ID',
    suggest_bucket = 'Bucket (vain set)',
}
