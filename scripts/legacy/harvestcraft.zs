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

import mods.jei.JEI;

mods.jei.JEI.removeAndHide(<harvestcraft:market>);

var wax = <ore:customWax>;
wax.add(<forestry:beeswax>);
wax.add(<forestry:refractory_wax>);
wax.add(<harvestcraft:beeswaxitem>);

recipes.remove(<harvestcraft:hardenedleatheritem>);
recipes.addShapeless(<harvestcraft:hardenedleatheritem>, [<minecraft:leather>,<ore:customWax>]);

recipes.remove(<harvestcraft:freshwateritem>);
recipes.addShaped(<harvestcraft:freshwateritem> * 8, [
    [getBucketDefault("water")]
]);
