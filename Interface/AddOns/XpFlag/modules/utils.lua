local D, C, L = unpack(select(2, ...))

local _G = _G

local function throttle(self, elapsed)
	self.delay = min((self.delay or 0.01) - elapsed, 0.15);
	if self.delay > 0 then return true end
	self.delay = 12 / GetFramerate();

	return nil
end
D.throttle = throttle

local function getXpColor()
	return GetXPExhaustion() and C.player.colorRested or C.player.color
end
D.getXpColor = getXpColor

local function getMarkTexture(friend, player)
	local texture = C.mark.texture.default
	if tonumber(friend) < tonumber(player) then
		texture = C.mark.texture.below
	elseif tonumber(friend) > tonumber(player) then
		texture = C.mark.texture.over
	end
	return texture
end
D.getMarkTexture = getMarkTexture