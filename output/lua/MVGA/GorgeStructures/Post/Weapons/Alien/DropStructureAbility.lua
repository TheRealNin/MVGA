
local kDropCooldown = 1.2 -- was 1

function DropStructureAbility:GetHasDropCooldown()
    return self.timeLastDrop ~= nil and self.timeLastDrop + kDropCooldown > Shared.GetTime()
end