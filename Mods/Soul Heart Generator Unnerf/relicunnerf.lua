soulheartgeneratorUnnerf.relicunnerf = { }

function soulheartgeneratorUnnerf.relicunnerf.initRelicClearCount(familiar2)
    --Set Room Clear count to 2 if it's 0 (new relic)
	if (familiar2.Variant == FamiliarVariant.RELIC and (familiar2.RoomClearCount == 0)) then 
		familiar2.RoomClearCount = 2
    end
end

function soulheartgeneratorUnnerf.relicunnerf.pickupInit(pickup)
    if (pickup.SpawnerType == EntityType.ENTITY_FAMILIAR) then -- Pickup Spawned by familiar
        if (pickup.SpawnerEntity.Variant == FamiliarVariant.RELIC) then --Pickup Spawned by Relic
            pickup.SpawnerEntity.ToFamiliar(pickup.SpawnerEntity).RoomClearCount = 2 --Reset Relic RoomClearCount to 2
        end

    end
end





