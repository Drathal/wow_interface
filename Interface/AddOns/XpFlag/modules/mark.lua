local D, C, L = unpack(select(2, ...))

local _G = _G
local CreateFrame = _G.CreateFrame

local marks = {}

D.XpFlagUpdateMark = function(f)end

D.CreateMark = function(name, class)
    local rcolor = RAID_CLASS_COLORS[class]
    local m = CreateFrame("Frame", nil, _G['UIParent'])
    m:SetHeight(C.mark.height)
    m:SetWidth(C.mark.width)
    m:SetPoint("TOPLEFT", _G['UIParent'], "TOPLEFT", 0, 0)
    m:EnableMouse()
    m:SetScript("OnEnter", D.OnMarkTooltipEnter)
    m:SetScript("OnLeave", D.OnMarkTooltipLeave)
    m:SetFrameStrata("DIALOG")
    m:SetFrameLevel(2)
    m:Show()

    marks[name] = m

    m.texture = m:CreateTexture(nil, "OVERLAY")
    m.texture:SetAllPoints(m)
    m.texture:SetTexture(C.mark.texture.default)
    m.texture:SetTexCoord(unpack(C.mark.flip and {0, 1, 1, 0} or {0, 1, 0, 1}))
    m.texture:SetVertexColor(rcolor.r, rcolor.g, rcolor.b, 1)

    m.name = name
    m.class = class

    if name ~= D.nameRealm then return m end

    m.player = true;
    m.texture:SetVertexColor(unpack(D.GetXpColor()))
    m:SetFrameLevel(5)
    m.model = D.CreateSparkModel(m)
    m.xpSparks = D.CreateSparks(m)

    --D.On_FriendsFrame_Update()

    return m
end

D.UpdateMark = function(name, value, maxvalue, level, class)
    if not marks then return end

    local name = name or D.nameRealm
    local value = value or UnitXP("PLAYER")
    local maxvalue = maxvalue or UnitXPMax("PLAYER")
    local level = level or D.level
    local class = class or D.class
    local m = marks[name] or D.CreateMark(name, class);

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

    m.texture:SetTexture(D.GetMarkTexture(level, D.level))
    m.texture:SetVertexColor(unpack(D.GetXpColor()))

    if not m.player then return end
    m.texture:SetVertexColor(unpack(D.GetXpColor()))

    D.XpFlagUpdateMark(m)
end
D.UpdatePlayerMark = D.UpdateMark

D.DeleteMark = function(friend)
    if not friend then return end
    if not marks[friend] then return end
    marks[friend]:Hide()
    marks[friend] = nil
end

D.AnimateMarks = function()
    for _, mark in pairs(marks) do
        if mark and mark.to then
            D.AnimateX(mark)
        end
    end
end

D.GetMark = function()
    return marks[friend]
end

D.GetMarks = function()
    return marks
end
