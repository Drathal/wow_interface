local D, C, L = unpack(select(2, ...))

local _G = _G
local CreateFrame = _G.CreateFrame

D.f = CreateFrame('Frame')
D.marks = {}
D.bars = {}
D.tooltip = D.CreateTooltip(D.marks)

D.f:SetScript('OnUpdate', function(self, elapsed)
    if D.Throttle(self, elapsed) then return end
    D.AnimateWidth(D.bars.player)
    D.AnimateMarks(D.marks)
end)

function D:OnInitialize()
    RegisterAddonMessagePrefix("XpFlag")

    D:RegisterEvent("PLAYER_ENTERING_WORLD")
    D:RegisterEvent("PLAYER_XP_UPDATE")
    D:RegisterEvent("PLAYER_LEVEL_UP")
    D:RegisterEvent("CHAT_MSG_ADDON")
    D:RegisterEvent("FRIENDLIST_UPDATE")
    D:RegisterEvent("PLAYER_UPDATE_RESTING")

    D:RegisterMessage("XpFlag-sparkmodel-show", D.OnShowSparkModel)
    D:RegisterMessage("XpFlag-sparkmodel-hide", D.OnHideSparkModel)
end

function D:PLAYER_ENTERING_WORLD(event)

    if C.player.show then
        D.UpdatePlayerMark(D.marks)
    end

    if C.player.show and C.bar.show then
        D.bars.player = D.CreateBar()
        D.bars.player.to = D.screenWidth * UnitXP("PLAYER") / UnitXPMax("PLAYER")
    end

    --ShowFriends()
    D.DeleteOldMarks(D.marks, D.GetFriends())

    D:UnregisterEvent("PLAYER_ENTERING_WORLD");
end

function D:PLAYER_UPDATE_RESTING(event)
    if C.player.show then
        D.UpdatePlayerMark(D.marks)
        D.UpdatePlayerBar(D.bars.player)
    end
end

function D:PLAYER_XP_UPDATE(event, unit)
    if unit ~= "player" then return end

    D.UpdateFriends(D.marks)

    if C.player.show then
        D.UpdatePlayerMark(D.marks)
        D.UpdatePlayerBar(D.bars.player)
    end
end

function D:PLAYER_LEVEL_UP(event, level)
    D.level = tonumber(level);
end

function D:FRIENDLIST_UPDATE()
    D.DeleteOldMarks(D.marks, GetFriends())
end

function D:CHAT_MSG_ADDON(event, pre, rawmsg, chan, sender)
    if pre ~= "XpFlag" then return end
    if sender == D.nameRealm then return end
    if not rawmsg or rawmsg == "" then return end

    local msg = D.DecodeMessage(rawmsg)

    if msg.type == "XpFlagRequest" then
        SendAddonMessage("XpFlag", D.CreateMessage(), "WHISPER", sender)
    end

    D.UpdateMark(D.marks, sender, msg.xp, msg.maxxp, msg.level, msg.class)
end
