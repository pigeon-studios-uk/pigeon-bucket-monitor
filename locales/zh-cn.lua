--[[
    Pigeon Bucket Monitor: Simplified Chinese (简体中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-cn'
    to use it, or leave it on 'auto' and set ox_lib's language.
    Keep words in {curly brackets} exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales['zh-cn'] = {
    -- Report titles.
    title_change = '路由桶已变更',
    title_stuck = '玩家卡在默认路由桶之外',
    title_spawn = '在默认路由桶之外生成',
    title_character = '在默认路由桶之外加载了角色',
    title_set = '管理员设置了路由桶',
    title_fix = '管理员修复了路由桶',
    title_set_export = '资源设置了路由桶',
    title_snapshot = '路由桶快照',

    -- Report text.
    text_change = '{player} 从路由桶 {old} 移到了路由桶 {new}。',
    text_stuck = '{player} 已在路由桶 {bucket} 中待了 {time}。默认路由桶是 {default}。',
    text_spawn = '{player} 在路由桶 {bucket} 中生成。默认路由桶是 {default}。',
    text_character = '{player} 在路由桶 {bucket} 中加载了角色。默认路由桶是 {default}。',
    text_set = '{staff} 将 {player} 从路由桶 {old} 移到了路由桶 {new}。',
    text_fix = '{staff} 将 {player} 从路由桶 {old} 移回了默认路由桶 {new}。',
    text_set_export = '{resource} 将 {player} 从路由桶 {old} 移到了路由桶 {new}。',
    text_snapshot = '{staff} 请求了所有玩家路由桶的快照。',

    -- Report fields.
    field_player = '玩家',
    field_bucket = '路由桶',
    field_buckets = '变更',
    field_time = '在路由桶中的时间',
    field_cause = '可能原因',
    field_known = '会更改路由桶的资源',
    field_reason = '原因',
    field_character = '角色',
    field_identifiers = '标识符',
    field_position = '位置',
    field_health = '生命值',
    field_players = '玩家',
    field_outside = '在默认路由桶之外',
    field_in_bucket = '路由桶 {bucket}',

    cause_reported = '{resource}：{reason}（{time} 之前）',
    cause_unknown = '未知。之前的 {seconds} 秒内没有资源报告变更。',
    no_reason = '未提供原因',
    position = '{x}, {y}, {z}，朝向 {heading}',
    health = '生命值 {health}，护甲 {armour}',
    character = '{name}（{id}），{job}',
    character_gang = '{name}（{id}），{job}，{gang}',
    console = '服务器控制台',
    unknown = '未知',

    -- Command replies, shown only to the staff member.
    reply_check = '{player} 在路由桶 {bucket} 中{expected}。',
    reply_check_expected = '（符合预期）',
    reply_check_default = '（默认）',
    reply_set = '已将 {player} 移到路由桶 {bucket}。',
    reply_list_title = '不在默认路由桶 {default} 中的玩家：',
    reply_list_line = '  {player}：路由桶 {bucket}，已 {time}',
    reply_list_none = '所有玩家都在默认路由桶 {default} 中。',
    reply_snapshot = '快照已发送到 Discord。',
    reply_snapshot_console = '没有设置 Discord webhook，所以快照已打印在服务器控制台中。',
    reply_usage = '用法：/{command} check <id> · set <id> <bucket> · fix <id> · list · snapshot',
    reply_no_player = '没有 ID 为 {id} 的玩家。',
    reply_bad_bucket = '路由桶是从 0 开始的整数。',
    reply_no_permission = '你没有使用 /{command} 的权限。',

    -- Chat command suggestions.
    suggest = '检查并修复玩家的路由桶',
    suggest_action = 'check、set、fix、list 或 snapshot',
    suggest_id = '玩家的 server ID',
    suggest_bucket = '路由桶（仅 set）',
}
