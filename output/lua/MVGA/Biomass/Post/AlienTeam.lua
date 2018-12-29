
local oldInitTechTree = AlienTeam.InitTechTree
function AlienTeam:InitTechTree()
	
    local oldResearchNode = TechTree.AddResearchNode
    TechTree.AddResearchNode = function(self, techId, prereq1, prereq2, addOnTechId)
		if techId == kTechId.Stomp and prereq1 == kTechId.BioMassEight then
			prereq1 = kTechId.BioMassNine
		end
		return oldResearchNode(self, techId, prereq1, prereq2, addOnTechId)
	end
    
    oldInitTechTree(self)
    
    
    TechTree.AddResearchNode = oldResearchNode
end