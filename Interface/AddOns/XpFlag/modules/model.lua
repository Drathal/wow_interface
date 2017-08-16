local D, C, L = unpack(select(2, ...))

local _G = _G
local UIFrameFadeIn = _G.UIFrameFadeIn;
local UIFrameFadeOut = _G.UIFrameFadeOut;

local function createSparkModel(parent)
	local m = CreateFrame('PlayerModel', 'XpFlagPlayerSparkModel', parent)
	m:SetPoint('CENTER')
	m:SetSize(C.sparkModel.size, C.sparkModel.size)
	m:SetModel(C.sparkModel.model)
	m:SetAlpha(1)
	return m
end
D.createSparkModel = createSparkModel

local function onShowSparkModel(msg, f)
	if not f.model then return end
	UIFrameFadeIn(f.model, 0.1, f.model:GetAlpha(), 0.5)
end
D.onShowSparkModel = onShowSparkModel

local function onHideSparkModel(msg, f)
	if not f.model then return end
	UIFrameFadeOut(f.model, 1, f.model:GetAlpha(), 0)
end
D.onHideSparkModel = onHideSparkModel