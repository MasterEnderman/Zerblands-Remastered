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

import mods.extrautils2.Resonator;

Resonator.add(<contenttweaker:red_coal>, <evilcraft:blood_waxed_coal>, 1600, false);

recipes.remove(<extrautils2:ingredients:1>);

recipes.remove(<extrautils2:pipe>);
recipes.addShaped(<extrautils2:pipe> * 6, [
    [<ore:ingotAluminum>,<ore:ingotInvar>,<ore:ingotAluminum>],
    [<ore:dustRedstone>,<ore:blockGlassHardened>,<ore:dustRedstone>],
    [<ore:ingotAluminum>,<ore:ingotInvar>,<ore:ingotAluminum>]
]);

recipes.remove(<extrautils2:teleporter:1>);
recipes.addShaped(<extrautils2:teleporter:1>, [
    [<extrautils2:compressedcobblestone:2>,<extrautils2:compressedcobblestone:3>,<extrautils2:compressedcobblestone:2>],
    [<extrautils2:compressedcobblestone:3>,<embers:glimmer_shard>,<extrautils2:compressedcobblestone:3>],
    [<extrautils2:compressedcobblestone:2>,<extrautils2:compressedcobblestone:3>,<extrautils2:compressedcobblestone:2>]
]);

recipes.remove(<extrautils2:quarry>);
recipes.addShaped(<extrautils2:quarry>, [
    [<extrautils2:decorativesolid:3>,<environmentaltech:void_ore_miner_cont_2>,<extrautils2:decorativesolid:3>],
    [<ore:blockEndSteel>,<appliedenergistics2:quantum_link>,<ore:blockEndSteel>],
    [<extrautils2:decorativesolid:3>,<minecraft:end_stone>,<extrautils2:decorativesolid:3>]
]);

recipes.remove(<extrautils2:quarryproxy>);
recipes.addShaped(<extrautils2:quarryproxy>, [
    [<extrautils2:decorativesolid:3>,<environmentaltech:void_res_miner_cont_1>,<extrautils2:decorativesolid:3>],
    [<minecraft:end_rod>,<environmentaltech:laser_core>,<minecraft:end_rod>],
    [<extrautils2:decorativesolid:3>,<environmentaltech:laser_lens>,<extrautils2:decorativesolid:3>]
]);

recipes.remove(<extrautils2:spike_wood>);
recipes.addShaped(<extrautils2:spike_wood>, [
    [null,<extrautils2:sickle_wood>,null],
    [<extrautils2:sickle_wood>,<ore:plankWood>,<extrautils2:sickle_wood>],
    [<ore:plankWood>,<ore:logWood>,<ore:plankWood>]
]);

recipes.addShaped(<extrautils2:decorativebedrock> * 4, [
    [<minecraft:bedrock>,<minecraft:bedrock>],
    [<minecraft:bedrock>,<minecraft:bedrock>]
]);

recipes.addShaped(<extrautils2:decorativebedrock:1> * 4, [
    [<extrautils2:decorativebedrock>,<extrautils2:decorativebedrock>],
    [<extrautils2:decorativebedrock>,<extrautils2:decorativebedrock>]
]);

recipes.addShaped(<extrautils2:decorativebedrock:2> * 4, [
    [<minecraft:cobblestone>,<minecraft:bedrock>,<minecraft:cobblestone>],
    [<minecraft:bedrock>,<minecraft:cobblestone>,<minecraft:bedrock>],
    [<minecraft:cobblestone>,<minecraft:bedrock>,<minecraft:cobblestone>]
]);
