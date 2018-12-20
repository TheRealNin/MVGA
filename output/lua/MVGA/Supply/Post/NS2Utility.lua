
local kBaseSupply = 50
local kExtraSupplyPerTechpoint = 50

function GetMaxSupplyForTeam(teamNumber)

    local maxSupply = 0
	
	-- if marines (yeah, not compatible with changing team types...)
	if teamNumber == kTeam1Index then
	
		maxSupply = kMaxSupply
		
	elseif Server then
    
        local team = GetGamerules():GetTeam(teamNumber)
        if team and team.GetNumCapturedTechPoints then
            maxSupply = kBaseSupply + team:GetNumCapturedTechPoints() * kExtraSupplyPerTechpoint
        end
        
    else    
        
        local teamInfoEnt = GetTeamInfoEntity(teamNumber)
        if teamInfoEnt and teamInfoEnt.GetNumCapturedTechPoints then
            maxSupply = kBaseSupply + teamInfoEnt:GetNumCapturedTechPoints() * kExtraSupplyPerTechpoint
        end

    end   

    return maxSupply 
end