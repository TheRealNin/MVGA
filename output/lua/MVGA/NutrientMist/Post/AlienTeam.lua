
local oldUpdateTeamAutoHeal = AlienTeam.UpdateTeamAutoHeal
function AlienTeam:UpdateTeamAutoHeal(timePassed)
	
	-- TODO: Find a better way to do this. Almost certainly not JIT-able...
	kEnableCatalystHack = true
	oldUpdateTeamAutoHeal(self, timePassed)
	kEnableCatalystHack = false
	
end