
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