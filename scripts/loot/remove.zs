import mods.ltt.LootTable;

// Remove enchanted books from fishing
var removeEnchantedBooksFromFishing = true;

// Remove these items
var items = [
	"minecraft:bone",
	"minecraft:bow",
	"minecraft:chainmail_chestplate",
	"minecraft:diamond_chestplate",
	"minecraft:diamond_hoe",
	"minecraft:diamond_horse_armor",
	"minecraft:fishing_rod",
	"minecraft:golden_chestplate",
	"minecraft:golden_horse_armor",
	"minecraft:golden_sword",
	"minecraft:iron_chestplate",
	"minecraft:iron_helmet",
	"minecraft:iron_horse_armor",
	"minecraft:iron_leggings",
	"minecraft:iron_pickaxe",
	"minecraft:iron_sword",
	"minecraft:leather_boots",
	"minecraft:leather_chestplate",
	"minecraft:leather_helmet",
	"minecraft:leather_leggings",
	"minecraft:obsidian",
	"minecraft:saddle",
	"minecraft:spawn_egg",
	"minecraft:stone_axe",
	"minecraft:stone_pickaxe",
	"minecraft:wooden_axe",
	"minecraft:wooden_pickaxe",
	"randomthings:lavaCharm",
 	"minecraft:iron_boots"
] as string[];

// Remove all items from these mods
var mods = [
	"realfilingcabinet",
	"enderio",
	"cyclic",
	"pneumaticcraft"
] as string[];


/*
 *  Implementation of removal
 */
for item in items {
	LootTable.removeGlobalItem(item);
}

for mod in mods {
	LootTable.removeModItem(mod);
}

if (removeEnchantedBooksFromFishing) {
	LootTable.removeEntry("minecraft:gameplay/fishing/treasure", "main", "minecraft:book");
}