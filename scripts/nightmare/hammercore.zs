#packmode nightmare

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

import scripts.functions.calc_scientific;

var mapCobble as IItemStack[IItemStack] = {
    <hammercore:iron_bordered_cobblestone> : <minecraft:iron_ingot>,
    <hammercore:gold_bordered_cobblestone> : <minecraft:gold_ingot>,
    <hammercore:diamond_bordered_cobblestone> : <minecraft:diamond>,
    <hammercore:emerald_bordered_cobblestone> : <minecraft:emerald>,
    <hammercore:quartz_bordered_cobblestone> : <minecraft:quartz>,
};

for block, item in mapCobble {
    calc_scientific(block,<minecraft:cobblestone>,item);
}
