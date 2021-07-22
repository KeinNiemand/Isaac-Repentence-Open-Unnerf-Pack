local orbitalUnnerf = RegisterMod("Orbital Unnerf",1)

function orbitalUnnerf:familiarUpdate(familiar)
	local orbitDistance = familiar.OrbitDistance
	local data = familiar.GetData(familiar)
	if (orbitDistance.X ~= 0 and orbitDistance.Y ~= 0 and (data.processed == nil or data.processed == false) and familiar.Variant ~= FamiliarVariant.BLUE_FLY) then --Check if familiar is an orbital and has not already been processed
		familiar.Size = math.max(13, familiar.Size) --If Familiar size is bellow 13 set new familiar size to 13 (the hitbox size every(exceptions?) orbital had in Afterbirth+)
		familiar.CollisionDamage = familiar.CollisionDamage * 2 --Double collison damage to compensate for the decreased damage ticks
		data.processed = true
	end
end

orbitalUnnerf:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, orbitalUnnerf.familiarUpdate)