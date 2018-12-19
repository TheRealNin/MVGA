-- remove biomass 3 upgrades
function Hive:GetTechAllowed(techId, techNode, player)

    local allowed, canAfford = CommandStructure.GetTechAllowed(self, techId, techNode, player)

    if techId == kTechId.ResearchBioMassTwo then
        allowed = allowed and self.bioMassLevel == 2
    --elseif techId == kTechId.ResearchBioMassThree then
    --    allowed = allowed and self.bioMassLevel == 3
    end
    
    return allowed, canAfford
    
end

local oldGetTechButtons = Hive.GetTechButtons
function Hive:GetTechButtons()

    local techButtons = oldGetTechButtons(self)
    
	if techButtons[2] == kTechId.ResearchBioMassThree then
		techButtons[2] = nil
	end
	
    return techButtons
    
end