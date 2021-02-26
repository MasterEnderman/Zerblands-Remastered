#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.LocalizedNameSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

var mapCalculator as string[string] = {
    "atomiccalculator" : "Atomic Calculator",
    "calculator" : "Basic Calculator",
    "flawlesscalculator" : "Flawless Calculator",
    "scientificcalculator" : "Scientific Calculator"
};

for item, local in mapCalculator {
    var newItem as Item = VanillaFactory.createItem(item);
    newItem.textureLocation = ResourceLocation.create("contenttweaker:items/calculator/"+item);
    newItem.setLocalizedNameSupplier(function(itemStack) {return local;});
    newItem.maxStackSize = 1;
    newItem.register();
}

var mapItem as string[string] = {
    "advanced_assembly" : "Advanced Assembly",
    "atomicbinder" : "Atomic Binder",
    "atomic_assembly" : "Atomic Assembly",
    "atomic_module" : "Atomic Module",
    "calculator_assembly" : "Calculator Assembly",
    "calculator_screen" : "Calculator Screen",
    "circuit8" : "Restored Circuit",
    "circuit8_damaged" : "Damaged Circuit",
    "circuit8_dirty" : "Dirty Circuit",
    "coal_dust" : "Coal Dust",
    "controlled_fuel" : "Controlled Fuel",
    "electricdiamondanimate" : "Electric Diamond",
    "enddiamond" : "End Diamond",
    "energy_module" : "Energy Module",
    "enrichedgold" : "Enriched Gold Dust",
    "enrichedgold_ingot" : "Enriched Gold Ingot",
    "enriched_coal" : "Enriched Coal",
    "firecoal" : "Fire Coal",
    "firediamond" : "Fire Diamond",
    "flawlessdiamond" : "Flawless Diamond",
    "flawless_assembly" : "Flawless Assembly",
    "flux_module" : "Flux Module",
    "jump_module" : "Jump Module",
    "large_amethyst" : "Large Amethyst",
    "large_tanzanite" : "Large Tanzanite",
    "module_energy" : "Energy Circuit",
    "module_speed" : "Speed Circuit",
    "module_transfer" : "Transfer Circuit",
    "module_void" : "Void Module",
    "purified_coal" : "Purified Coal",
    "redstone_ingot" : "Redstone Iron Ingot",
    "reinforcediron_ingot" : "Reinforced Iron Ingot",
    "shard_amethyst" : "Amethyst Shard",
    "shard_tanzanite" : "Tanzanite Shard",
    "small_amethyst" : "Small Amethyst",
    "small_stone" : "Stone Dust",
    "small_tanzanite" : "Small Tanzanite",
    "soil" : "Dirt Dust",
    "storage_module" : "Storage Module",
    "warp_module" : "Warp Module",
    "weakeneddiamond" : "Weakened Diamond",

    "calculator_locator_on_2" : "Calculation Locator",
    "calculator_plug_base_on" : "Calculation Base",
};

for item, local in mapItem {
    var newItem as Item = VanillaFactory.createItem(item);
    newItem.textureLocation = ResourceLocation.create("contenttweaker:items/calculator/"+item);
    newItem.setLocalizedNameSupplier(function(itemStack) {return local;});
    newItem.register();
}

var mapBlocks as string[string] = {
    "amethyst_block" : "Amethyst Block",
    "electric_diamond_block" : "Electric Diamond Block",
    "end_diamond_block" : "End Diamond Block",
    "enriched_gold_block" : "Enriched Gold Block",
    "flawless_block" : "Flawless Diamond Block",
    "flawless_fire_block" : "Fire Diamond Block",
    "redstone_ingot_block" : "Redstone Iron Block",
    "reinforced_iron_block" : "Reinforced Iron Block",
    "tanzanite_block" : "Tanzanite Block",
    "weakened_diamond_block" : "Weakened Diamond Block",
    "purifiedobsidian" : "Purified Obsidian",
};

for item, local in mapBlocks {
    var newBlock as Block = VanillaFactory.createBlock(item, <blockmaterial:iron>);
    newBlock.textureLocation = ResourceLocation.create("contenttweaker:blocks/calculator/"+item);
    newBlock.setBlockHardness(5.0);
    newBlock.setBlockResistance(30.0);
    newBlock.setToolClass("pickaxe");
    newBlock.setToolLevel(0);
    newBlock.setBlockSoundType(<soundtype:stone>);
    newBlock.register();
}
