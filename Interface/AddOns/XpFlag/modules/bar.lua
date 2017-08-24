local D, C, L = unpack(select(2, ...))

local _G = _G
local GetXPExhaustion = _G.GetXPExhaustion
local CreateFrame = _G.CreateFrame
local UnitLevel = _G.UnitLevel
local UnitXP = _G.UnitXP
local UnitXPMax = _G.UnitXPMax

local bars = {}
local parent = select(2, unpack(C.bar.position))

local module = D:NewModule("bar", "AceEvent-3.0")

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

function module:OnEnable()
    if not C.player.show then return end
    if not C.db.profile.bar.show then return end

    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("PLAYER_UPDATE_RESTING")
    self:RegisterEvent("PLAYER_XP_UPDATE")
end

function module:OnDisable()
    if bars.player then
        bars.player:Hide()
    end
    self:UnregisterEvent("PLAYER_UPDATE_RESTING")
    self:UnregisterEvent("PLAYER_XP_UPDATE")
end

function module:CreatePlayerBar()
    bars.player = CreateBar()
    return bars.player
end

function module:UpdatePlayerBar()
    local bar = bars.player or self:CreatePlayerBar()

    if D.IsMaxLevel() then
        module:Disable()
        return
    end

    bar.to = parent:GetWidth() * UnitXP("PLAYER") / UnitXPMax("PLAYER")
    bar.texture:SetVertexColor(unpack(D.GetXpColor()))
    bar:Show()

    if bar.to and bar.to > 0 then
        StartAnimation()
    end
end

function module:PLAYER_ENTERING_WORLD()
    self:UpdatePlayerBar()
    self:UnregisterEvent("PLAYER_ENTERING_WORLD");
end

function module:PLAYER_UPDATE_RESTING()
    self:UpdatePlayerBar()
end

function module:PLAYER_XP_UPDATE(event, unit)
    if unit ~= "player" then return end
    self:UpdatePlayerBar()
end

function module:Update()
    if not C.db.profile.bar.show then
        self:Disable()
        return
    elseif not module:IsEnabled() then
        self:Enable()
    end

    self:UpdatePlayerBar()
end
