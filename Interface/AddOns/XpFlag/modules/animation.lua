local D, C, L = unpack(select(2, ...))

local _G = _G
local min = _G.math.min;
local max = _G.math.max;

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
end

D.AnimateX = function(f)
    if not f then return end
    if not f.to then return end

    local cur = f.cur or 0
    local new = cur + min((f.to - cur) / C.mark.animationSpeed, f.to - cur)

    if cur == f.to or abs(new - f.to) < 2 then
        new = f.to
        f.to = nil
        D:SendMessage("XpFlag-sparkmodel-hide", f)
    end

    local p1, p, p2, xOfs, yOfs = f:GetPoint()
    f:ClearAllPoints();
    f:SetPoint(p1, p, p2, new - f:GetWidth() / 2, 0);

    f.cur = new
end

D.AnimateMarks = function(marks)
    for _, mark in pairs(marks) do
        if mark and mark.to then
            D.AnimateX(mark)
        end
    end
end
