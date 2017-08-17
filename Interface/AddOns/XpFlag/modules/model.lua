local D, C, L = unpack(select(2, ...))

local _G = _G
local UIFrameFadeIn = _G.UIFrameFadeIn
local UIFrameFadeOut = _G.UIFrameFadeOut

local function CreateSparkModel(parent)
    local m = CreateFrame('PlayerModel', 'XpFlagPlayerSparkModel', parent)
    m:SetPoint('CENTER')
    m:SetSize(C.sparkModel.size, C.sparkModel.size)
    m:SetModel(C.sparkModel.model)
    m:SetAlpha(1)
    return m
end
D.CreateSparkModel = CreateSparkModel

local function OnShowSparkModel(msg, f)
    if not f.model then return end
    UIFrameFadeIn(f.model, 0.1, f.model:GetAlpha(), 0.5)
end
D.OnShowSparkModel = OnShowSparkModel

local function OnHideSparkModel(msg, f)
    if not f.model then return end
    UIFrameFadeOut(f.model, 1, f.model:GetAlpha(), 0)
end
D.OnHideSparkModel = OnHideSparkModel
