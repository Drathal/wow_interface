local D, C, L = unpack(select(2, ...))

local _G = _G
local CreateFrame = _G.CreateFrame

D.f = CreateFrame('Frame')
D.marks = {}
D.playerBar = nil
D.tooltip = D.CreateTooltip(marks)

D.f:SetScript('OnUpdate', function(self, elapsed)
    if D.Throttle(self, elapsed) then return end
    D.AnimateWidth(D.playerbar)
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

    D:RegisterMessage("XpFlag-sparkmodel-show", D.onShowSparkModel)
    D:RegisterMessage("XpFlag-sparkmodel-hide", D.onHideSparkModel)
end

function D:PLAYER_ENTERING_WORLD(event)

    if C.player.show then
        D.UpdateMark(D.marks, D.nameRealm, UnitXP("PLAYER"), UnitXPMax("PLAYER"), D.level, D.class)
    end

    if C.player.show and C.bar.show then
        D.playerBar = D.createBar()
        D.playerBar.to = (D.screenWidth * UnitXP("PLAYER") / UnitXPMax("PLAYER"))
    end

    --ShowFriends()
    D:FRIENDLIST_UPDATE();

    D:UnregisterEvent("PLAYER_ENTERING_WORLD");
end

function D:PLAYER_UPDATE_RESTING(event)
    if C.player.show then
        D.UpdateMark(D.marks, D.nameRealm, UnitXP("PLAYER"), UnitXPMax("PLAYER"), D.level, D.class)
        D.UpdatePlayerBar(D.playerBar)
    end
end

function D:FRIENDLIST_UPDATE()
    D.RefreshMarks(D.marks, GetFriends())
end

function D:PLAYER_XP_UPDATE(event, unit)
    if unit ~= "player" then return end

    for target, _ in pairs(D.marks) do
        if target and target ~= D.nameRealm then
            SendAddonMessage("XpFlag", D.CreateMessage("XpFlag"), "WHISPER", target)
        end
    end

    if C.player.show then
        D.UpdateMark(D.marks, D.nameRealm, UnitXP("PLAYER"), UnitXPMax("PLAYER"), D.level, D.class)
        D.UpdatePlayerBar(D.playerBar)
    end
end

--function D:PLAYER_LEVEL_UP(event, level)
--    playerLevel = tonumber(level);
--end

function D:CHAT_MSG_ADDON(event, pre, msg, chan, sender)
    if pre ~= "XpFlag" then return end
    if sender == D.nameRealm then return end
    if not msg or msg == "" then return end

    local msg = D.DecodeMessage(msg)

    if msg.type == "XpFlagRequest" then
        SendAddonMessage("XpFlag", D.CreateMessage(), "WHISPER", sender)
    end

    D.UpdateMark(D.marks, sender, msg.xp, msg.maxxp, msg.level, msg.class)
end
