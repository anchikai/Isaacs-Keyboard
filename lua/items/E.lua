local mod = _Keyboard

function mod:UseE(boi, rng, player, slot, data)
	player:AnimateCollectible(CollectibleType.COLLECTIBLE_E_KEY, "UseItem", "PlayerPickup")
	Isaac.Spawn(EntityType.ENTITY_BOMBDROP, BombVariant.BOMB_GIGA, 0, player.Position, Vector(0, 0), nil)
end

mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.UseE, CollectibleType.COLLECTIBLE_E_KEY)