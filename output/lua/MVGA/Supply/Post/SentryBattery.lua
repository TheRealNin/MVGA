Script.Load("lua/SupplyUserMixin.lua")

-- SentryBattery costs supply
if Server then
    local oldIntitialize = SentryBattery.OnInitialized
    function SentryBattery:OnInitialized()
        oldIntitialize(self)
        InitMixin(self, SupplyUserMixin)
    end
end