
-- vanilla had a hacky way of doing this with a 3 meter "feeler"...
PulseGrenade.kDetonateRadius = 1.0

function PulseGrenade:ProcessHit(targetHit)

    if Server and targetHit and GetAreEnemies(self, targetHit) then
        self:Detonate(targetHit)
    end    
    return true
end

function PulseGrenade:ProcessNearMiss( targetHit, endPoint )
    if targetHit and GetAreEnemies(self, targetHit) then
        if Server then
            self:Detonate( targetHit )
        end
        return true
    end
end

if Server then
    function PulseGrenade:OnUpdate(deltaTime)
        PredictedProjectile.OnUpdate(self, deltaTime)
    end
end