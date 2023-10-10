#priority -1000

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
import scripts.functions.getFluid;
import scripts.functions.getBucket;
import scripts.functions.getBucketDefault;

var replaceAll as IIngredient[][IItemStack] = {
    <minecraft:trapped_chest> : [<minecraft:trapped_chest> | <quark:custom_chest_trap> | <quark:custom_chest_trap:1> | <quark:custom_chest_trap:2> | <quark:custom_chest_trap:3> | <quark:custom_chest_trap:4>],
    <thermalfoundation:material:772> : [<ore:dustSaltpeter>],
    <abyssalcraft:nitre> : [<ore:dustSaltpeter>],
};

/*
recipes.replaceAllOccurences(<minecraft:dye:4>, <ore:dyeBlue>, <*>.only(function(item) {
    return !isNull(item) & !<minecraft:lapis_block>.matches(item);
}));
*/

for old, new in replaceAll {
    for entry in new {
        recipes.replaceAllOccurences(old, entry);
    }
}
