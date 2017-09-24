local addon, ns = ...
local cfg = ns.cfg
local activate = cfg.activation.losecontrol

if not activate then return

else

LossOfControlFrame:ClearAllPoints() LossOfControlFrame:SetPoint("CENTER",UIParent,"CENTER",0,0)
select(1,LossOfControlFrame:GetRegions()):SetAlpha(0)
select(2,LossOfControlFrame:GetRegions()):SetAlpha(0) select(3,LossOfControlFrame:GetRegions()):SetAlpha(0)

end
