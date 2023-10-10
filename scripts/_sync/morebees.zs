import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.WeightedItemStack;
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

import mods.forestry.Centrifuge as F_Centrifuge;
import mods.thermalexpansion.Centrifuge as TE_Centrifuge;

var mapComb as WeightedItemStack[][IItemStack] = {
    <morebees:combrock> : [
        <forestry:beeswax>%100,
        <minecraft:cobblestone>%90
    ],
    <morebees:combdirt> : [
        <forestry:beeswax>%100,
        <minecraft:dirt>%90
    ],
    <morebees:combwither> : [
        <forestry:refractory_wax>%100,
        <minecraft:bone>%90,
        <minecraft:coal>%70
    ],
    <morebees:combslime> : [
        <forestry:beeswax>%100,
        <minecraft:slime_ball>%90
    ],
    <morebees:combmetallic> : [
        <forestry:beeswax>%80,
        <forestry:honey_drop>%50,
        <morebees:propolismetallic>%50
    ],
    <morebees:combcrystal> : [
        <forestry:beeswax>%80,
        <morebees:propoliscrystal>%50,
        <forestry:honey_drop>%50
    ],
};

for comb, drops in mapComb {
    TE_Centrifuge.addRecipe(drops, comb, null, 2000);
}

F_Centrifuge.addRecipe([
        <forestry:beeswax>%100,
        <minecraft:cobblestone>%90
    ], <morebees:combrock>, 100);
