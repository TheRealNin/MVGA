 
local oldBuildTechData = BuildTechData
function BuildTechData()
	local techData = oldBuildTechData()
	
	
    for index,record in ipairs(techData) do 
        local currentField = record[kTechDataId]
        
			-- patch the tech data to enable supply cost
        if currentField == kTechId.Observatory then
            record[kTechDataSupply] = kObservatorySupply
        end

        if currentField == kTechId.SentryBattery then
            record[kTechDataSupply] = kSentryBatterySupply
        end
    end
	
	return techData
	
end