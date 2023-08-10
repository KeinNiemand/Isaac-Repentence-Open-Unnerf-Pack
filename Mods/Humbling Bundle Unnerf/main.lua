local humbleBundleUnnerf = RegisterMod("Humbleing Bundle Unnerf Unnerf",1)
humbleBundleUnnerf.game = Game()

function humbleBundleUnnerf:pickUpSelection(pickup, variant, subtype) 
    hasItem = false
    
    for i,player in ipairs(humbleBundleUnnerf:getAllPlayers()) do
        hasItem = hasItem or player:HasCollectible(CollectibleType.COLLECTIBLE_HUMBLEING_BUNDLE)
    end
    
    if (hasItem) then
        if (variant == PickupVariant.PICKUP_HEART and subtype == HeartSubType.HEART_FULL) then --Maybe Replace this with some sort of table?
            return {PickupVariant.PICKUP_HEART, HeartSubType.HEART_DOUBLEPACK}
        
        elseif (variant == PickupVariant.PICKUP_COIN and subtype == CoinSubType.COIN_PENNY) then
            return {PickupVariant.PICKUP_COIN, CoinSubType.COIN_DOUBLEPACK}
        
        elseif (variant == PickupVariant.PICKUP_KEY and subtype == KeySubType.KEY_NORMAL) then
            return {PickupVariant.PICKUP_KEY, KeySubType.KEY_DOUBLEPACK}

        elseif (variant == PickupVariant.PICKUP_BOMB and subtype == BombSubType.BOMB_NORMAL) then
            return {PickupVariant.PICKUP_BOMB, BombSubType.BOMB_DOUBLEPACK}

        end
    end   
end

function humbleBundleUnnerf:getAllPlayers(this)
    local allPlayers = { }
    local numPlayers = humbleBundleUnnerf.game:GetNumPlayers()

    for i=1, numPlayers do
        table.insert(allPlayers, humbleBundleUnnerf.game:GetPlayer(i) )
    end

    return allPlayers
end



humbleBundleUnnerf:AddCallback(ModCallbacks.MC_POST_PICKUP_SELECTION, humbleBundleUnnerf.pickUpSelection)