#modloaded metalchests
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

import mods.jei.JEI;

var removeAndHide as IItemStack[] = [
 // metal chests
    <metalchests:chest_upgrade>,
    <metalchests:chest_upgrade:1>,
    <metalchests:chest_upgrade:2>,
    <metalchests:chest_upgrade:3>,
    <metalchests:chest_upgrade:4>,
    <metalchests:chest_upgrade:5>,
    <metalchests:chest_upgrade:6>,
    <metalchests:chest_upgrade:7>,
    <metalchests:chest_upgrade:8>,
    <metalchests:chest_upgrade:9>,
    <metalchests:chest_upgrade:10>,
    <metalchests:chest_upgrade:11>,
    <metalchests:chest_upgrade:12>,
    <metalchests:chest_upgrade:13>,
    <metalchests:chest_upgrade:14>,
    <metalchests:chest_upgrade:15>,
    <metalchests:chest_upgrade:16>,
    <metalchests:chest_upgrade:17>,
    <metalchests:chest_upgrade:18>,
    <metalchests:chest_upgrade:19>,
    <metalchests:chest_upgrade:20>,
];

for item in removeAndHide {
    JEI.removeAndHide(item);
}

   