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

import mods.avaritia.ExtremeCrafting;
import mods.extrautils2.Resonator;
import mods.thermalexpansion.Transposer;
import mods.jei.JEI;

Resonator.remove(<extrautils2:ingredients:4>);
Resonator.add(<extrautils2:ingredients:4>, <evilcraft:blood_waxed_coal>, 1600, true);

Transposer.addFillRecipe(<extrautils2:ingredients:11>, <minecraft:gold_ingot>, <liquid:lava>*250, 66666);

recipes.remove(<extrautils2:ingredients:1>);

recipes.remove(<extrautils2:pipe>);
recipes.addShaped(<extrautils2:pipe> * 6, [
    [<ore:ingotAluminum>,<ore:ingotInvar>,<ore:ingotAluminum>],
    [<ore:dustRedstone>,<ore:blockGlassHardened>,<ore:dustRedstone>],
    [<ore:ingotAluminum>,<ore:ingotInvar>,<ore:ingotAluminum>]
]);

recipes.remove(<extrautils2:lawsword>);
recipes.addShaped(<extrautils2:lawsword>, [
    [<extrautils2:opinium:8>],
    [<extrautils2:opinium:8>],
    [<contenttweaker:ender_token>]
]);

recipes.remove(<extrautils2:fireaxe>);
recipes.addShaped(<extrautils2:fireaxe>, [
    [<extrautils2:opinium:8>,<extrautils2:opinium:8>],
    [<extrautils2:opinium:8>,<contenttweaker:ender_token>],
    [null,<contenttweaker:ender_token>]
]);

recipes.remove(<extrautils2:compoundbow>);
recipes.addShaped(<extrautils2:compoundbow>, [
    [null,<extrautils2:opinium:8>,<minecraft:string>],
    [<contenttweaker:ender_token>,null,<minecraft:string>],
    [null,<extrautils2:opinium:8>,<minecraft:string>]
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

recipes.removeShaped(<extrautils2:angelring>);
recipes.removeShaped(<extrautils2:angelring:1>);
recipes.removeShaped(<extrautils2:angelring:2>);
recipes.removeShaped(<extrautils2:angelring:3>);
recipes.removeShaped(<extrautils2:angelring:4>);
recipes.removeShaped(<extrautils2:angelring:5>);

ExtremeCrafting.addShaped("xu_angel_ring",<extrautils2:angelring>, [
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,<ic2:blockcompactedgenerator:2>,<environmentaltech:solar_cont_6>,<ic2:blockcompactedgenerator:2>,null,null,null],
    [null,null,<projecte:item.pe_klein_star:5>,<botania:flighttiara>,<actuallyadditions:item_wings_of_the_bats>,<botania:flighttiara>,<projecte:item.pe_klein_star:5>,null,null],
    [null,<projecte:item.pe_swrg>,<xreliquary:rending_gale>,<rftools:flight_module>,<astralsorcery:itemcape>,<rftools:flight_module>,<xreliquary:rending_gale>,<projecte:item.pe_swrg>,null],
    [null,<projecte:item.pe_arcana_ring>.noReturn(),<tp:netherstar_block>,<openglider:hang_glider_advanced>,<extrautils2:chickenring:1>,<openglider:hang_glider_advanced>,<tp:netherstar_block>,<projecte:item.pe_arcana_ring>.noReturn(),null],
    [null,<projecte:item.pe_swrg>,<environmentaltech:modifier_creative_flight>,<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}),<gravisuit:advancednuclearnanochestplate>,<extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}}),<environmentaltech:modifier_creative_flight>,<projecte:item.pe_swrg>,null],
    [null,null,<simplyjetpacks:itemjetpack:39>,<simplyjetpacks:itemjetpack:15>,<gravisuit:nucleargravisuit>,<simplyjetpacks:itemjetpack:25>,<simplyjetpacks:itemjetpack:39>,null,null],
    [null,null,null,<gravisuit:gravitationengine>,<gravisuit:gravitationengine>,<gravisuit:gravitationengine>,null,null,null],
    [null,null,null,null,null,null,null,null,null]
]);
