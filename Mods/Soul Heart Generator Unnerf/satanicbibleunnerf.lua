soulheartgeneratorUnnerf.satanicbibleUnnerf = { }

function soulheartgeneratorUnnerf.satanicbibleUnnerf.preUseItemSatanicBible(item, player)
    if (item == CollectibleType.COLLECTIBLE_SATANIC_BIBLE) then
        soulheartgeneratorUnnerf.satanicbibleUnnerf.useItemSatanicBible(item, player)
        return true
    end
    --soulheartgeneratorUnnerf.nailunnerf.useItemNail(item, player)
    --return true
end

function soulheartgeneratorUnnerf.satanicbibleUnnerf.useItemSatanicBible (item, player)
    player:AddBlackHearts(2)
end