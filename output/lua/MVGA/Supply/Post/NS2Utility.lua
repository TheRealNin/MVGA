

function GetMaxSupplyForTeam(teamNumber)

    local maxSupply = 0
	
	-- if marines (yeah, not compatible with changing team types...)
	if teamNumber == kTeam1Index then
	
		maxSupply = kMaxSupply
		
	elseif Server then
    
        local team = GetGamerules():GetTeam(teamNumber)
        if team and team.GetNumCapturedTechPoints then
            maxSupply = team:GetNumCapturedTechPoints() * kSupplyPerTechpoint
        end
        
    else    
        
        local teamInfoEnt = GetTeamInfoEntity(teamNumber)
        if teamInfoEnt and teamInfoEnt.GetNumCapturedTechPoints then
            maxSupply = teamInfoEnt:GetNumCapturedTechPoints() * kSupplyPerTechpoint
        end

    end   

    return maxSupply 
end