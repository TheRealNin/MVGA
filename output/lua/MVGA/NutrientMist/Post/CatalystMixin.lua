
-- this is a global
kEnableCatalystHack = false

function CatalystMixin:GetIsCatalysted()
	if kEnableCatalystHack then
		return false
	end
    return self.isCatalysted
end