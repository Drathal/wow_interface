local D, C, L = unpack(select(2, ...))

local _G = _G
local GetXPExhaustion = _G.GetXPExhaustion

local function createBar()

	if not C.bar.show then return end

	local bar = CreateFrame("Frame", 'XPFLag-XpBar', _G['UIParent'])
	bar:SetHeight(C.bar.height)
	bar:SetWidth(0)
	bar:SetPoint("TOPLEFT", _G['UIParent'], "TOPLEFT", 0, 0)
	bar:SetFrameLevel(5)
	bar:SetFrameStrata("DIALOG");

	bar.texture = bar:CreateTexture(nil, "OVERLAY")
	bar.texture:SetTexture(C.bar.texture)
	bar.texture:SetAllPoints(bar)
	bar.texture:SetVertexColor(unpack(D.getXpColor()));

	bar:SetBackdrop({
		bgFile = [[Interface\BUTTONS\WHITE8X8]],
	    edgeFile = [[Interface\BUTTONS\WHITE8X8]], 
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
D.createBar = createBar