-- Charcoal file

local get_modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(get_modname)

minetest.register_craftitem("basics:charcoal", {
	description = "charcoal",
	inventory_image = "default_coal_lump.png",
})

minetest.register_craft({
	type = "cooking",
	output = "basics:charcoal_block",
	recipe = "group:tree",
	cooktime = 15,
})

minetest.register_craft({
	type = "cooking",
	output = "basics:charcoal",
	recipe = "group:sapling",
	cooktime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "basics:charcoal",
	burntime = "40",
})

minetest.register_craft({
	type = "fuel",
	recipe = "basics:charcoal_block",
	burntime = "600",
})

minetest.register_craft({
	output = "default:torch 4",
	recipe = {
		{"","",""},
		{"", "basics:charcoal", ""},
		{"", "default:stick", ""},
	},
})

minetest.register_craft({
	output = "default:charcoal_block",
	recipe = {
		{"basics:charcoal","basics:charcoal","basics:charcoal"},
		{"basics:charcoal", "basics:charcoal", "basics:charcoal"},
		{"basics:charcoal", "basics:charcoal", "basics:charcoal"},
	},
})

minetest.register_node("basics:charcoal_block", {
  description = "Charcoal Block",
  drawtype = "nodebox",
  paramtype = "light",
  tiles = {"default_coal_block.png"},
  groups = {cracky = 3, oddly_breakable_by_hand = 2},
  drop = "basics:charcoal_block"
})
