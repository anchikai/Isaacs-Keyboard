local mod = _Keyboard

function mod:UseTilde(boi, rng, player, slot, data)
	local data = player:GetData()
	player:AnimateCollectible(CollectibleType.COLLECTIBLE_TILDE_KEY, "UseItem", "PlayerPickup")
	local randomDebug = math.random(13)
	local hud = Game():GetHUD()

	if (randomDebug == 1) and (data.Debug1 == false) then
		Isaac.ExecuteCommand("debug 1")
		hud:ShowFortuneText("Entity Positions")
		data.Debug1 = true
	elseif (randomDebug == 2) and (data.Debug2 == false) then
		Isaac.ExecuteCommand("debug 2")
		hud:ShowFortuneText("Grid")
		data.Debug2 = true
	elseif (randomDebug == 3) and (data.Debug3 == false) then
		Isaac.ExecuteCommand("debug 3")
		hud:ShowFortuneText("Infinite HP")
		data.Debug3 = true
	elseif (randomDebug == 4) and (data.Debug4 == false) then
		Isaac.ExecuteCommand("debug 4")
		hud:ShowFortuneText("High Damage")
		data.Debug4 = true
	elseif (randomDebug == 5) and (data.Debug5 == false) then
		Isaac.ExecuteCommand("debug 5")
		hud:ShowFortuneText("Show Room Info")
		data.Debug5 = true
	elseif (randomDebug == 6) and (data.Debug6 == false) then
		Isaac.ExecuteCommand("debug 6")
		hud:ShowFortuneText("Show Hitspheres")
		data.Debug6 = true
	elseif (randomDebug == 7) and (data.Debug7 == false) then
		Isaac.ExecuteCommand("debug 7")
		hud:ShowFortuneText("Show Damage Values")
		data.Debug7 = true
	elseif (randomDebug == 8) and (data.Debug8 == false) then
		Isaac.ExecuteCommand("debug 8")
		hud:ShowFortuneText("Infinite Item Charges")
		data.Debug8 = true
	elseif (randomDebug == 9) and (data.Debug9 == false) then
		Isaac.ExecuteCommand("debug 9")
		hud:ShowFortuneText("High Luck")
		data.Debug9 = true
	elseif (randomDebug == 10) and (data.Debug10 == false) then
		Isaac.ExecuteCommand("debug 10")
		hud:ShowFortuneText("Quick Kill")
		data.Debug10 = true
	elseif (randomDebug == 11) and (data.Debug11 == false) then
		Isaac.ExecuteCommand("debug 11")
		hud:ShowFortuneText("Grid Info")
		data.Debug11 = true
	elseif (randomDebug == 12) and (data.Debug12 == false) then
		Isaac.ExecuteCommand("debug 12")
		hud:ShowFortuneText("Player Item Info")
		data.Debug12 = true
	elseif (randomDebug == 13) and (data.Debug13 == false) then
		Isaac.ExecuteCommand("debug 13")
		hud:ShowFortuneText("Show Grid", "Collision Points")
		data.Debug13 = true
	elseif (data.Debug1 == true) and (data.Debug2 == true) and (data.Debug3 == true) and (data.Debug4 == true) and (data.Debug5 == true) and (data.Debug6 == true) and (data.Debug7 == true) and (data.Debug8 == true) and (data.Debug9 == true) and (data.Debug10 == true) and (data.Debug11 == true) and (data.Debug12 == true) and (data.Debug13 == true) then
		mod:playFailSound()
		player:AnimateSad()
		hud:ShowFortuneText("All Debug", "Is enabled!")
	end
end

mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.UseTilde, CollectibleType.COLLECTIBLE_TILDE_KEY)

function mod:OnNewRoom(boi, rng, player, slot, data)
	for i = 0, Game():GetNumPlayers() - 1 do
		local player = Game():GetPlayer(i)
		local data = player:GetData()

		if data.Debug1 == true then
			Isaac.ExecuteCommand("debug 1")
			data.Debug1 = false
		end
		if data.Debug2 == true then
			Isaac.ExecuteCommand("debug 2")
			data.Debug2 = false
		end
		if data.Debug3 == true then
			Isaac.ExecuteCommand("debug 3")
			data.Debug3 = false
		end
		if data.Debug4 == true then
			Isaac.ExecuteCommand("debug 4")
			data.Debug4 = false
		end
		if data.Debug5 == true then
			Isaac.ExecuteCommand("debug 5")
			data.Debug5 = false
		end
		if data.Debug6 == true then
			Isaac.ExecuteCommand("debug 6")
			data.Debug6 = false
		end
		if data.Debug7 == true then
			Isaac.ExecuteCommand("debug 7")
			data.Debug7 = false
		end
		if data.Debug8 == true then
			Isaac.ExecuteCommand("debug 8")
			data.Debug8 = false
		end
		if data.Debug9 == true then
			Isaac.ExecuteCommand("debug 9")
			data.Debug9 = false
		end
		if data.Debug10 == true then
			Isaac.ExecuteCommand("debug 10")
			data.Debug10 = false
		end
		if data.Debug11 == true then
			Isaac.ExecuteCommand("debug 11")
			data.Debug11 = false
		end
		if data.Debug12 == true then
			Isaac.ExecuteCommand("debug 12")
			data.Debug12 = false
		end
		if data.Debug13 == true then
			Isaac.ExecuteCommand("debug 13")
			data.Debug13 = false
		end
	end
end

mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, mod.OnNewRoom)

function mod:InitTilde(boi, rng, player, slot, data)
	local data = player:GetData()
	--Initialize Debug Data
	if data.Debug1 == nil then
		data.Debug1 = false
		data.Debug2 = false
		data.Debug3 = false
		data.Debug4 = false
		data.Debug5 = false
		data.Debug6 = false
		data.Debug7 = false
		data.Debug8 = false
		data.Debug9 = false
		data.Debug10 = false
		data.Debug11 = false
		data.Debug12 = false
		data.Debug13 = false
	end
end

mod:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, mod.InitTilde, CollectibleType.COLLECTIBLE_TILDE_KEY)