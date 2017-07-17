-- ----------------------------------------------------------------------- --
--     Moncai Hotkey Label Improver
--     Copyright (c) 2006-2017 Moncaí
--
--     May be copied and distributed freely as long as you do not
--     change this file.
--     
-- ----------------------------------------------------------------------- --

-- Change bindingtext
old_ActionButton_UpdateHotkeys = ActionButton_UpdateHotkeys;

--~ GLOBINDS = {}

-- FrameXML/ActionButton.lua:197-222
function ActionButton_UpdateHotkeys (self, actionButtonType)
	local id;
	if ( not actionButtonType ) then
		actionButtonType = "ACTIONBUTTON";
		id = self:GetID();
	else
		if ( actionButtonType == "MULTICASTACTIONBUTTON" ) then
			id = self.buttonIndex;
		else
			id = self:GetID();
		end
	end

	local hotkey = _G[self:GetName().."HotKey"];
	local key = GetBindingKey(actionButtonType..id) or
                GetBindingKey("CLICK "..self:GetName()..":LeftButton");

	-- // -- MODDED
		
	local text = GetBindingText(key, "KEY_", false);	
	
	if text == "\194\183" then -- Catch and fix bad abbreviation to cdot...
		text = key
		-- Now fix (most) key names
		text = string.gsub(text,"SPACE", "Spacebar");
		text = string.gsub(text,"NUMPAD", "Num Pad ");
		text = string.gsub(text,"BUTTON3", "Middle Mouse");		
		text = string.gsub(text,"BUTTON", "Mouse Button ");
		text = string.gsub(text,"MOUSEWHEELUP", "Mouse Wheel Up");
		text = string.gsub(text,"MOUSEWHEELDOWN", "Mouse Wheel Down");
	end
	
	local CTRL, NUM = "CTRL", "Num Pad"
	local C_ab, N_ab = "c", "n"
	
	if (GetLocale() == "deDE") then 			-- // -- deDE
		NUM, N_ab = "Ziffernblock", "z"
		CTRL, C_ab = "STRG", "c"
	end

	-- Specials
	text = string.gsub(text,"Middle Mouse", "MM");
	text = string.gsub(text,"Mouse Button", "M");

	-- For Jiggles1875
	text = string.gsub(text,"Spacebar", "Sb");	
	text = string.gsub(text,"Mouse Wheel Up", "WU");
	text = string.gsub(text,"Mouse Wheel Down", "WD");

	
	text = string.gsub(text,"Num Lock", "NL");
	
	-- Alt, Control, Shift and Numpad
	text = string.gsub(text, "ALT."..CTRL..".".."SHIFT."..NUM..".", "a"..C_ab.."s"..N_ab);
	text = string.gsub(text, "ALT."..CTRL.."."..NUM..".", "a"..C_ab..N_ab);
	text = string.gsub(text, CTRL..".".."SHIFT."..NUM..".", C_ab.."s"..N_ab);
	text = string.gsub(text, "ALT.SHIFT."..NUM..".", "as"..N_ab);

	-- Unmodified Num Pad
	text = string.gsub(text, NUM, N_ab);
	
	-- Alt Control F# binding for Logitech G# Macro keys
	text = string.gsub(text,"ALT."..CTRL..".F", "G");
	
	-- Alt Control Shift with any key
	text = string.gsub(text,"ALT."..CTRL..".SHIFT.", "a"..C_ab.."s");
	text = string.gsub(text,"ALT.SHIFT.", "as");
	text = string.gsub(text,CTRL..".SHIFT.", C_ab.."s");
	text = string.gsub(text,"ALT."..CTRL..".", "a"..C_ab);
	text = string.gsub(text,CTRL, C_ab);
	text = string.gsub(text,"ALT", "a");
	text = string.gsub(text,"SHIFT", "s");
	
--~ 	if key and (key ~= text) then
--~ 		local bind = string.format("[%s] -> {%s}", key or "?", text or "?")
--~ 		print(bind)
--~ 		GLOBINDS[key] = bind
--~ 	end
--~ 	Spew("Binds", GLOBINDS)

	-- // -- DEDDOM

	
	
	if ( text == "" ) then
		hotkey:SetText(RANGE_INDICATOR);
		hotkey:Hide();
	else		
		text = string.gsub(text,"-", "");
		--print(key,text)
		hotkey:SetText(text);
		hotkey:Show();
	end
	
end

-- Force reload of bindings if they already loaded before addon load
local which = GetCurrentBindingSet()
--~ print("CurrentBindingSet=" .. (which or "?"))
if which and which > 0 and which < 3 then 
	LoadBindings(which)
end
