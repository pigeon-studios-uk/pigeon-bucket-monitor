--[[
    Pigeon Bucket Monitor: Turkish (Türkçe).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'tr'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.tr = {
    -- Report titles.
    title_change = 'Bucket değişti',
    title_stuck = 'Oyuncu varsayılan bucket dışında takıldı',
    title_spawn = 'Varsayılan bucket dışında doğdu',
    title_character = 'Karakter varsayılan bucket dışında yüklendi',
    title_set = 'Bucket yetkili tarafından ayarlandı',
    title_fix = 'Bucket yetkili tarafından düzeltildi',
    title_set_export = 'Bucket bir kaynak tarafından ayarlandı',
    title_snapshot = 'Bucket özeti',

    -- Report text.
    text_change = '{player}, {old} bucket\'ından {new} bucket\'ına geçti.',
    text_stuck = '{player} {time} süredir {bucket} bucket\'ında. Varsayılan bucket {default}.',
    text_spawn = '{player}, {bucket} bucket\'ında doğdu. Varsayılan bucket {default}.',
    text_character = '{player}, {bucket} bucket\'ında karakter yükledi. Varsayılan bucket {default}.',
    text_set = '{staff}, {player} oyuncusunu {old} bucket\'ından {new} bucket\'ına taşıdı.',
    text_fix = '{staff}, {player} oyuncusunu {old} bucket\'ından varsayılan {new} bucket\'ına geri taşıdı.',
    text_set_export = '{resource}, {player} oyuncusunu {old} bucket\'ından {new} bucket\'ına taşıdı.',
    text_snapshot = '{staff} tüm oyuncuların bucket özetini istedi.',

    -- Report fields.
    field_player = 'Oyuncu',
    field_bucket = 'Bucket',
    field_buckets = 'Değişim',
    field_time = 'Bucket\'taki süre',
    field_cause = 'Olası neden',
    field_known = 'Bucket değiştiren kaynaklar',
    field_reason = 'Neden',
    field_character = 'Karakter',
    field_identifiers = 'Tanımlayıcılar',
    field_position = 'Konum',
    field_health = 'Can',
    field_players = 'Oyuncular',
    field_outside = 'Varsayılan bucket dışında',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} önce)',
    cause_unknown = 'Bilinmiyor. Önceki {seconds} saniyede hiçbir kaynak değişiklik bildirmedi.',
    no_reason = 'neden belirtilmedi',
    position = '{x}, {y}, {z}, yön {heading}',
    health = 'Can {health}, zırh {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'sunucu konsolu',
    unknown = 'Bilinmiyor',

    -- Command replies, shown only to the staff member.
    reply_check = '{player}, {bucket} bucket\'ında{expected}.',
    reply_check_expected = ' (beklenen)',
    reply_check_default = ' (varsayılan)',
    reply_set = '{player}, {bucket} bucket\'ına taşındı.',
    reply_list_title = 'Varsayılan {default} bucket\'ı dışındaki oyuncular:',
    reply_list_line = '  {player}: bucket {bucket}, {time} süredir',
    reply_list_none = 'Tüm oyuncular varsayılan {default} bucket\'ında.',
    reply_snapshot = 'Özet Discord\'a gönderildi.',
    reply_snapshot_console = 'Discord webhook\'u ayarlanmadığı için özet sunucu konsoluna yazdırıldı.',
    reply_usage = 'Kullanım: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = '{id} ID\'li bir oyuncu yok.',
    reply_bad_bucket = 'Bucket, 0\'dan başlayan bir tam sayıdır.',
    reply_no_permission = '/{command} kullanma iznin yok.',

    -- Chat command suggestions.
    suggest = 'Oyuncuların routing bucket\'larını kontrol et ve düzelt',
    suggest_action = 'check, set, fix, list veya snapshot',
    suggest_id = 'Oyuncunun server ID\'si',
    suggest_bucket = 'Bucket (yalnızca set)',
}
