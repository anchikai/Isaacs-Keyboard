local mod = _Keyboard

function mod:UseC(boi, rng, player, slot, data)
	local data = player:GetData()

	player:AnimateCollectible(CollectibleType.COLLECTIBLE_C_KEY, "UseItem", "PlayerPickup")
	player:RemoveCollectible(CollectibleType.COLLECTIBLE_C_KEY)
	Isaac.ExecuteCommand("goto s.library.70055")
	data.Teleported = true
end

mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.UseC, CollectibleType.COLLECTIBLE_C_KEY)

function mod:CKeyTeleported(boi, rng, player, slot, data)
	local room = Game():GetRoom()
	
	for i = 0, Game():GetNumPlayers() - 1 do
		local player = Game():GetPlayer(i)
		local data = player:GetData()
		
		if data.Teleported == true then
		--spawn item pedastols 
		Game():Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, room:GetCenterPos(), Vector(0, 0), nil, 0, room:GetSpawnSeed())
		Game():Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, room:GetGridPosition(8, 4), Vector(0, 0), nil, 0, room:GetSpawnSeed())
		Game():Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, room:GetGridPosition(10, 4), Vector(0, 0), nil, 0, room:GetSpawnSeed())
		Game():Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, room:GetGridPosition(12, 4), Vector(0, 0), nil, 0, room:GetSpawnSeed())
		Game():Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, room:GetGridPosition(15, 4), Vector(0, 0), nil, 0, room:GetSpawnSeed())
		Game():Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, room:GetGridPosition(17, 4), Vector(0, 0), nil, 0, room:GetSpawnSeed())
		Game():Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, room:GetGridPosition(19, 4), Vector(0, 0), nil, 0, room:GetSpawnSeed())
		data.Teleported = false
		end
	end
end

mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, mod.CKeyTeleported)