soulheartgeneratorUnnerf.bluefireUnnerf = { extraSoulHeartChanceInHardMode = 0.17 }

function soulheartgeneratorUnnerf.bluefireUnnerf.entityTakeDamage(entity, amount, flags)
    if (entity.Type == EntityType.ENTITY_FIREPLACE and entity.Variant == 2 or entity.Variant == 3) then
        flags = flags & DamageFlag.DAMAGE_EXPLOSION
        if (flags ~= 0) then
            local rng = entity:GetDropRNG()
            local randomNum = rng:RandomFloat()
            if (randomNum < 0.17) then
                local pos = entity.Position
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_HEART, HeartSubType.HEART_SOUL, pos, Vector(0, 0), entity)
            end
        end
    end
end