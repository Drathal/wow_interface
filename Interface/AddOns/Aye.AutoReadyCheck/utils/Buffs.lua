local Aye = Aye;
if not LibStub:NewLibrary("Aye.utils.Buffs", 3) then return end;
Aye.utils.Buffs = Aye.utils.Buffs or {};

-- Check if @unitID has rune
--
-- @param	{uint}		unitID	@unitID should be visible (UnitIsVisible)
-- @return	{0|1}		buff	if unit have Rune
-- @return	{uint}		[note]	Buff Time left (if @buff is =1)
-- @example
--| local buff, note = Aye.utils.Buffs.UnitHasRune("player");
--| 
--| if buff then
--| 	print("player have rune, time left: " ..note .."min");
--| else
--| 	print("player have no rune");
--| end;
Aye.utils.Buffs.UnitHasRune = function(unitID)
	-- Rune
	for _, buffID in pairs({
		224001, -- 325 primary stats
	}) do
		local _, _, _, _, _, _, expires = UnitBuff(unitID, GetSpellInfo(buffID));
		
		if type(expires) =="number" and expires >0 then
			return 1, floor(.5+ (expires -GetTime()) /60);
		end;
	end;
	
	-- No Rune
	return 0;
end;

-- Check if @unitID has flask
--
-- @param		{uint}		unitID	@unitID should be visible (UnitIsVisible)
-- @return		{0|1|2}		buff	extended buff status:
--
-- +------+-------+-----+
-- | buff | flask | BiS |
-- +------+-------+-----+
-- |    0 |    no |     |
-- |    1 |   yes | yes |
-- |    2 |   yes |  no |
-- +------+-------+-----+
--
-- @return		{uint}		[note]	Buff Time left		(if @buff is =1)
-- 			or	{string}	[note]	Formatted Buff Link	(if @buff is =2)
--
-- @example
--| local buff, note = Aye.utils.Buffs.UnitHasFlask("player");
--| 
--| if not buff		then print("player have no flask") end;
--| if buff == 1	then print("player have BiS flask, time left: " ..note .."min") end;
--| if buff == 2	then print("player have old flask: " ..note) end;
Aye.utils.Buffs.UnitHasFlask = function(unitID)
	-- BiS Flask: 1300
	for _, buffID in pairs({
		188031, -- 1300 int, Flask of the Whispered Pact
		188033, -- 1300 agi, Flask of the Seventh Demon
		188034, -- 1300 str, Flask of the Countless Armies
		188035, -- 1950 sta, Flask of Ten Thousand Scars
	}) do
		local _, _, _, _, _, _, expires = UnitBuff(unitID, GetSpellInfo(buffID));
		
		if type(expires) =="number" and expires >0 then
			return 1, floor(.5+ (expires -GetTime()) /60);
		end;
	end;
	
	-- WoD
	-- Not BiS Flask: 250
	for _, buffID in pairs({
		156079, -- 250 int, Greater Draenic Intellect Flask
		156064, -- 250 agi, Greater Draenic Agility Flask
		156080, -- 250 str, Greater Draenic Strength Flask
		156084, -- 375 sta, Greater Draenic Stamina Flask
		
		156070, -- 200 int, Draenic Intellect Flask
		156073, -- 200 agi, Draenic Agility Flask
		156071, -- 200 str, Draenic Strength Flask
		156077, -- 300 sta, Draenic Stamina Flask
	}) do
		local _, _, _, _, _, _, expires = UnitBuff(unitID, GetSpellInfo(buffID));
		
		if type(expires) =="number" and expires >0 then
			return 2, GetSpellLink(buffID);
		end;
	end;
	
	-- No Flask
	return 0;
end;

-- Check if @unitID is Well Fed
--
-- @param		{uint}		unitID			@unitID should be visible (UnitIsVisible)
-- @param		{uint}		requiredTier	minimum required Tier of buff (default 3)
-- @return		{0|1|2|3}	buff			extended buff status:
--
-- +------+----------+-----+--------+
-- | buff | Well Fed | BiS | Eating |
-- +------+----------+-----+--------+
-- |    0 |       no |     |     no |
-- |    1 |      yes | yes |        |
-- |    2 |      yes |  no |        |
-- |    3 |       no |     |    yes |
-- +------+----------+-----+--------+
--
-- @return		{uint}		[note]	Buff Time left		(if @buff is =1)
-- 			or	{string}	[note]	Formatted Buff Link	(if @buff is =2 and value2 is =0)
-- 			or	{uint}		[note]	Buff value2			(if @buff is =2 and value2 is >0)
-- 			or	"E"			[note]						(if @buff is =3)
--
-- @example
--| local buff, note = Aye.utils.Buffs.UnitIsWellFed("player");
--| 
--| if not buff		then print("player is not Well Fed") end;							-- No "Well Fed" buff and not eating
--| if buff == 1	then print("player is Well Fed, time left: " ..note .."min") end;	-- BiS "Well Fed" buff, note contains buff time left
--| if buff == 2	then print("player is Poor Fed: " ..note) end;						-- "Well Fed" buff is not BiS, aka "Poor Fed", note is buff value2 or link to "Well Fed" buff
--| if buff == 3	then print("player is eating.") end;								-- No "Well Fed" buff, but @unitID is eating, note is "E"
Aye.utils.Buffs.UnitIsWellFed = function(unitID, requiredTier)
	requiredTier = requiredTier == nil and 3 or requiredTier;
	
	-- Well Fed
	for _, buffID in pairs({
		201640, -- 500 int
		201639, -- 500 agi
		201638, -- 500 str
		201641, -- 750 sta
	}) do
		local _, _, _, _, _, _, expires = UnitBuff(unitID, GetSpellInfo(buffID));
		
		if type(expires) =="number" and expires >0 then
			return 1, floor(.5+ (expires -GetTime()) /60);
		end;
	end;
	
	-- Tier 4 Food
	for _, buffID in pairs({
		201636, -- 400 int
		201635, -- 400 agi
		201634, -- 400 str
		201637, -- 600 sta
	}) do
		local _, _, _, _, _, _, expires = UnitBuff(unitID, GetSpellInfo(buffID));
		
		if type(expires) =="number" and expires >0 then
			if requiredTier <=4 then
				return 1, floor(.5+ (expires -GetTime()) /60);
			else
				return 2, "T4";
			end;
		end;
	end;
	
	-- Tier 3 Food
	for _, buffID in pairs({
		225604, -- 375 mastery
		225603, -- 375 haste
		225602, -- 375 crit
		225605, -- 375 versatility
		225606, -- 2831.(6) +haste dps
	}) do
		local _, _, _, _, _, _, expires = UnitBuff(unitID, GetSpellInfo(buffID));
		
		if type(expires) =="number" and expires >0 then
			if requiredTier <=3 then
				return 1, floor(.5+ (expires -GetTime()) /60);
			else
				return 2, "T3";
			end;
		end;
	end;
	
	-- Tier 2 Food
	for _, buffID in pairs({
		225599, -- 300 mastery
		225598, -- 300 haste
		225597, -- 300 crit
		225600, -- 300 versatility
		225601, -- 2265.(3) +haste dps
	}) do
		local _, _, _, _, _, _, expires = UnitBuff(unitID, GetSpellInfo(buffID));
		
		if type(expires) =="number" and expires >0 then
			if requiredTier <=2 then
				return 1, floor(.5+ (expires -GetTime()) /60);
			else
				return 2, "T2";
			end;
		end;
	end;
	
	-- Tier 1 Food
	for _, buffID in pairs({
		201331, -- 225 mastery
		201329, -- 225 haste
		201213, -- 225 crit
		201333, -- 225 versatility
		201336, -- 1699 +haste dps
	}) do
		local _, _, _, _, _, _, expires = UnitBuff(unitID, GetSpellInfo(buffID));
		
		if type(expires) =="number" and expires >0 then
			if requiredTier <=1 then
				return 1, floor(.5+ (expires -GetTime()) /60);
			else
				return 2, "T1";
			end;
		end;
	end;
	
	-- Eating
	local _, _, _, _, _, _, eating = UnitBuff(unitID, GetSpellInfo(433)); -- eating
	if type(eating) =="number" and eating >0 then
		return 3, "E";
	end;
	
	-- Food & Drink
	local _, _, _, _, _, _, eating = UnitBuff(unitID, GetSpellInfo(192002)); -- Food & Drink
	if type(eating) =="number" and eating >0 then
		return 3, "E";
	end;
	
	-- get localized "Well Fed" buff name
	-- @todo move it, or rewrite a bit
	local langs = {
		deDE = "de",
		enGB = "en",
		enUS = "en",
		esES = "es",
		esMX = "es",
		frFR = "fr",
		itIT = "it",
		koKR = "ko",
		ptBR = "pt",
		ruRU = "ru",
		zhCN = "cn",
		zhTW = "cn",
	};
	local lang = langs[GetLocale()];
	if not lang then lang = "en" end;
	local L_WellFed = {
		de = "Satt",
		en = "Well Fed",
		es = "Bien alimentado",
		fr = "Bien nourri",
		it = "Ben Nutrito",
		ko = "포만감",
		pt = "Bem Alimentado",
		ru = "Сытость",
		cn = "进食充分",
	};
	local WellFed = L_WellFed[lang];
	
	-- expires	= time at which the aura will expire
	-- spellID	= spellID of the aura, used to identify Well Fed buff
	-- value2	= how much stat is applied on buff, ex. 125 for +125 mastery
	local _, _, _, _, _, _, expires, _, _, _, spellID, _, _, _, value2 = UnitBuff(unitID, WellFed);
	
	-- Poor Fed
	if type(expires) =="number" and expires >0 and type(value2) =="number" and value2 >=0 then
		return 2, value2 ==0 and GetSpellLink(spellID) or value2;
	end;
	
	-- Not Well Fed
	return 0;
end;
