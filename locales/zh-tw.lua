--[[
    Pigeon Bucket Monitor: Traditional Chinese (繁體中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-tw'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales['zh-tw'] = {
    -- Report titles.
    title_change = '路由桶已變更',
    title_stuck = '玩家卡在預設路由桶之外',
    title_spawn = '在預設路由桶之外生成',
    title_character = '在預設路由桶之外載入了角色',
    title_set = '管理員設定了路由桶',
    title_fix = '管理員修復了路由桶',
    title_set_export = '資源設定了路由桶',
    title_snapshot = '路由桶快照',

    -- Report text.
    text_change = '{player} 從路由桶 {old} 移到了路由桶 {new}。',
    text_stuck = '{player} 已在路由桶 {bucket} 中待了 {time}。預設路由桶是 {default}。',
    text_spawn = '{player} 在路由桶 {bucket} 中生成。預設路由桶是 {default}。',
    text_character = '{player} 在路由桶 {bucket} 中載入了角色。預設路由桶是 {default}。',
    text_set = '{staff} 將 {player} 從路由桶 {old} 移到了路由桶 {new}。',
    text_fix = '{staff} 將 {player} 從路由桶 {old} 移回了預設路由桶 {new}。',
    text_set_export = '{resource} 將 {player} 從路由桶 {old} 移到了路由桶 {new}。',
    text_snapshot = '{staff} 要求了所有玩家路由桶的快照。',

    -- Report fields.
    field_player = '玩家',
    field_bucket = '路由桶',
    field_buckets = '變更',
    field_time = '在路由桶中的時間',
    field_cause = '可能原因',
    field_known = '會變更路由桶的資源',
    field_reason = '原因',
    field_character = '角色',
    field_identifiers = '識別碼',
    field_position = '位置',
    field_health = '生命值',
    field_players = '玩家',
    field_outside = '在預設路由桶之外',
    field_in_bucket = '路由桶 {bucket}',

    cause_reported = '{resource}：{reason}（{time} 之前）',
    cause_unknown = '未知。之前的 {seconds} 秒內沒有資源回報變更。',
    no_reason = '未提供原因',
    position = '{x}, {y}, {z}，朝向 {heading}',
    health = '生命值 {health}，護甲 {armour}',
    character = '{name}（{id}），{job}',
    character_gang = '{name}（{id}），{job}，{gang}',
    console = '伺服器主控台',
    unknown = '未知',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} 在路由桶 {bucket} 中{expected}。',
    reply_check_expected = '（符合預期）',
    reply_check_default = '（預設）',
    reply_set = '已將 {player} 移到路由桶 {bucket}。',
    reply_list_title = '不在預設路由桶 {default} 中的玩家：',
    reply_list_line = '  {player}：路由桶 {bucket}，已 {time}',
    reply_list_none = '所有玩家都在預設路由桶 {default} 中。',
    reply_snapshot = '快照已傳送到 Discord。',
    reply_snapshot_console = '沒有設定 Discord webhook，所以快照已列印在伺服器主控台中。',
    reply_usage = '用法：/{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = '沒有 ID 為 {id} 的玩家。',
    reply_bad_bucket = '路由桶是從 0 開始的整數。',
    reply_no_permission = '你沒有使用 /{command} 的權限。',

    -- Chat command suggestions.
    suggest = '檢查並修復玩家的路由桶',
    suggest_action = 'check、set、fix、list 或 snapshot',
    suggest_id = '玩家的 server ID',
    suggest_bucket = '路由桶（僅 set）',
}
