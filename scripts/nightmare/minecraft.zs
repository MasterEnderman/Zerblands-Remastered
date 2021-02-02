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

furnace.remove(<minecraft:coal:1>);
furnace.addRecipe(<forestry:ash>, <ore:logWood>);

var recipeMapShaped as IIngredient[][][IItemStack] = {
    <minecraft:chest> : [
        [<tconstruct:pattern>,<tconstruct:pattern>,<tconstruct:pattern>],
        [<tconstruct:pattern>,<minecraft:stone_button>,<tconstruct:pattern>],
        [<tconstruct:pattern>,<tconstruct:pattern>,<tconstruct:pattern>]
    ],
    <minecraft:furnace> : [
        [<extrautils2:compressedcobblestone>,<extrautils2:compressedcobblestone>,<extrautils2:compressedcobblestone>],
        [<extrautils2:compressedcobblestone>,<minecraft:coal>|<minecraft:coal:1>,<extrautils2:compressedcobblestone>],
        [<extrautils2:compressedcobblestone>,<extrautils2:compressedcobblestone>,<extrautils2:compressedcobblestone>]
    ]
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}
