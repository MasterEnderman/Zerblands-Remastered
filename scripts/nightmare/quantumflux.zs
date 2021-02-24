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

var listQuibit as IItemStack[] = [
    <quantumflux:quibitcluster:1>,
    <quantumflux:quibitcluster:2>,
    <quantumflux:quibitcluster:3>,
    <quantumflux:quibitcluster:4>,
    <quantumflux:quibitcluster:5>,
];

var index as int = 1;

while index < 5 {
    recipes.remove(listQuibit[index]);
    recipes.addShaped(listQuibit[index], [
        [listQuibit[index - 1],<enderio:item_capacitor_stellar>,listQuibit[index - 1]],
        [<enderio:item_capacitor_stellar>,<quantumflux:craftingpiece:2>,<enderio:item_capacitor_stellar>],
        [listQuibit[index - 1],<enderio:item_capacitor_stellar>,listQuibit[index - 1]]
    ]);
    index += 1;
}
