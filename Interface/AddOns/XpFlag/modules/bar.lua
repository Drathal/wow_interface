local D, C, L = unpack(select(2, ...))

local _G = _G
local GetXPExhaustion = _G.GetXPExhaustion

local bars = {}

local module = LibStub("AceAddon-3.0"):NewAddon("XPFlagBar", "AceEvent-3.0")

module.animationFrame = CreateFrame('Frame')
module.animationFrame:SetScript('OnUpdate', function(self, elapsed)
    if D.Throttle(self, elapsed) then return end
    D.AnimateWidth(bars.player)
end)

local function CreatePlayerBar()
    bars.player = D.CreateBar()
    return bars.player
end

local function UpdatePlayerBar()
    local bar = bars.player or CreatePlayerBar()

    if UnitLevel("player") == D.maxLevel then
        bar:Hide()
        return
    end

    bar.to = D.screenWidth * UnitXP("PLAYER") / UnitXPMax("PLAYER")
    bar.texture:SetVertexColor(unpack(D.GetXpColor()))
end

function module:OnEnable()
    module:RegisterEvent("PLAYER_ENTERING_WORLD")
    module:RegisterEvent("PLAYER_UPDATE_RESTING")
    module:RegisterEvent("PLAYER_XP_UPDATE")
end

function module:PLAYER_ENTERING_WORLD(event)
    if C.player.show and C.bar.show then
        UpdatePlayerBar()
    end
    module:UnregisterEvent("PLAYER_ENTERING_WORLD");
end

function module:PLAYER_UPDATE_RESTING(event)
    if C.player.show then
        UpdatePlayerBar()
    end
end

function module:PLAYER_XP_UPDATE(event, unit)
    if unit ~= "player" then return end

    if C.player.show then
        UpdatePlayerBar()
    end
end

D.CreateBar = function()
    if not C.bar.show then return end

    local bar = CreateFrame("Frame", 'XPFLag-XpBar', _G['UIParent'])
    bar:SetHeight(C.bar.height)
    bar:SetWidth(0)
    bar:SetPoint("TOPLEFT", _G['UIParent'], "TOPLEFT", 0, 0)
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
