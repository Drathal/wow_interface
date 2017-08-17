local D, C, L = unpack(select(2, ...))

local _G = _G
local CreateFrame = _G.CreateFrame

local rcolor = RAID_CLASS_COLORS[D.class]

local function CreateMark(name, class)
    local m = CreateFrame("Frame", 'XPFLag-'..name, _G['UIParent'])
    m:SetHeight(C.mark.height)
    m:SetWidth(C.mark.width)
    m:SetPoint("TOPLEFT", _G['UIParent'], "TOPLEFT", 0, 0)
    m:EnableMouse()
    m:SetScript("OnEnter", D.onTooltipEnter);
    m:SetScript("OnLeave", D.onTooltipLeave);
    m:SetFrameStrata("DIALOG")
    m:SetFrameLevel(1)
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
    m.texture:SetVertexColor(unpack(D.getXpColor));
    m:SetFrameLevel(5)
    m.model = D.CreateSparkModel(m)
    m.xp = D.CreateSparks()
    m.Play = D.playSpark

    return m
end
D.CreateMark = CreateMark

local function UpdateMark(marks, name, value, maxvalue, level, class)
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
    m.texture:SetVertexColor(unpack(D.GetXpColor()))
    m.texture:SetTexture(D.GetMarkTexture(level, D.level))

    if not m.player then return end
    if m.gain <= 0 then return end

    m.Play(m.gain)
    D:SendMessage("XpFlag-sparkmodel-show", m)
end
D.UpdateMark = UpdateMark

local function RefreshMarks(marks, friends)
    for name, mark in pairs(marks) do
        if not (friends[name] or (name == D.nameRealm)) then
            DeleteMark(mark)
        end
    end
end
D.RefreshMarks = RefreshMarks

local function DeleteMark(mark)
    if not mark then return end
    mark:Hide()
    mark = nil
end
D.DeleteMark = DeleteMark
