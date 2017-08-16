local D, C, L = unpack(select(2, ...))

local _G = _G
local random = math.random

local function PlaySpark(xp)
    for k, spark in pairs(m.xp) do
        if not spark.ag:IsPlaying() then

            local _, _, _, xOfs, yOfs = m:GetPoint()
            local x = xOfs * UIParent:GetScale()

            spark:ClearAllPoints()
            spark:SetPoint("TOP", _G[UIParent], "TOPLEFT", x + C.mark.width, - 20);

            local d = random(1, 2)
            spark.ag.a1:SetOffset( math.random(-15, 15), math.random(-120, - 80))
            spark.ag.a1:SetDuration(d)
            spark.ag.a2:SetDuration(d)

            spark.xp = xp
            spark.ag:Play()
            break
        end
    end
end
D.PlaySpark = PlaySpark

local function OnSparkPlay(self)
    local xp = self:GetParent().xp
    if not xp or xp == "0" then
        self:GetParent().text:SetText("")
        f.ag:Stop()
        return
    end

    self:GetParent().text:SetFormattedText(C.sparkXP.format, tostring(xp))
end

local function OnSparkFinished(self)
    self:GetParent().text:SetText("")
end

local function AddSpark(parent, num)
    local f = CreateFrame("Frame", nil, _G['UIParent']);
    f:SetHeight(1);
    f:SetWidth(1);
    f:SetPoint("TOP", _G[UIParent], "TOPLEFT", 0, - 20);

    f.text = f:CreateFontString(nil, "OVERLAY")
    f.text:SetPoint("CENTER")
    f.text:SetFont(unpack(C.sparkXP.font))
    f.text:SetShadowColor(0, 0, 0, 0)
    f.text:SetShadowOffset(0, 0)
    f.text:SetTextColor(unpack(C.sparkXP.fontColor))

    f.ag = f:CreateAnimationGroup()

    f.ag.a1 = f.ag:CreateAnimation("Translation")
    f.ag.a1:SetParent(f.ag);
    f.ag.a1:SetOffset(0, 0)
    f.ag.a1:SetDuration(0)
    f.ag.a1:SetSmoothing("IN_OUT")

    f.ag.a2 = f.ag:CreateAnimation("Alpha")
    f.ag.a2:SetParent(f.ag);
    f.ag.a2:SetFromAlpha(1)
    f.ag.a2:SetToAlpha(0)
    f.ag.a2:SetDuration(0)
    f.ag.a2:SetSmoothing("IN_OUT")

    f.ag:HookScript("OnPlay", OnSparkPlay)
    f.ag:HookScript("OnFinished", OnSparkFinished)

    return f
end

local function CreateSparks()
    local f = {}
    for i = 1, C.sparkXP.max, 1 do
        f[i] = AddSpark(f, i)
    end
    return f
end
D.CreateSparks = CreateSparks
