local D, C, L = unpack(select(2, ...))

local _G = _G

D.Throttle = function(self, elapsed)
    self.delay = min((self.delay or 0.01) - elapsed, 0.15);
    if self.delay > 0 then return true end
    self.delay = 12 / GetFramerate();

    return nil
end

D.GetXpColor = function()
    return GetXPExhaustion() and C.player.colorRested or C.player.color
end

D.GetMarkTexture = function(friend, player)
    local texture = C.mark.texture.default
    if tonumber(friend) < tonumber(player) then
        texture = C.mark.texture.below
    elseif tonumber(friend) > tonumber(player) then
        texture = C.mark.texture.over
    end
    return texture
end

D.Debug = function(msg, prefix)
    if not C.debug then return end
    print(prefix or "", msg)
end
