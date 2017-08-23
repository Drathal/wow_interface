local D, C, L = unpack(select(2, ...))

local _G = _G
local CreateFrame = _G.CreateFrame

local marks = {}

local module = D:NewModule("Mark", "AceEvent-3.0")

module.animationFrame = CreateFrame('Frame')

local function UpdateAnimation(self, elapsed)
    if D.Throttle(self, elapsed) then return end

    local count = 0
    for _, mark in pairs(marks) do
        if mark and mark.to then
            D.AnimateX(mark)
            count = count + 1
        end
    end

    if count == 0 then
        module.animationFrame:SetScript("OnUpdate", nil)
    end
end

local function StartAnimation()
    module.animationFrame:SetScript("OnUpdate", UpdateAnimation)
end

local function CreateMark(name, class)
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

    return m
end

local function UpdateMark(name, value, maxvalue, level, class)
    if not marks then return end

    local name = name or D.nameRealm
    local value = value or UnitXP("PLAYER")
    local maxvalue = maxvalue or UnitXPMax("PLAYER")
    local level = level or UnitLevel("player")
    local class = class or D.class
    local m = marks[name] or CreateMark(name, class);

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

    m.texture:SetTexture(D.GetMarkTexture(level, UnitLevel("player")))
    m.texture:SetVertexColor(unpack(D.GetXpColor()))

    if m.to then
        StartAnimation()
    end

    if not m.player then return end
    m.texture:SetVertexColor(unpack(D.GetXpColor()))

    D:SendMessage("UpdateMark", m)
end


function module:OnEnable()
    module:RegisterEvent("PLAYER_ENTERING_WORLD")
    module:RegisterEvent("PLAYER_XP_UPDATE")
    module:RegisterEvent("PLAYER_LEVEL_UP")
    module:RegisterEvent("PLAYER_UPDATE_RESTING")
end

function module:PLAYER_ENTERING_WORLD(event)
    if C.player.show then
        UpdateMark()
    end
    module:UnregisterEvent("PLAYER_ENTERING_WORLD");
end

function module:PLAYER_UPDATE_RESTING(event)
    if C.player.show then
        UpdateMark()
    end
end

function module:PLAYER_XP_UPDATE(event, unit)
    if unit ~= "player" then return end

    if C.player.show then
        UpdateMark()
    end
end

function module:PLAYER_LEVEL_UP(event, level)
    D.level = tonumber(level);
end


D.DeleteMark = function(friend)
    if not friend then return end
    if not marks[friend] then return end
    marks[friend]:Hide()
    marks[friend] = nil
end

D.GetMark = function()
    return marks[friend]
end

D.GetMarks = function()
    return marks
end

-- API
D.UpdateMark = UpdateMark
