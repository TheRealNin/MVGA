debug.appendtoenum(kDamageType, "HeavyToPlayers")
debug.appendtoenum(kDamageType, "Railgun")


kRailgunPlayerDamageReduction = 0.72

local function HeavyDamageToPlayers(target, attacker, doer, damage, armorFractionUsed, healthPerArmor, damageType, hitPoint)
    if target:isa("Player") then
        healthPerArmor = healthPerArmor * (kHeavyHealthPerArmor / kHealthPointsPerArmor)
    end
    return damage, armorFractionUsed, healthPerArmor
end


local function RailgunDamageRule(target, attacker, doer, damage, armorFractionUsed, healthPerArmor, damageType, hitPoint)
    if target.GetReceivesStructuralDamage and target:GetReceivesStructuralDamage(damageType) then
        damage = damage * kStructuralDamageScalar
    elseif target:isa("Player") or target:isa("Egg") then
        damage = damage * kRailgunPlayerDamageReduction
    end
    
    return damage, armorFractionUsed, healthPerArmor
end


local oldBuildDamageTypeRules = debug.getupvaluex(GetDamageByType, "BuildDamageTypeRules")
function BuildDamageTypeRules()
	oldBuildDamageTypeRules()
	
    kDamageTypeRules[kDamageType.HeavyToPlayers] = {}
    table.insert(kDamageTypeRules[kDamageType.HeavyToPlayers], HeavyDamageToPlayers)
	
    kDamageTypeRules[kDamageType.Railgun] = {}
    table.insert(kDamageTypeRules[kDamageType.Railgun], RailgunDamageRule)
	
end


debug.setupvaluex(GetDamageByType, "BuildDamageTypeRules", BuildDamageTypeRules)
