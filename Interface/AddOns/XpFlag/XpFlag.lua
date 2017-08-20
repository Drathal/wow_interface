local D, C, L = unpack(select(2, ...))

local _G = _G
local CreateFrame = _G.CreateFrame

<<<<<<< HEAD
D.pingedFriends = {}
D.friendsWithAddon = {}
=======
D.f = CreateFrame('Frame')
D.confirm = {}
>>>>>>> 2280e620161ac6335d806c9516e2f16c10dd3bd8
D.marks = {}
D.bars = {}
D.tooltip = D.CreateTooltip(D.marks)

function D:OnInitialize()
    D.InitCommunication()

    D:RegisterEvent("PLAYER_ENTERING_WORLD")
    D:RegisterEvent("PLAYER_XP_UPDATE")
    D:RegisterEvent("PLAYER_LEVEL_UP")
<<<<<<< HEAD
    D:RegisterEvent("FRIENDLIST_UPDATE")
=======
    D:RegisterEvent("CHAT_MSG_ADDON")
    --D:RegisterEvent("FRIENDLIST_UPDATE")
>>>>>>> 2280e620161ac6335d806c9516e2f16c10dd3bd8
    D:RegisterEvent("PLAYER_UPDATE_RESTING")

    D:RegisterMessage("XpFlag-sparkmodel-show", D.OnShowSparkModel)
    D:RegisterMessage("XpFlag-sparkmodel-hide", D.OnHideSparkModel)

<<<<<<< HEAD
    D.RegisterFriendsFrameUpdate()
=======
    D.RegisterFriends()
>>>>>>> 2280e620161ac6335d806c9516e2f16c10dd3bd8
end

function D:PLAYER_ENTERING_WORLD(event)
    if C.player.show then
        D.UpdatePlayerMark()
    end

    if C.player.show and C.bar.show then
        D.bars.player = D.CreateBar()
        D.bars.player.to = D.screenWidth * UnitXP("PLAYER") / UnitXPMax("PLAYER")
    end

<<<<<<< HEAD
=======
    --ShowFriends()
    --D.DeleteOldMarks(D.marks, D.GetFriends())

>>>>>>> 2280e620161ac6335d806c9516e2f16c10dd3bd8
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

<<<<<<< HEAD
    D.SendUpdates()
=======
    D.UpdateFriends()
>>>>>>> 2280e620161ac6335d806c9516e2f16c10dd3bd8

    if C.player.show then
        D.UpdatePlayerMark()
        D.UpdatePlayerBar(D.bars.player)
    end
end

function D:PLAYER_LEVEL_UP(event, level)
    D.level = tonumber(level);
end

<<<<<<< HEAD
function D:FRIENDLIST_UPDATE()
    --D.On_FriendsFrame_Update()
=======
--function D:FRIENDLIST_UPDATE()
--    D.DeleteOldMarks(D.marks, D.GetFriends())
--end

function D:CHAT_MSG_ADDON(event, pre, rawmsg, chan, sender)    
    D.HandleMessages(event, pre, rawmsg, chan, sender, D.marks)
>>>>>>> 2280e620161ac6335d806c9516e2f16c10dd3bd8
end
