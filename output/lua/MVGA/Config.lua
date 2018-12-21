Script.Load("lua/ConfigFileUtility.lua")
Script.Load("lua/MVGA/Modules.lua")

MVGAConfig = {}
MVGAConfig.ConfigFileName = "MVGA.json"

if Server then
    local kDefaultConfig = {
        Modules = {}
    }
    
    for i = 1, #kModules do
        kDefaultConfig.Modules[kModules[i]] = true
    end

    MVGAConfig.Settings = LoadConfigFile(MVGAConfig.ConfigFileName, kDefaultConfig, true)
end