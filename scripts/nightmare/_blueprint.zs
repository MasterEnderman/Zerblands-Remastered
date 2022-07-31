#packmode nightmare
#norun

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

import mods.immersiveengineering.Blueprint;

var COMPONENT as string = "component";

var mapBlueprint as IIngredient[][IItemStack][string] = {};

for category, data in mapBlueprint {
    for output, recipe in data {
        recipes.remove(output);
        Blueprint.addRecipe(category, output, recipe);
    }
}
