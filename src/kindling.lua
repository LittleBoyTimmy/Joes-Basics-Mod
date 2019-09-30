-- Kindling file

minetest.register_craft({
		type = "cooking",
		cooktime = "3",
		output = "default:dry_grass_1",
		recipe = "default:grass_1",
})

minetest.register_craft({
	type = "fuel",
	recipe = "basics:wheat_block",
	burntime = "40",
})

minetest.register_node("basics:wheat_block", {
  description = "Wheat Block",
  drawtype = "nodebox",
  paramtype = "light",
  tiles = {"default_coal_block.png"},
  groups = {cracky = 3, oddly_breakable_by_hand = 2},
  drop = "default:dry_grass_1_block"
})

minetest.register_craft({
	output = "basics:wheat_block",
	recipe = {
		{"default:dry_grass_5", "default:dry_grass_5", "default:dry_grass_5"},
		{"default:dry_grass_5", "default:dry_grass_5", "default:dry_grass_5"},
		{"default:dry_grass_5", "default:dry_grass_5", "default:dry_grass_5"},
	},
})
