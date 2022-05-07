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
import mods.jei.JEI;
import mods.thermalexpansion.Transposer;

JEI.removeAndHide(<extrautils2:bagofholding>);
JEI.removeAndHide(<extrautils2:itembuilderswand>);
JEI.removeAndHide(<extrautils2:itemdestructionwand>);
JEI.removeAndHide(<extrautils2:itemcreativedestructionwand>);
JEI.removeAndHide(<extrautils2:itemcreativebuilderswand>);
JEI.removeAndHide(<extrautils2:miner>);
JEI.removeAndHide(<extrautils2:indexerremote>);
JEI.removeAndHide(<extrautils2:chunkloader>);
JEI.removeAndHide(<extrautils2:crafter>);
JEI.removeAndHide(<extrautils2:analogcrafter>);
JEI.removeAndHide(<extrautils2:ingredients:4>);

Resonator.remove(<extrautils2:ingredients:4>); // fk XU2

Transposer.addFillRecipe(<extrautils2:ingredients:11>, <minecraft:gold_ingot>, <liquid:lava>*250, 66666);

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

var vicio_cape as IItemStack = <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vicio"}});
var lasso_bat as IItemStack = <extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}});
var lasso_ghast as IItemStack = <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}});

ExtremeCrafting.addShaped("xu_angel_ring",<extrautils2:angelring>, [
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,<advancedsolars:ultimatesolarpanel>,<environmentaltech:solar_cont_6>,<advancedsolars:ultimatesolarpanel>,null,null,null],
    [null,null,<projecte:item.pe_klein_star:5>,<botania:flighttiara>,<actuallyadditions:item_wings_of_the_bats>,<botania:flighttiara>,<projecte:item.pe_klein_star:5>,null,null],
    [null,<projecte:item.pe_swrg>,<xreliquary:rending_gale>,<rftools:flight_module>,vicio_cape,<rftools:flight_module>,<xreliquary:rending_gale>,<projecte:item.pe_swrg>,null],
    [null,<projecte:item.pe_arcana_ring>.noReturn(),<actuallyadditions:item_misc:19>,<openglider:hang_glider_advanced>,<extrautils2:chickenring:1>,<openglider:hang_glider_advanced>,<actuallyadditions:item_misc:19>,<projecte:item.pe_arcana_ring>.noReturn(),null],
    [null,<projecte:item.pe_swrg>,<environmentaltech:modifier_creative_flight>,lasso_bat,<gravisuit:advancednuclearnanochestplate>,lasso_ghast,<environmentaltech:modifier_creative_flight>,<projecte:item.pe_swrg>,null],
    [null,null,<simplyjetpacks:itemjetpack:39>,<simplyjetpacks:itemjetpack:15>,<gravisuit:nucleargravisuit>,<simplyjetpacks:itemjetpack:25>,<simplyjetpacks:itemjetpack:39>,null,null],
    [null,null,null,<gravisuit:gravitationengine>,<gravisuit:gravitationengine>,<gravisuit:gravitationengine>,null,null,null],
    [null,null,null,null,null,null,null,null,null]
]);
