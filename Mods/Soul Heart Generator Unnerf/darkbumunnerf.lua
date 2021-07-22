soulheartgeneratorUnnerf.darkbumunnerf = {  }
soulheartgeneratorUnnerf.darkbumunnerf.excludedChars = { PlayerType.PLAYER_THELOST, PlayerType.PLAYER_KEEPER, PlayerType.PLAYER_THELOST_B, PlayerType.PLAYER_KEEPER_B }

function soulheartgeneratorUnnerf.darkbumunnerf.pickupInit(pickup)
    if (pickup.SpawnerType == EntityType.ENTITY_FAMILIAR and (pickup.Variant ~= PickupVariant.PICKUP_HEART or pickup.SubType ~= HeartSubType.HEART_SOUL )) then -- Pickup Spawned by familiar
        if (pickup.SpawnerEntity.Variant == FamiliarVariant.DARK_BUM and not --Pickup Spawned by Dark Bum
            soulheartgeneratorUnnerf.darkbumunnerf:isCharacterExcluded(pickup.SpawnerEntity:ToFamiliar().Player:GetPlayerType())) then --character is not excluded
            pickup:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_SOUL)
        end

    end
end

function soulheartgeneratorUnnerf.darkbumunnerf.isCharacterExcluded(this ,charType)
    local isExcluded = false
    

    for i, exChar in ipairs(this.excludedChars) do 
        if exChar == charType then 
            isExcluded = true 
        end 
    end

    return isExcluded


end



