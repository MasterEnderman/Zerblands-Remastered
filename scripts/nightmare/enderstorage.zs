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

import scripts.functions.calc_atomic;

var mapAtomic as IIngredient[][IItemStack] = {
    <enderstorage:ender_pouch> : [<botania:enderhand>,<toolbelt:pouch>,<contenttweaker:enddiamond>],
    <enderstorage:ender_storage> : [<minecraft:ender_chest>,<bloodmagic:teleposer>,<contenttweaker:enddiamond>],
    <enderstorage:ender_storage:1> : [<enderutilities:enderbucket>,<bloodmagic:teleposer>,<contenttweaker:enddiamond>],
};

for item, recipe in mapAtomic {
    var one as IIngredient = recipe[0];
    var two as IIngredient = recipe[1];
    var three as IIngredient = recipe[2];

    recipes.remove(item);
    calc_atomic(item, one, two, three);
}
