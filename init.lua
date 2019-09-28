-- Main file for the basics mod

local modname = minetest.get_current_modname()
local path = minetest.get_modpath(modname)

dofile(path .. "/src/charcoal.lua")
dofile(path .. "/src/kindling.lua")

minetest.log("action", "[MOD]"..modname.." -- loaded from "..path)
