
local oldInitTechTree = AlienTeam.InitTechTree
function AlienTeam:InitTechTree()
	
    local oldAddBuildNode = TechTree.AddBuildNode
    TechTree.AddBuildNode = function(self, techId, prereq1, prereq2, isRequired)
		if techId == kTechId.Contamination and prereq1 == kTechId.BioMassTen then
			prereq1 = kTechId.BioMassNine
		end
		return oldAddBuildNode(self, techId, prereq1, prereq2, isRequired)
	end
    
    oldInitTechTree(self)
    
    
    TechTree.AddBuildNode = oldAddBuildNode
end