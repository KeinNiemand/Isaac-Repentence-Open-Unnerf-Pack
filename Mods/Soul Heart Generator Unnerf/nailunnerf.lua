soulheartgeneratorUnnerf.nailunnerf = { }

--function soulheartgeneratorUnnerf.nailunnerf.preUseItemNail(item, player)
    --soulheartgeneratorUnnerf.nailunnerf.useItemNail(item, player)
    --return true
--end

function soulheartgeneratorUnnerf.nailunnerf.useItemNail (item, player)
    player:AddSoulHearts(1)
end