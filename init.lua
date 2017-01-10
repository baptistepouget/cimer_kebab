minetest.register_craft({
	type = "shapeless",
	output = "cimer_kebab:kebab",
	recipe = {"bones:bones", "farming:bread"}
})

minetest.register_node("cimer_kebab:kebab_tears", {
	description = "Larmes de kebab",
	drawtype = "plantlike",
	tiles = {"cimer_kebab_kebab_tears.png"},
	inventory_image = "cimer_kebab_kebab_tears.png",
	wield_image = "cimer_kebab_kebab_tears.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craftitem("cimer_kebab:kebab", {
	description = "Kebab du chef",
	inventory_image = "cimer_kebab_kebab.png",
	on_use = minetest.item_eat(10,"cimer_kebab:kebab_tears")
})
