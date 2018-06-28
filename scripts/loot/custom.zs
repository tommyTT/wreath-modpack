import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

import crafttweaker.item.IItemStack;

var tables = [
	"minecraft:chests/abandoned_mineshaft",
	"minecraft:chests/simple_dungeon",
	"minecraft:chests/village_blacksmith",
	"minecraft:chests/desert_pyramid"
] as string[];

for table in tables {
	val loot = LootTables.getTable(table);
	val pool = loot.addPool("leather", 0, 3, 1, 1);
	pool.addItemEntry(<minecraft:leather>, 5);
	pool.addEmptyEntry(2);
}

// Soulus
var soulus = {
	5: [
		<soulus:gear_oscillating>,
		<soulus:crystal_blood>,
		<soulus:bone_dry>,
		<soulus:bone_ender>,
		<soulus:bone_frozen>,
		<soulus:bone_fungal>,
		<soulus:bone_normal>
	],
	2: [
		<soulus:orb_murky>,
		<soulus:emerald_burnt>,
		<soulus:ingot_endersteel>,
	],
	1: [
		<soulus:orb_murky>.withTag({essence_quantity: 128}),
		<soulus:gear_niobium>,
		<soulus:crystal_dark>
	]
} as IItemStack[][int];

for table in tables {
	val loot = LootTables.getTable(table);
	val pool = loot.addPool("soulus", 0, 5, 1, 1);

	for weight, items in soulus {
		for item in items {
			pool.addItemEntry(item, weight);
		}
	}
	pool.addEmptyEntry(2);
}

// XL Foods
var foods = {
	5 : [
		<xlfoodmod:chickenburger>,
		<xlfoodmod:cheeseburger>,
		<xlfoodmod:hot_dog>,
		<xlfoodmod:sausage>,
		<xlfoodmod:lasagne>,
		<xlfoodmod:bacon>,
		<xlfoodmod:ground_beef>,
		<xlfoodmod:raw_chicken_wing>,
		<xlfoodmod:cooked_chicken_wing>,
		<xlfoodmod:spicy_chicken_wing>,
		<xlfoodmod:hamburger>,
		<xlfoodmod:taco>,
		<xlfoodmod:burrito>,
		<xlfoodmod:kebab>,
		<xlfoodmod:slice_of_pizza>,
		<xlfoodmod:chicken_sandwich>,
		<xlfoodmod:blt_sandwich>,
		<xlfoodmod:icecream_sandwich>,
		<xlfoodmod:pumpkin_stew>,
		<xlfoodmod:vanilla_icecream>,
		<xlfoodmod:oreo_cookie>,
		<xlfoodmod:cheesy_bread>,
		<xlfoodmod:baguette>,
		<xlfoodmod:fried_egg>,
		<xlfoodmod:spaghetti>,
		<xlfoodmod:enchilada>,
		<xlfoodmod:cappuccino>,
		<xlfoodmod:coffee>,
		<xlfoodmod:strawberry_icecream>,
		<xlfoodmod:chocolate_donut>
	],
	2 : [
		<xlfoodmod:speedy_energy_drink>,
		<xlfoodmod:healthy_energy_drink>,
		<xlfoodmod:stealthy_energy_drink>,
		<xlfoodmod:strong_energy_drink>,
		<xlfoodmod:deadly_energy_drink>,
		<xlfoodmod:super_energy_drink>
	]
} as IItemStack[][int];

for table in tables {
	val loot = LootTables.getTable(table);
	val pool = loot.addPool("xlfood", 0, 3, 1, 1);

	for weight, items in foods {
		for item in items {
			pool.addItemEntry(item, weight);
		}
	}
	pool.addEmptyEntry(2);
}
