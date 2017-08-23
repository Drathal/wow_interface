local D, C, L = unpack(select(2, ...))

local _G = _G
local GetXPExhaustion = _G.GetXPExhaustion
local CreateFrame = _G.CreateFrame
local UnitLevel = _G.UnitLevel
local UnitXP = _G.UnitXP
local UnitXPMax = _G.UnitXPMax

local bars = {}
local parent = select(2, unpack(C.bar.position))

if not C.player.show then return end
if not C.bar.show then return end

local module = D:NewModule("Bar", "AceEvent-3.0")

module.animationFrame = CreateFrame('Frame')

local function UpdateAnimation(self, elapsed)
    if D.Throttle(self, elapsed) then return end

    if not bars.player.to then
        module.animationFrame:SetScript("OnUpdate", nil)
    end

    D.AnimateWidth(bars.player)
end

local function StartAnimation()
    module.animationFrame:SetScript("OnUpdate", UpdateAnimation)
end

local function CreateBar()
    local bar = CreateFrame("Frame", D.addonName..'-XpBar', parent)
    bar:SetHeight(C.bar.height)
    bar:SetWidth(0)
    bar:SetPoint(unpack(C.bar.position))
    bar:SetFrameLevel(1)
    bar:SetFrameStrata("DIALOG");

    bar.texture = bar:CreateTexture(nil, "OVERLAY")
    bar.texture:SetTexture(C.bar.texture)
    bar.texture:SetAllPoints(bar)
    bar.texture:SetVertexColor(unpack(D.GetXpColor()));

    bar:SetBackdrop({
        bgFile = C.bar.backdrop,
        edgeFile = C.bar.edge,
        edgeSize = 1,
        tileSize = 8,
        tile = true,
        insets = { left = 0, right = 0, top = 0, bottom = -1 }
    })
    bar:SetBackdropColor(0, 0, 0, 0.5)
    bar:SetBackdropBorderColor(0, 0, 0, 0.5)
    bar:Show()

    return bar
end

local function CreatePlayerBar()
    bars.player = CreateBar()
    return bars.player
end

local function UpdatePlayerBar()
    local bar = bars.player or CreatePlayerBar()

    if UnitLevel("player") == D.maxLevel then
        bar:Hide()
        module:UnregisterEvent("PLAYER_ENTERING_WORLD")
        module:UnregisterEvent("PLAYER_UPDATE_RESTING")
        module:UnregisterEvent("PLAYER_XP_UPDATE")
        return
    end

    bar.to = parent:GetWidth() * UnitXP("PLAYER") / UnitXPMax("PLAYER")
    bar.texture:SetVertexColor(unpack(D.GetXpColor()))

    if bar.to then
        StartAnimation()
    end
end

function module:OnEnable()
    module:RegisterEvent("PLAYER_ENTERING_WORLD")
    module:RegisterEvent("PLAYER_UPDATE_RESTING")
    module:RegisterEvent("PLAYER_XP_UPDATE")
end

function module:PLAYER_ENTERING_WORLD()
    UpdatePlayerBar()
    module:UnregisterEvent("PLAYER_ENTERING_WORLD");
end

function module:PLAYER_UPDATE_RESTING()
    UpdatePlayerBar()
end

function module:PLAYER_XP_UPDATE(event, unit)
    if unit ~= "player" then return end
    UpdatePlayerBar()
end
