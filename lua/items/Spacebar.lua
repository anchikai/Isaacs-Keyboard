local mod = _Keyboard

function mod:UseSpaceBar(boi, rng, player, slot, data)
	--if the stage is Blue Womb, Dark Room, Chest, The Void, Home, or Corpse II
	local stage = Game():GetLevel():GetStage()
	local stageType = Game():GetLevel():GetStageType()
	
	if (stage == LevelStage.STAGE4_3) or (stage == LevelStage.STAGE6) or (stage == LevelStage.STAGE7) or (stage == LevelStage.STAGE8) or (stage == LevelStage.STAGE4_2) and (stageType == StageType.STAGETYPE_REPENTANCE) then

		mod:playFailSound()
		player:AnimateSad()	
	else
	--do normal thing
		Game():StartRoomTransition(Game():GetLevel():QueryRoomTypeIndex(RoomType.ROOM_ERROR, false, RNG()), Direction.NO_DIRECTION ,3)
	end
	if math.random(100) <= 8 then
		player:RemoveCollectible(CollectibleType.COLLECTIBLE_SPACEBAR_KEY)
	end
end

mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.UseSpaceBar, CollectibleType.COLLECTIBLE_SPACEBAR_KEY)