local mawofvoidunnerf = RegisterMod("mawofvoidunnerf",1)
local mawofvoid = 399
local mawofVoidCount = 0

function mawofvoidunnerf:init(player)
	mawofVoidCount = 0
end

function mawofvoidunnerf:blackheats(laser)
	local data = laser:GetData()
	local spawnentity = laser.SpawnerEntity
	if spawnentity ~= nil then
		if spawnentity.Type == 1 then
			local filename = laser:GetSprite():GetFilename()
			if filename == "gfx/007.001.003_Dark Ring.anm2" then
				laser.BlackHpDropChance = 0.05				
			end
		end
	end
end

function mawofvoidunnerf:statChange(player, flag)
	if player:HasCollectible(mawofvoid) and flag == CacheFlag.CACHE_DAMAGE then
		local realMawOfVoidCount = player.GetCollectibleNum(player ,mawofvoid)
		player.Damage = player.Damage + 1 * (realMawOfVoidCount)
	end
end

function mawofvoidunnerf:update(player)
	local realMawOfVoidCount = player.GetCollectibleNum(player ,mawofvoid)
	if (mawofVoidCount ~= realMawOfVoidCount) then
	mawofVoidCount = realMawOfVoidCount
	player.AddCacheFlags(player, CacheFlag.CACHE_DAMAGE)
	player.EvaluateItems(player)
	end
end

mawofvoidunnerf:AddCallback(ModCallbacks.MC_POST_LASER_UPDATE, mawofvoidunnerf.blackheats)
mawofvoidunnerf:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, mawofvoidunnerf.statChange)
mawofvoidunnerf:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, mawofvoidunnerf.update)
mawofvoidunnerf:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, mawofvoidunnerf.init)