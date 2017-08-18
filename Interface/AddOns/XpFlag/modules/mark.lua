local D, C, L = unpack(select(2, ...))

local _G = _G
local CreateFrame = _G.CreateFrame

local rcolor = RAID_CLASS_COLORS[D.class]

D.CreateMark = function(name, class)
    local m = CreateFrame("Frame", 'XPFLag-'..name, _G['UIParent'])
    m:SetHeight(C.mark.height)
    m:SetWidth(C.mark.width)
    m:SetPoint("TOPLEFT", _G['UIParent'], "TOPLEFT", 0, 0)
    m:EnableMouse()
    m:SetScript("OnEnter", D.OnTooltipEnter);
    m:SetScript("OnLeave", D.OnTooltipLeave);
    m:SetFrameStrata("DIALOG")
    m:SetFrameLevel(2)
    m:Show()

    m.texture = m:CreateTexture(nil, "OVERLAY")
    m.texture:SetAllPoints(m)
    m.texture:SetTexture(C.mark.texture.default)
    m.texture:SetTexCoord(unpack(C.mark.flip and {0, 1, 1, 0} or {0, 1, 0, 1}))
    m.texture:SetVertexColor(rcolor.r, rcolor.g, rcolor.b, 1)

    m.name = name
    m.class = class

    if name ~= D.nameRealm then return end

    m.player = true;
    m.texture:SetVertexColor(unpack(D.GetXpColor()));
    m:SetFrameLevel(5)
    m.model = D.CreateSparkModel(m)
    m.xpSparks = D.CreateSparks(m)

    return m
end

D.UpdateMark = function(marks, name, value, maxvalue, level, class)

    local name = name or D.nameRealm
    local value = value or UnitXP("PLAYER")
    local maxvalue = maxvalue or UnitXPMax("PLAYER")
    local level = level or D.level
    local class = class or D.class
    local m = marks[name] or D.CreateMark(name, class);

    if not marks[name] then
        marks[name] = m
    end

    if level == MAX_PLAYER_LEVEL then
        m:Hide()
        return
    end

    m.prev = m.value or value
    m.value = value
    m.maxvalue = maxvalue
    m.level = level
    m.gain = tonumber(value) - tonumber(m.prev) or 0

    m.to = D.screenWidth * value / maxvalue
    m.texture:SetVertexColor(unpack(D.GetXpColor()))
    m.texture:SetTexture(D.GetMarkTexture(level, D.level))

    if not m.player then return end
    if m.gain <= 0 then return end

    m.xpSparks.Play(m.gain)
    D:SendMessage("XpFlag-sparkmodel-show", m)
end
D.UpdatePlayerMark = D.UpdateMark

D.DeleteOldMarks = function(marks, friends)
    for name, mark in pairs(marks) do
        if not (friends[name] or (name == D.nameRealm)) then
            DeleteMark(mark)
        end
    end
end

D.DeleteMark = function(mark)
    if not mark then return end
    mark:Hide()
    mark = nil
end
