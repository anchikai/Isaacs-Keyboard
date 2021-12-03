local Wiki = {
	EscKey = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "If the player has fewer than 6 hearts, it will heal them with a combination of red and soul hearts."},
			{str = "Teleports you out of the room."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "The item will vanish once used."},
			{str = "If used during The Beast fight, it will do the same effects, but you will be teleported to a random position on screen."},
			{str = "If used during The Dogma fight, it will do the same effects and teleport you to Isaac's bedroom."},
		}
	},
	TildeKey = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Upon use, a random debug effect will be applied for the current room."},
			{str = "Possible debug effects are: Entity Positions, Grid, Infinite HP, High Damage, Show Room Info, Show Hitspheres, Show Damage Values, Infinite Item Charges, High Luck, Quick Kill, Grid Info, Player Item Info, and Show Grid Collision Points."}
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "The item will spawn with an empty chargebar."},
		},
	},
	AltKey = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Upon use, the floor you are currently on will switch between alt and normal floors."},
			{str = "Basement will become Downpour/Dross, Mausoleum will become Depths/Necopolis/Dank Depths, etc."}
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "The item can only be used once per floor."},
			{str = "This item will cause new floors to be generated."},
		},
	},
	SpacebarKey = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Upon use, it will teleport you to the I AM ERROR room."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "Once used, you will be stuck in the I AM ERROR room if you have no other means of leaving."},
			{str = "The item will have a 8% chance of deleting itself upon being used."},
		}
	},
	BackspaceKey = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Upon use, it will open the door you last came from."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "Using the item will do nothing if the previous door is already open."},
		},
	},
	QKey = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "When used, it will copy whatever is in your pocket slot."},
			{str = "This means it functions identically to Placebo, Blank Card, and Clear Rune."}
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "Using this item with ? Card will consume the card and send you to the I AM ERROR room."},
		},
		{ -- Interactions
			{str = "Interactions", fsize = 2, clr = 3, halign = 0},
			{str = "This item will allow you to use pocket actives without their charge going down!"},
		},
	},
	EKey = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Upon use, a Giga Bomb will be spawned at Isaac's position."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "Giga Bombs explode and destroy tiles in a diamond shape."},
			{str = "Giga bombs deal 300 damage to enemies."},
			{str = "The explosion itself will harm you, as well as the debris that is flung in random directions."},
		},
	},
	CKey = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Upon use, it will teleport you to a large Library room with 7 different books."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "The item will spawn with an empty chargebar."},
			{str = "The item will vanish once used."},
		},
		{ -- Trivia
			{str = "Trivia", fsize = 2, clr = 3, halign = 0},
			{str = "This item is a reference to the mod you are currently reading this description in. :)"},
		},
	},
	CapsKey = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Makes Isaac large for the current room, increases damage by 7, increases range by 3, and allows Isaac to walk over obstacles to destroy them."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "This effect doesn't stack if used multiple times in the same room."},
		},
	},
	EnterKey = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "Upon use, the item attempts to open the Boss Rush door on a random wall."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "The item will spawn with an empty chargebar."},
			{str = "The item will vanish once used."},
			{str = "The Boss Rush door will attempt to open regardless of in-game time."},
			{str = "The Boss Rush door will fail to open if there is already a door on each wall, but the item will not be consumed."},
			{str = "The Boss Rush door will close if you leave the room you opened it in."},
		},
	},
	ShiftKey = {
		{ -- Effect
			{str = "Effect", fsize = 2, clr = 3, halign = 0},
			{str = "If you are a normal character, you will become the respective tainted character. If you are a tainted character, you will become the respective normal character."},
		},
		{ -- Notes
			{str = "Notes", fsize = 2, clr = 3, halign = 0},
			{str = "Using this item as Esau will do nothing. This is because Esau causes issues."},
		},
	},
}

Encyclopedia.AddItem({
	Class = "Isaac's Keyboard",
	ID = CollectibleType.COLLECTIBLE_ESC_KEY,
	WikiDesc = Wiki.EscKey,
	Pools = {
		Encyclopedia.ItemPools.POOL_SECRET,
		Encyclopedia.ItemPools.POOL_GREED_SHOP,
		Encyclopedia.ItemPools.POOL_GREED_DEVIL
	},
})

Encyclopedia.AddItem({
	Class = "Isaac's Keyboard",
	ID = CollectibleType.COLLECTIBLE_TILDE_KEY,
	WikiDesc = Wiki.TildeKey,
	Pools = {
		Encyclopedia.ItemPools.POOL_SECRET
	},
})

Encyclopedia.AddItem({
	Class = "Isaac's Keyboard",
	ID = CollectibleType.COLLECTIBLE_ALT_KEY,
	WikiDesc = Wiki.AltKey,
	Pools = {
		Encyclopedia.ItemPools.POOL_SECRET,
	},
})


Encyclopedia.AddItem({
	Class = "Isaac's Keyboard",
	ID = CollectibleType.COLLECTIBLE_SPACEBAR_KEY,
	WikiDesc = Wiki.SpacebarKey,
	Pools = {
		Encyclopedia.ItemPools.POOL_SECRET,
	},
})

Encyclopedia.AddItem({
	Class = "Isaac's Keyboard",
	ID = CollectibleType.COLLECTIBLE_BACKSPACE_KEY,
	WikiDesc = Wiki.BackspaceKey,
	Pools = {
		Encyclopedia.ItemPools.POOL_SECRET,
	},
})

Encyclopedia.AddItem({
	Class = "Isaac's Keyboard",
	ID = CollectibleType.COLLECTIBLE_Q_KEY,
	WikiDesc = Wiki.QKey,
	Pools = {
		Encyclopedia.ItemPools.POOL_SECRET,
	},
})

Encyclopedia.AddItem({
	Class = "Isaac's Keyboard",
	ID = CollectibleType.COLLECTIBLE_E_KEY,
	WikiDesc = Wiki.EKey,
	Pools = {
		Encyclopedia.ItemPools.POOL_SECRET,
	},
})

Encyclopedia.AddItem({
	Class = "Isaac's Keyboard",
	ID = CollectibleType.COLLECTIBLE_C_KEY,
	WikiDesc = Wiki.CKey,
	Pools = {
		Encyclopedia.ItemPools.POOL_SECRET,
	},
})

Encyclopedia.AddItem({
	Class = "Isaac's Keyboard",
	ID = CollectibleType.COLLECTIBLE_CAPS_KEY,
	WikiDesc = Wiki.CapsKey,
	Pools = {
		Encyclopedia.ItemPools.POOL_SECRET,
	},
})

Encyclopedia.AddItem({
	Class = "Isaac's Keyboard",
	ID = CollectibleType.COLLECTIBLE_ENTER_KEY,
	WikiDesc = Wiki.EnterKey,
	Pools = {
		Encyclopedia.ItemPools.POOL_SECRET,
	},
})

Encyclopedia.AddItem({
	Class = "Isaac's Keyboard",
	ID = CollectibleType.COLLECTIBLE_SHIFT_KEY,
	WikiDesc = Wiki.ShiftKey,
	Pools = {
		Encyclopedia.ItemPools.POOL_SECRET,
	},
})