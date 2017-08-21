local D, C, L = unpack(select(2, ...))

D.OnSparkModelShow = function(msg, f)
    D.FadeInMarkModel(f)
    D.PlayXpSpark(f)
end

D.OnSparkModelHide = function(msg, f)
    D.FadeOutMarkModel(f)
end

function D:OnInitialize()
    D.InitCommunication()

    D:RegisterEvent("PLAYER_ENTERING_WORLD")
    D:RegisterEvent("PLAYER_XP_UPDATE")
    D:RegisterEvent("PLAYER_LEVEL_UP")
    D:RegisterEvent("PLAYER_UPDATE_RESTING")

    D:RegisterMessage("XpFlag-sparkmodel-show", D.OnSparkModelShow)
    D:RegisterMessage("XpFlag-sparkmodel-hide", D.OnSparkModelHide )

    D.RegisterFriendsFrameUpdate()
    D.CreateMarkTooltip()
end

function D:PLAYER_ENTERING_WORLD(event)
    if C.player.show then
        D.UpdatePlayerMark()
    end

    if C.player.show and C.bar.show then
        D.UpdatePlayerBar()
    end

    D:UnregisterEvent("PLAYER_ENTERING_WORLD");
end

function D:PLAYER_UPDATE_RESTING(event)
    if C.player.show then
        D.UpdatePlayerMark()
        D.UpdatePlayerBar()
    end
end

function D:PLAYER_XP_UPDATE(event, unit)
    if unit ~= "player" then return end

    D.SendUpdates()

    if C.player.show then
        D.UpdatePlayerMark()
        D.UpdatePlayerBar()
    end
end

function D:PLAYER_LEVEL_UP(event, level)
    D.level = tonumber(level);
end
