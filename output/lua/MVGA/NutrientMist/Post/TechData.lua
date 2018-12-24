 
local oldBuildTechData = BuildTechData
function BuildTechData()
	local techData = oldBuildTechData()
	
	
    for index,record in ipairs(techData) do 
        local currentField = record[kTechDataId]
        
		-- patch the tech data to prevent nutrient mist off infestation
        if currentField == kTechId.NutrientMist then
            record[kTechDataRequiresInfestation] = true
        end

    end
	
	return techData
	
end