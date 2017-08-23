local D, C, L = unpack(select(2, ...))

local _G = _G
local min = _G.math.min;
local max = _G.math.max;
local GetXPExhaustion = _G.GetXPExhaustion
local GetFramerate = _G.GetFramerate

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

D.AnimateWidth = function(f)
    if not f then return end
    if not f.to then return end

    local cur = f:GetWidth()
    local new = cur + min((f.to - cur) / C.bar.animationSpeed, f.to - cur)

    if cur == f.to or abs(new - f.to) < 2 then
        new = f.to
        f.to = nil
    end

    f:SetWidth(new)

    return f.to
end

D.AnimateX = function(f)
    if not f then return end
    if not f.to then return end

    local cur = f.cur or 0
    local new = cur + min((f.to - cur) / C.mark.animationSpeed, f.to - cur)

    if cur == f.to or abs(new - f.to) < 2 then
        new = f.to
        f.to = nil
        D:SendMessage("AnimateXEnd", f)
    end

    local p1, p, p2, xOfs, yOfs = f:GetPoint()
    f:ClearAllPoints();
    f:SetPoint(p1, p, p2, new - f:GetWidth() / 2, 0);

    f.cur = new
    return f.to
end
