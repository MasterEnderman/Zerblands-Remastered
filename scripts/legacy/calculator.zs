#packmode legacy

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.functions.toString;
import scripts.functions.getOreDict;
import scripts.functions.getItem;
import scripts.functions.getItemAny;
import scripts.functions.getItemMeta;
import scripts.functions.getItemString;
import scripts.functions.getArrayString;
import scripts.functions.getItemsFromMod;
import scripts.functions.getFluid;
import scripts.functions.getBucket;
import scripts.functions.getBucketDefault;
import scripts.functions.findFirstItemFromMod;

import scripts.functions.calc_basic;
import scripts.functions.calc_scientific;
import scripts.functions.calc_atomic;
import scripts.functions.calc_flawless;

import mods.actuallyadditions.Empowerer;
import mods.ic2.Compressor;
import mods.ic2.Extractor;
import mods.jei.JEI;
import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;

InductionSmelter.addRecipe(<contenttweaker:enrichedgold_ingot>, <contenttweaker:enrichedgold>, <minecraft:sand>, 1500);

recipes.addShaped(<contenttweaker:calculator_plug_base_on>, [
    [null,<contenttweaker:energy_module>,null],
    [<contenttweaker:atomic_assembly>,<actuallyadditions:block_empowerer>,<contenttweaker:atomic_assembly>],
    [<contenttweaker:redstone_ingot_block>,<contenttweaker:redstone_ingot_block>,<contenttweaker:redstone_ingot_block>]
]);

recipes.addShaped(<contenttweaker:calculator_screen>, [
    [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],
    [<ore:cobblestone>,<ore:dustRedstone>,<ore:cobblestone>],
    [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]
]);

recipes.addShaped(<contenttweaker:atomic_assembly>, [
    [<contenttweaker:advanced_assembly>,<contenttweaker:atomic_module>,<contenttweaker:advanced_assembly>],
    [<contenttweaker:atomic_module>,<ore:gemEmerald>,<contenttweaker:atomic_module>],
    [<contenttweaker:advanced_assembly>,<contenttweaker:atomic_module>,<contenttweaker:advanced_assembly>]
]);

recipes.addShaped(<contenttweaker:calculator_assembly>, [
    [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>],
    [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>],
    [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>]
]);

recipes.addShaped(<contenttweaker:advanced_assembly>, [
    [<contenttweaker:enrichedgold_ingot>,<contenttweaker:calculator_assembly>,<contenttweaker:enrichedgold_ingot>],
    [<contenttweaker:calculator_assembly>,<contenttweaker:reinforcediron_ingot>,<contenttweaker:calculator_assembly>],
    [<contenttweaker:enrichedgold_ingot>,<contenttweaker:calculator_assembly>,<contenttweaker:enrichedgold_ingot>]
]);

recipes.addShaped(<contenttweaker:atomic_module>, [
    [<contenttweaker:large_tanzanite>,<contenttweaker:advanced_assembly>,<contenttweaker:large_tanzanite>],
    [<contenttweaker:advanced_assembly>,<contenttweaker:weakened_diamond_block>,<contenttweaker:advanced_assembly>],
    [<contenttweaker:large_tanzanite>,<contenttweaker:advanced_assembly>,<contenttweaker:large_tanzanite>]
]);

recipes.addShaped(<contenttweaker:flawless_assembly>, [
    [<contenttweaker:atomic_assembly>,<contenttweaker:atomic_module>,<contenttweaker:atomic_assembly>],
    [<contenttweaker:atomic_module>,<contenttweaker:flawless_block>,<contenttweaker:atomic_module>],
    [<contenttweaker:atomic_assembly>,<contenttweaker:atomic_module>,<contenttweaker:atomic_assembly>]
]);

recipes.addShaped(<contenttweaker:calculator_locator_on_2>, [
    [null,<environmentaltech:nano_cont_personal_6>,null],
    [<contenttweaker:flawless_assembly>,<contenttweaker:calculator_plug_base_on>,<contenttweaker:flawless_assembly>],
    [<contenttweaker:purifiedobsidian>,<contenttweaker:purifiedobsidian>,<contenttweaker:purifiedobsidian>]
]);

recipes.addShaped(<contenttweaker:calculator>, [
    [<ore:cobblestone>,<contenttweaker:calculator_screen>,<ore:cobblestone>],
    [<minecraft:stone_button>,<contenttweaker:calculator_assembly>,<minecraft:stone_button>],
    [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]
]);

recipes.addShaped(<contenttweaker:scientificcalculator>, [
    [<contenttweaker:enrichedgold_ingot>,<contenttweaker:calculator_screen>,<contenttweaker:enrichedgold_ingot>],
    [<sonarcore:reinforcedstoneblock>,<contenttweaker:calculator_assembly>,<sonarcore:reinforcedstoneblock>],
    [<contenttweaker:enrichedgold_ingot>,<contenttweaker:calculator_assembly>,<contenttweaker:enrichedgold_ingot>]
]);

recipes.addShaped(<contenttweaker:atomiccalculator>, [
    [<sonarcore:reinforcedstoneblock>,<contenttweaker:calculator_screen>,<sonarcore:reinforcedstoneblock>],
    [<ore:gemDiamond>,<contenttweaker:atomic_assembly>,<ore:gemDiamond>],
    [<sonarcore:reinforcedstoneblock>,<ore:gemDiamond>,<sonarcore:reinforcedstoneblock>]
]);

recipes.addShaped(<contenttweaker:flawlesscalculator>, [
    [<contenttweaker:flawlessdiamond>,<contenttweaker:calculator_screen>,<contenttweaker:flawlessdiamond>],
    [<ore:gemDiamond>,<contenttweaker:flawless_assembly>,<ore:gemDiamond>],
    [<contenttweaker:flawlessdiamond>,<contenttweaker:enddiamond>,<contenttweaker:flawlessdiamond>]
]);

recipes.addShaped(<contenttweaker:atomicbinder> * 8, [
    [null,<sonarcore:reinforcedstoneblock>,null],
    [<sonarcore:reinforcedstoneblock>,<contenttweaker:enrichedgold>,<sonarcore:reinforcedstoneblock>],
    [null,<sonarcore:reinforcedstoneblock>,null]
]);

Empowerer.addRecipe(<contenttweaker:electricdiamondanimate>,<contenttweaker:firediamond>,<redstonearsenal:material:64>,<redstonearsenal:material:64>,<redstonearsenal:material:64>,<redstonearsenal:material:64>, 500, 100);

calc_basic(<contenttweaker:enrichedgold>*4,<ore:ingotGold>,<ore:dustRedstone>);
calc_basic(<contenttweaker:reinforcediron_ingot>,<ore:ingotIron>,<sonarcore:reinforcedstoneblock>);
calc_basic(<contenttweaker:enriched_coal>,<minecraft:coal>,<ore:dustRedstone>);
calc_basic(<contenttweaker:enriched_coal>,<contenttweaker:coal_dust>,<contenttweaker:coal_dust>);

// Fix Missing Recipe for Enriched Gold Ingot
calc_basic(<contenttweaker:enrichedgold_ingot>,<ore:ingotGold>,<ore:ingotSteel>);

calc_scientific(<contenttweaker:purified_coal>,<contenttweaker:enriched_coal>,<contenttweaker:enrichedgold_ingot>);
calc_scientific(<contenttweaker:weakeneddiamond>*4,<ore:gemDiamond>,<contenttweaker:reinforcediron_ingot>);
calc_scientific(<contenttweaker:firecoal>,<contenttweaker:enriched_coal>,<minecraft:lava_bucket>);
calc_scientific(<contenttweaker:energy_module>,<minecraft:furnace>,<contenttweaker:purified_coal>);
calc_scientific(<contenttweaker:redstone_ingot>,<ore:ingotIron>,<ore:dustRedstone>);

calc_atomic(<contenttweaker:flawlessdiamond>,<ore:gemDiamond>,<contenttweaker:atomicbinder>,<ore:gemDiamond>);
calc_atomic(<contenttweaker:firediamond>,<minecraft:blaze_rod>,<contenttweaker:flawlessdiamond>,<minecraft:blaze_rod>);
calc_atomic(<contenttweaker:enddiamond>,<minecraft:end_stone>,<contenttweaker:electricdiamondanimate>,<minecraft:obsidian>);

calc_flawless(<contenttweaker:purifiedobsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>);
calc_flawless(<contenttweaker:controlled_fuel>,<contenttweaker:circuit8>,<contenttweaker:enriched_coal>,<contenttweaker:enriched_coal>,<contenttweaker:circuit8>);

recipes.addShapeless(<contenttweaker:coal_dust>*2, [<contenttweaker:enriched_coal>]);

Centrifuge.addRecipe([(<contenttweaker:enrichedgold_ingot> * 4) % 100, (<contenttweaker:small_stone> * 2) % 100], <minecraft:gold_ore>, null, 2000);
Centrifuge.addRecipe([(<contenttweaker:reinforcediron_ingot> * 4) % 100, (<contenttweaker:small_stone> * 2) % 100], <minecraft:iron_ore>, null, 2000);

Centrifuge.addRecipe([<contenttweaker:large_amethyst> % 100, <contenttweaker:shard_amethyst> % 100], <forestry:resource_storage>, null, 2000);
Centrifuge.addRecipe([<contenttweaker:small_amethyst> % 100, <contenttweaker:shard_amethyst> % 100], <forestry:apatite>, null, 2000);

Centrifuge.addRecipe([<contenttweaker:large_tanzanite> % 100, <contenttweaker:shard_tanzanite> % 100], <minecraft:lapis_block>, null, 2000);
Centrifuge.addRecipe([<contenttweaker:small_tanzanite> % 100, <contenttweaker:shard_tanzanite> % 100], <minecraft:dye:4>, null, 2000);

Centrifuge.addRecipe([(<contenttweaker:weakeneddiamond> * 4) % 100, (<minecraft:dye:4> * 2) % 100], <minecraft:diamond>, null, 2000);
Centrifuge.addRecipe([(<contenttweaker:redstone_ingot> * 2) % 100, (<contenttweaker:small_stone> * 2) % 100], <minecraft:redstone>, null, 2000);

Extractor.addRecipe(<contenttweaker:circuit8_dirty>, <appliedenergistics2:material:5>);
Transposer.addFillRecipe(<contenttweaker:circuit8_damaged>, <contenttweaker:circuit8_dirty>, <liquid:water>*100, 300);
Compressor.addRecipe(<contenttweaker:circuit8>,<contenttweaker:circuit8_damaged>);
