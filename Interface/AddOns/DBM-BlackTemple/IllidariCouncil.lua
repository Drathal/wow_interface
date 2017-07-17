local mod	= DBM:NewMod("Council", "DBM-BlackTemple")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 615 $"):sub(12, -3))
mod:SetCreatureID(22949, 22950, 22951, 22952)
mod:SetEncounterID(608)
mod:SetModelID(21416)
mod:SetUsedIcons(1)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 41455",
	"SPELL_CAST_SUCCESS 41455",
	"SPELL_INTERRUPT",
	"SPELL_AURA_APPLIED 41485 41481 41482 41541 41476 41475 41452 41453 41450 41451",
	"SPELL_AURA_REMOVED 41479 41485"
)

mod:SetBossHealthInfo(
	22949, L.Gathios,
	22950, L.Zerevor,
	22951, L.Malande,
	22952, L.Veras
)

local warnPoison			= mod:NewTargetAnnounce(41485, 3, nil, "Healer", 3)
local warnVanish			= mod:NewTargetAnnounce(41476, 3)
local warnVanishEnd			= mod:NewEndAnnounce(41476, 3)
local warnMeleeImmune		= mod:NewTargetAnnounce(41450, 4, nil, "Physical", 2)
local warnSpellImmune		= mod:NewTargetAnnounce(41451, 4, nil, "-Physical", 2)
local warnDevAura			= mod:NewSpellAnnounce(41452, 3, nil, "Physical", 2)
local warnResAura			= mod:NewSpellAnnounce(41453, 3, nil, "-Physical", 2)

local specWarnShield		= mod:NewSpecialWarningReflect(41475, "Dps", nil, nil, 1, 2)
local specWarnFlame			= mod:NewSpecialWarningMove(41481, nil, nil, nil, 1, 2)
local specWarnBlizzard		= mod:NewSpecialWarningMove(41482, nil, nil, nil, 1, 2)
local specWarnConsecration	= mod:NewSpecialWarningMove(41541, nil, nil, nil, 1, 2)
local specWarnCoH			= mod:NewSpecialWarningInterrupt(41455, "HasInterrupt", nil, 2, 1, 2)
local specWarnImmune		= mod:NewSpecialWarning("Immune", false)

local timerVanish			= mod:NewBuffActiveTimer(31, 41476, nil, nil, nil, 6)
local timerShield			= mod:NewBuffActiveTimer(20, 41475, nil, nil, nil, 5, nil, DBM_CORE_HEALER_ICON..DBM_CORE_DAMAGE_ICON)
local timerMeleeImmune		= mod:NewTargetTimer(15, 41450, nil, "Physical", 2, 5, nil, DBM_CORE_DAMAGE_ICON)
local timerSpellImmune		= mod:NewTargetTimer(15, 41451, nil, "-Physical", 2, 5, nil, DBM_CORE_DAMAGE_ICON)
local timerDevAura			= mod:NewBuffActiveTimer(30, 41452, nil, "Physical", 2, 5, nil, DBM_CORE_DAMAGE_ICON)
local timerResAura			= mod:NewBuffActiveTimer(30, 41453, nil, "-Physical", 2, 5, nil, DBM_CORE_DAMAGE_ICON)
local timerCoH				= mod:NewCastTimer(2.5, 41455, nil, nil, nil, 4, nil, DBM_CORE_INTERRUPT_ICON)
local timerNextCoH			= mod:NewCDTimer(14, 41455, nil, nil, nil, 4, nil, DBM_CORE_INTERRUPT_ICON)

local berserkTimer			= mod:NewBerserkTimer(900)

local voiceShield			= mod:NewVoice(41475, "Dps")--stopattack
local voiceFlame			= mod:NewVoice(41481)--runaway
local voiceBlizzard			= mod:NewVoice(41482)--runaway
local voiceConsecration		= mod:NewVoice(41541)--runaway
local voiceCoH				= mod:NewVoice(41455, "HasInterrupt")--kickcast

mod:AddSetIconOption("PoisonIcon", 41485)

function mod:OnCombatStart(delay)
	berserkTimer:Start(-delay)
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 41485 then
		warnPoison:Show(args.destName)
		if self.Options.PoisonIcon then
			self:SetIcon(args.destName, 1)
		end
	elseif spellId == 41481 and args:IsPlayer() and self:AntiSpam(3, 1) and not self:IsTrivial(85) then
		 specWarnFlame:Show()
		 voiceFlame:Play("runaway")
	elseif spellId == 41482 and args:IsPlayer() and self:AntiSpam(3, 2) and not self:IsTrivial(85) then
		 specWarnBlizzard:Show()
		 voiceBlizzard:Play("runaway")
	elseif spellId == 41541 and args:IsPlayer() and self:AntiSpam(3, 3) and not self:IsTrivial(85) then
		 specWarnConsecration:Show()
		 voiceConsecration:Play("runaway")
	elseif spellId == 41476 then
		warnVanish:Show(args.destName)
		timerVanish:Start(args.destName)
	elseif spellId == 41475 and not self:IsTrivial(85) then
		specWarnShield:Show(args.destName)
		voiceShield:Play("stopattack")
		timerShield:Start(args.destName)
	elseif spellId == 41452 and self:GetCIDFromGUID(args.destGUID) == 22949 then
		warnDevAura:Show()
		timerDevAura:Start()
	elseif spellId == 41453 and self:GetCIDFromGUID(args.destGUID) == 22949 then
		warnResAura:Show()
		timerResAura:Start()
	elseif spellId == 41450 and self:GetCIDFromGUID(args.destGUID) == 22951 then
		warnMeleeImmune:Show(args.destName)
		timerMeleeImmune:Start(args.destName)
		specWarnImmune:Show(L.Melee)
	elseif spellId == 41451 and self:GetCIDFromGUID(args.destGUID) == 22951 then
		warnSpellImmune:Show(args.destName)
		timerSpellImmune:Start(args.destName)
		specWarnImmune:Show(L.Spell)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 41479 then
		warnVanishEnd:Show()
	elseif spellId == 41485 then
		if self.Options.PoisonIcon then
			self:SetIcon(args.destName, 0)
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 41455 then
		timerCoH:Start()
		if self:CheckInterruptFilter(args.sourceGUID) then
			specWarnCoH:Show(args.sourceName)
			voiceCoH:Play("kickcast")
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 41455 then
		timerNextCoH:Start(13.3)
	end
end

function mod:SPELL_INTERRUPT(args)
	if type(args.extraSpellId) == "number" and args.extraSpellId == 41455 then
		timerCoH:Cancel()
	end
end