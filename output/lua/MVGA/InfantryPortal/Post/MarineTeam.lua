
local SpawnInfantryPortal = debug.getupvaluex(MarineTeam.SpawnInitialStructures, "SpawnInfantryPortal")


function MarineTeam:SpawnInitialStructures(techPoint)

    self.warmupStructures = {}
    self.startTechPoint = techPoint

    local tower, commandStation = PlayingTeam.SpawnInitialStructures(self, techPoint)
    
    SpawnInfantryPortal(self, techPoint)
	
	-- increase tres to compensate for no IP
	if self:GetNumPlayers() == 7 then
		self:AddTeamResources(5)
	
		-- Spawn a second IP when marines have 8 or more players, but reduce tres
    elseif self:GetNumPlayers() >= 8 then
	
        SpawnInfantryPortal(self, techPoint)
		
		if self:GetNumPlayers() == 8 then
			self:AddTeamResources(-10)
		end
		
    end

    if Shared.GetCheatsEnabled() and MarineTeam.gSandboxMode then
        MakeTechEnt(techPoint, AdvancedArmory.kMapName, 3.5, -2, kMarineTeamType)
        MakeTechEnt(techPoint, PrototypeLab.kMapName, -3.5, 2, kMarineTeamType)
    end
    
    return tower, commandStation
    
end