local D, C, L = unpack(select(2, ...))

local _G = _G
local UIFrameFadeIn = _G.UIFrameFadeIn
local UIFrameFadeOut = _G.UIFrameFadeOut

local module = LibStub("AceAddon-3.0"):NewAddon("XPFlagSparkModel", "AceHook-3.0")

D.CreateSparkModel = function(parent)
    local m = CreateFrame('PlayerModel', 'XpFlagPlayerSparkModel', parent)
    m:SetPoint('CENTER')
    m:SetSize(C.sparkModel.size, C.sparkModel.size)
    m:SetModel(C.sparkModel.model)
    m:SetAlpha(1)
    return m
end

local function FadeInMarkModel(f)
    if not f or not f.model then return end
    UIFrameFadeIn(f.model, 0.1, f.model:GetAlpha(), 0.5)
end

local function FadeOutMarkModel(f)
    if not f or not f.model then return end
    UIFrameFadeOut(f.model, 1, f.model:GetAlpha(), 0)
end

function module:OnEnable()
    self:Hook(D, "XpFlagUpdateMark", function(f)
        FadeInMarkModel(f)
    end)
    self:Hook(D, "XpFlagMarkModelHide", function(f)
        FadeOutMarkModel(f)
    end)
end
