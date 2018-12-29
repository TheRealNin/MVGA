
-- we set this to a very high number since cysts now lose health instead of just becoming immature
Cyst.kMaturityLossTime = 9001 -- was 15

if Server then
  
	local oldOnUpdate = Cyst.OnUpdate
    function Cyst:OnUpdate(deltaTime)
		local nextUpdate = self.nextUpdate
		local connectionAttempt = self.madeInitialConnectAttempt
		oldOnUpdate(self, deltaTime)
		if self:GetIsAlive() and Shared.GetTime() > nextUpdate and not self.connected and connectionAttempt then
			local damage = kCystUnconnectedDamage * Cyst.kThinkTime
			self:DeductHealth(damage, nil, self, false, false, true)
		end
	end
	
end