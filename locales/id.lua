--[[
    Pigeon Bucket Monitor: Indonesian (Bahasa Indonesia).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'id'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.id = {
    -- Report titles.
    title_change = 'Bucket berubah',
    title_stuck = 'Pemain tertahan di luar bucket bawaan',
    title_spawn = 'Spawn di luar bucket bawaan',
    title_character = 'Karakter dimuat di luar bucket bawaan',
    title_set = 'Bucket diatur oleh staf',
    title_fix = 'Bucket diperbaiki oleh staf',
    title_set_export = 'Bucket diatur oleh resource',
    title_snapshot = 'Ringkasan bucket',

    -- Report text.
    text_change = '{player} pindah dari bucket {old} ke bucket {new}.',
    text_stuck = '{player} sudah berada di bucket {bucket} selama {time}. Bucket bawaan adalah {default}.',
    text_spawn = '{player} spawn di bucket {bucket}. Bucket bawaan adalah {default}.',
    text_character = '{player} memuat karakter di bucket {bucket}. Bucket bawaan adalah {default}.',
    text_set = '{staff} memindahkan {player} dari bucket {old} ke bucket {new}.',
    text_fix = '{staff} memindahkan {player} dari bucket {old} kembali ke bucket bawaan {new}.',
    text_set_export = '{resource} memindahkan {player} dari bucket {old} ke bucket {new}.',
    text_snapshot = '{staff} meminta ringkasan bucket semua pemain.',

    -- Report fields.
    field_player = 'Pemain',
    field_bucket = 'Bucket',
    field_buckets = 'Perubahan',
    field_time = 'Waktu di bucket',
    field_cause = 'Kemungkinan penyebab',
    field_known = 'Resource yang mengubah bucket',
    field_reason = 'Alasan',
    field_character = 'Karakter',
    field_identifiers = 'Identifier',
    field_position = 'Posisi',
    field_health = 'Kesehatan',
    field_players = 'Pemain',
    field_outside = 'Di luar bucket bawaan',
    field_in_bucket = 'Bucket {bucket}',

    cause_reported = '{resource}: {reason} ({time} sebelumnya)',
    cause_unknown = 'Tidak diketahui. Tidak ada resource yang melaporkan perubahan dalam {seconds} detik sebelumnya.',
    no_reason = 'tanpa alasan',
    position = '{x}, {y}, {z}, arah {heading}',
    health = 'Kesehatan {health}, armor {armour}',
    character = '{name} ({id}), {job}',
    character_gang = '{name} ({id}), {job}, {gang}',
    console = 'konsol server',
    unknown = 'Tidak diketahui',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} ada di bucket {bucket}{expected}.',
    reply_check_expected = ' (sesuai)',
    reply_check_default = ' (bawaan)',
    reply_set = '{player} dipindahkan ke bucket {bucket}.',
    reply_list_title = 'Pemain di luar bucket bawaan {default}:',
    reply_list_line = '  {player}: bucket {bucket}, selama {time}',
    reply_list_none = 'Semua pemain ada di bucket bawaan {default}.',
    reply_snapshot = 'Ringkasan dikirim ke Discord.',
    reply_snapshot_console = 'Webhook Discord belum diatur, jadi ringkasan dicetak di konsol server.',
    reply_usage = 'Penggunaan: /{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = 'Tidak ada pemain dengan ID {id}.',
    reply_bad_bucket = 'Bucket adalah bilangan bulat mulai dari 0.',
    reply_no_permission = 'Kamu tidak punya izin untuk memakai /{command}.',

    -- Chat command suggestions.
    suggest = 'Periksa dan perbaiki routing bucket pemain',
    suggest_action = 'check, set, fix, list, atau snapshot',
    suggest_id = 'Server ID pemain',
    suggest_bucket = 'Bucket (hanya set)',
}
