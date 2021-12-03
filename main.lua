_Keyboard = RegisterMod("Isaac's Keyboard", 1)
local mod = _Keyboard
local laugh = Isaac.GetSoundIdByName("Sitcom_Laugh_Track")

_Keyboard.sound = SoundEffect.SOUND_EDEN_GLITCH

CollectibleType.COLLECTIBLE_ESC_KEY = Isaac.GetItemIdByName("Esc Key")
CollectibleType.COLLECTIBLE_TILDE_KEY = Isaac.GetItemIdByName("Tilde Key")
CollectibleType.COLLECTIBLE_ALT_KEY = Isaac.GetItemIdByName("Alt Key")
CollectibleType.COLLECTIBLE_SPACEBAR_KEY = Isaac.GetItemIdByName("Spacebar Key")
CollectibleType.COLLECTIBLE_BACKSPACE_KEY = Isaac.GetItemIdByName("Backspace Key")
CollectibleType.COLLECTIBLE_Q_KEY = Isaac.GetItemIdByName("Q Key")
CollectibleType.COLLECTIBLE_E_KEY = Isaac.GetItemIdByName("E Key")
CollectibleType.COLLECTIBLE_C_KEY = Isaac.GetItemIdByName("C Key")
CollectibleType.COLLECTIBLE_CAPS_KEY = Isaac.GetItemIdByName("Caps Key")
CollectibleType.COLLECTIBLE_ENTER_KEY = Isaac.GetItemIdByName("Enter Key")
CollectibleType.COLLECTIBLE_SHIFT_KEY = Isaac.GetItemIdByName("Shift Key")

function mod:playFailSound()
	SFXManager():Play(_Keyboard.sound)
end

include("lua/items/Esc.lua")
include("lua/items/Tilde.lua")
include("lua/items/Alt.lua")
include("lua/items/Spacebar.lua")
include("lua/items/Backspace.lua")
include("lua/items/Q.lua")
include("lua/items/E.lua")
include("lua/items/C.lua")
include("lua/items/Caps.lua")
include("lua/items/Enter.lua")
include("lua/items/Shift.lua")

--prevent shaders crash
if Isaac.GetFrameCount() > 0 then
    Isaac.ExecuteCommand("reloadshaders")
end

if EID then
	include("lua/eid.lua")
end

if Encyclopedia then
	include("lua/encyclopedia.lua")
end

local MCMLoaded, MCM = pcall(require, "scripts.modconfig")

if MCMLoaded then
	function AnIndexOf(t, val)
		for k, v in ipairs(t) do
			if v == val then
				return k
			end
		end
		return 1
	end
	
	MCM.AddSetting(
		"Isaac's Keyboard",
		"Sound Effects",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return _Keyboard.sound ~= laugh
			end,
			Display = function()
				local sstr = "???"
				if _Keyboard.sound == laugh then sstr = "Laugh Track"
				elseif _Keyboard.sound == SoundEffect.SOUND_EDEN_GLITCH then sstr = "Default" end
				return "Item Fails Sound Effect: " .. sstr
			end,
			OnChange = function(current_bool)
				if current_bool then
					_Keyboard.sound = SoundEffect.SOUND_EDEN_GLITCH
				else
					_Keyboard.sound = laugh
				end
			end
		}
	)
end