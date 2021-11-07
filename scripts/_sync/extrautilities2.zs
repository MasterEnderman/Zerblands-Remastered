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
import mods.jei.JEI;
import mods.thermalexpansion.Transposer;

JEI.removeAndHide(<extrautils2:bagofholding>);
JEI.removeAndHide(<extrautils2:itembuilderswand>);
JEI.removeAndHide(<extrautils2:miner>);
JEI.removeAndHide(<extrautils2:indexerremote>);
JEI.removeAndHide(<extrautils2:chunkloader>);
JEI.removeAndHide(<extrautils2:crafter>);
JEI.removeAndHide(<extrautils2:analogcrafter>);

Transposer.addFillRecipe(<extrautils2:ingredients:11>, <minecraft:gold_ingot>, <liquid:lava>*250, 66666);

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
