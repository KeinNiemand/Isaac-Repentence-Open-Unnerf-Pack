soulheartgeneratorUnnerf = RegisterMod("Soul Heart Generator Unnerf",1)
soulheartgeneratorUnnerf.game = Game()
soulheartgeneratorUnnerf.enableRelicUnnerf = true
soulheartgeneratorUnnerf.enableDarkBumUnnerf = true
soulheartgeneratorUnnerf.enableNailUnnerf = false
soulheartgeneratorUnnerf.enableSatanicBibleUnnerf = false
soulheartgeneratorUnnerf.enableBlueFireUnnerf = true


--Requires
require("Mods/Soul Heart Generator Unnerf/relicunnerf")
require("Mods/Soul Heart Generator Unnerf/darkbumunnerf")
require("Mods/Soul Heart Generator Unnerf/nailunnerf")
require("Mods/Soul Heart Generator Unnerf/satanicbibleunnerf")
require("Mods/Soul Heart Generator Unnerf/bluefireunnerf")

function soulheartgeneratorUnnerf:familiarUpdate(familiar) --Unnerf Relic
	if (self.enableRelicUnnerf) then
	self.relicunnerf.initRelicClearCount(familiar)
	end
end

function soulheartgeneratorUnnerf:PickupInit(pickup)
	if (self.enableRelicUnnerf) then
		self.relicunnerf.pickupInit(pickup)
	end
	if (self.enableDarkBumUnnerf) then
		self.darkbumunnerf.pickupInit(pickup)
	end
end

function soulheartgeneratorUnnerf:preUseItem(item, rng, player, flags)
	--if (item == CollectibleType.COLLECTIBLE_THE_NAIL and self.enableNailUnnerf) then
	--	return soulheartgeneratorUnnerf.nailunnerf.preUseItemNail(item, player)
	--end

	if (self.enableSatanicBibleUnnerf) then
		return self.satanicbibleUnnerf.preUseItemSatanicBible(item, player)
	end
end

function soulheartgeneratorUnnerf:UseItem(item, rng, player, flags)
	if (item == CollectibleType.COLLECTIBLE_THE_NAIL and self.enableNailUnnerf) then
		return self.nailunnerf.useItemNail(item, player)
	end
end

function soulheartgeneratorUnnerf:EntityTakeDamage(entity, amount, flags)
	if (self.enableBlueFireUnnerf and self.game.Difficulty == Difficulty.DIFFICULTY_HARD) then
		self.bluefireUnnerf.entityTakeDamage(entity, flags)

	end
end

soulheartgeneratorUnnerf:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, soulheartgeneratorUnnerf.PickupInit)
soulheartgeneratorUnnerf:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, soulheartgeneratorUnnerf.familiarUpdate)
soulheartgeneratorUnnerf:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, soulheartgeneratorUnnerf.preUseItem)
soulheartgeneratorUnnerf:AddCallback(ModCallbacks.MC_USE_ITEM, soulheartgeneratorUnnerf.UseItem)
soulheartgeneratorUnnerf:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, soulheartgeneratorUnnerf.EntityTakeDamage)