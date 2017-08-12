
local addon = TinyTooltip or select(2, ...)

if (GetLocale() ~= "zhTW") then return end

addon.L = {
    ["general.mask"]                        = "頂部遮罩",
    ["general.statusbarText"]               = "HP文字",
    ["general.background"]                  = "背景顔色",
    ["general.borderColor"]                 = "邊框顔色",
    ["general.scale"]                       = "框架縮放",
    ["general.borderSize"]                  = "邊框大小",
    ["general.statusbarHeight"]             = "HP高度",
    ["general.borderCorner"]                = "邊框樣式",
    ["general.bgfile"]                      = "背景材質",
    ["general.statusbarPosition"]           = "HP位置",
    ["general.statusbarOffsetX"]            = "HP位置X邊距",
    ["general.statusbarOffsetY"]            = "HP位置Y偏移",
    ["general.statusbarFontSize"]           = "HP文字大小",
    ["general.statusbarFont"]               = "HP文字字體",
    ["general.statusbarFontFlag"]           = "HP字體描邊",
    ["general.statusbarTexture"]            = "HP背景材質",
    ["general.statusbarColor"]              = "HP顔色",
    ["general.anchor.position"]             = "框架錨點",
    ["general.anchor.returnInCombat"]       = "戰鬥時復位",
    ["general.anchor.returnOnUnitFrame"]    = "UnitFrame上時復位",
    ["general.alwaysShowIdInfo"]            = "始終顯示id信息(關閉後按住alt/shift顯示)",
    ["general.skinMoreFrames"]              = "樣式應用于更多框架 |cffcccc33(重載生效)|r",
    
    ["item.coloredItemBorder"]              = "物品邊框染色",
    ["item.showItemIcon"]                   = "顯示物品圖標",
    ["quest.coloredQuestBorder"]            = "任務邊框染色",
    
    ["unit.player.anchor.position"]         = "框架錨點",
    ["unit.player.anchor.returnInCombat"]   = "戰鬥時復位",
    ["unit.player.anchor.returnOnUnitFrame"] = "UnitFrame上時復位",
    ["unit.player.background"]              = "背景染色",
    ["unit.player.coloredBorder"]           = "邊框染色",
    ["unit.player.showTarget"]              = "顯示目標",
    ["unit.player.showTargetBy"]            = "顯示被關注",
    ["unit.player.showModel"]               = "顯示模型",
    ["unit.player.grayForDead"]             = "死亡目標灰度染色",
    ["unit.player.elements.roleIcon"]       = "角色圖標",
    ["unit.player.elements.raidIcon"]       = "標記圖標",
    ["unit.player.elements.pvpIcon"]        = "PVP狀態",
    ["unit.player.elements.factionIcon"]    = "陣營圖標",
    ["unit.player.elements.classIcon"]      = "職業圖標",
    ["unit.player.elements.title"]          = "頭銜",
    ["unit.player.elements.name"]           = "名稱",
    ["unit.player.elements.realm"]          = "伺服器",
    ["unit.player.elements.statusAFK"]      = "AFK",
    ["unit.player.elements.statusDND"]      = "DND",
    ["unit.player.elements.statusDC"]       = "OFFLINE",
    ["unit.player.elements.guildName"]      = "公會名稱",
    ["unit.player.elements.guildIndex"]     = "公會階級數字",
    ["unit.player.elements.guildRank"]      = "公會階級名稱",
    ["unit.player.elements.guildRealm"]     = "公會伺服器",
    ["unit.player.elements.levelValue"]     = "等級",
    ["unit.player.elements.factionName"]    = "陣營",
    ["unit.player.elements.gender"]         = "性別",
    ["unit.player.elements.raceName"]       = "種族",
    ["unit.player.elements.className"]      = "職業",
    ["unit.player.elements.isPlayer"]       = "玩家",
    ["unit.player.elements.role"]           = "角色",
    ["unit.player.elements.moveSpeed"]      = "移動速度",
    ["unit.player.elements.zone"]           = "地區",
    
    ["unit.npc.anchor.position"]            = "框架錨點",
    ["unit.npc.anchor.returnInCombat"]      = "戰鬥時復位",
    ["unit.npc.anchor.returnOnUnitFrame"]   = "UnitFrame上時復位",
    ["unit.npc.background"]                 = "背景染色",
    ["unit.npc.coloredBorder"]              = "邊框染色",
    ["unit.npc.showTarget"]                 = "顯示目標",
    ["unit.npc.showTargetBy"]               = "顯示被關注數",
    ["unit.npc.grayForDead"]                = "死亡目標灰度染色",
    ["unit.npc.elements.raidIcon"]          = "標記圖標",
    ["unit.npc.elements.classIcon"]         = "職業圖標",
    ["unit.npc.elements.questIcon"]         = "任務圖標",
    ["unit.npc.elements.npcTitle"]          = "頭銜",
    ["unit.npc.elements.name"]              = "名稱",
    ["unit.npc.elements.levelValue"]        = "等級",
    ["unit.npc.elements.classifBoss"]       = "首領",
    ["unit.npc.elements.classifElite"]      = "精英",
    ["unit.npc.elements.classifRare"]       = "稀有",
    ["unit.npc.elements.creature"]          = "類型",
    ["unit.npc.elements.reactionName"]      = "聲望",
    ["unit.npc.elements.moveSpeed"]         = "移動速度",
    
    ["spell.background"]                    = "背景顔色",
    ["spell.borderColor"]                   = "邊框顔色",
    ["spell.showIcon"]                      = "法術圖標",
    
    ["dropdown.inherit"]        = "|cffffee00繼承全局|r",
    ["dropdown.default"]        = "|cffaaaaaa系統默認|r",
    ["dropdown.angular"]        = "直角邊框",
    ["dropdown.bottom"]         = "底部",
    ["dropdown.top"]            = "頂部",
    ["dropdown.auto"]           = "智能匹配",
    ["dropdown.smooth"]         = "百分比動態",
    ["dropdown.cursorRight"]    = "鼠標右側",
    ["dropdown.cursor"]         = "|cff33ccff鼠標|r",
    ["dropdown.static"]         = "|cff33ccff固定位置|r",
    ["dropdown.class"]          = "職業染色",
    ["dropdown.level"]          = "等差染色",
    ["dropdown.reaction"]       = "聲望染色",
    ["dropdown.itemQuality"]    = "物品品質染色",
    ["dropdown.selection"]      = "類型染色",
    ["dropdown.faction"]        = "陣營染色",
    ["dropdown.dark"]           = "深黑",
    ["dropdown.alpha"]          = "透明",
    ["dropdown.gradual"]        = "漸變",
    ["dropdown.rock"]           = "岩石",
    ["dropdown.marble"]         = "大理石",

    ["dropdown.none"]           = "|cffaaaaaa(無)|r",
    ["dropdown.reaction5"]      = "聲望友好以上",
    ["dropdown.reaction6"]      = "聲望尊敬以上",
    ["dropdown.inraid"]         = "團隊時",
    ["dropdown.incombat"]       = "戰鬥中",
    ["dropdown.inpvp"]          = "戰場裏",
    ["dropdown.inarena"]        = "競技場",
    ["dropdown.ininstance"]     = "副本時",
    ["dropdown.samerealm"]      = "同伺服",
    ["dropdown.samecrossrealm"]     = "同跨伺服",
    ["dropdown.not reaction5"]      = "|cffff3333非|r聲望友好以上",
    ["dropdown.not reaction6"]      = "|cffff3333非|r聲望尊敬以上",
    ["dropdown.not inraid"]         = "|cffff3333非|r團隊時",
    ["dropdown.not incombat"]       = "|cffff3333非|r戰鬥中",
    ["dropdown.not inpvp"]          = "|cffff3333非|r戰場裏",
    ["dropdown.not inarena"]        = "|cffff3333非|r競技場",
    ["dropdown.not ininstance"]     = "|cffff3333非|r副本時",
    ["dropdown.not samerealm"]      = "|cffff3333非|r同伺服",
    ["dropdown.not samecrossrealm"]  = "|cffff3333非|r同跨伺服",
    
    ["headerFont"]        = "標頭字體",
    ["headerFontSize"]    = "標頭字體大小",
    ["headerFontFlag"]    = "標頭字體描邊",
    ["bodyFont"]          = "内容字體",
    ["bodyFontSize"]      = "内容字體大小",
    ["bodyFontFlag"]      = "内容字體描邊",
    
    ["Anchor"]   = "錨點器",
    
    ["TargetBy"] = "被關注",
}
