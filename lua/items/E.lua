local mod = _Keyboard

function mod:UseE(boi, rng, player, slot, data)
	player:AnimateCollectible(CollectibleType.COLLECTIBLE_E_KEY, "UseItem", "PlayerPickup")
	Game():Spawn(EntityType.ENTITY_BOMBDROP, BombVariant.BOMB_GIGA, player.Position, Vector(0, 0), nil, 0, Game():GetRoom():GetSpawnSeed())
end

mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.UseE, CollectibleType.COLLECTIBLE_E_KEY)