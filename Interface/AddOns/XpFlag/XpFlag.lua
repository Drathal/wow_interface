local D, C, L = unpack(select(2, ...))

local _G = _G
local CreateFrame = _G.CreateFrame

D.pingedFriends = {}
D.friendsWithAddon = {}
D.marks = {}
D.bars = {}
D.tooltip = D.CreateTooltip(D.marks)

function D:OnInitialize()
    D.InitCommunication()

    D:RegisterEvent("PLAYER_ENTERING_WORLD")
    D:RegisterEvent("PLAYER_XP_UPDATE")
    D:RegisterEvent("PLAYER_LEVEL_UP")
    D:RegisterEvent("FRIENDLIST_UPDATE")
    D:RegisterEvent("PLAYER_UPDATE_RESTING")

    D:RegisterMessage("XpFlag-sparkmodel-show", function(msg, f)
        D.FadeInMarkModel(f)
        D.PlayXpSpark(f)
    end)

    D:RegisterMessage("XpFlag-sparkmodel-hide", function(msg, f)
        D.FadeOutMarkModel(f)
    end)

    D.RegisterFriendsFrameUpdate()
end

function D:PLAYER_ENTERING_WORLD(event)
    if C.player.show then
        D.UpdatePlayerMark()
    end

    if C.player.show and C.bar.show then
        D.bars.player = D.CreateBar()
        D.bars.player.to = D.screenWidth * UnitXP("PLAYER") / UnitXPMax("PLAYER")
    end

    D:UnregisterEvent("PLAYER_ENTERING_WORLD");
end

function D:PLAYER_UPDATE_RESTING(event)
    if C.player.show then
        D.UpdatePlayerMark()
        D.UpdatePlayerBar(D.bars.player)
    end
end

function D:PLAYER_XP_UPDATE(event, unit)
    if unit ~= "player" then return end

    D.SendUpdates()

    if C.player.show then
        D.UpdatePlayerMark()
        D.UpdatePlayerBar(D.bars.player)
    end
end

function D:PLAYER_LEVEL_UP(event, level)
    D.level = tonumber(level);
end

function D:FRIENDLIST_UPDATE()
    --D.On_FriendsFrame_Update()
end
