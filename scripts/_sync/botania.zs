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

import mods.chisel.Carving;

var chiselMap as IItemStack[][string] = {
    "ct_azulejo" : [
        <botania:custombrick>,
        <botania:custombrick:1>,
        <botania:custombrick:2>,
        <botania:custombrick:3>,
        <botania:custombrick:4>,
        <botania:custombrick:5>,
        <botania:custombrick:6>,
        <botania:custombrick:7>,
        <botania:custombrick:8>,
        <botania:custombrick:9>,
        <botania:custombrick:10>,
        <botania:custombrick:11>,
        <botania:custombrick:12>,
        <botania:custombrick:13>,
        <botania:custombrick:14>,
        <botania:custombrick:15>,
    ]
};

for group, items in chiselMap {
    Carving.addGroup(group);

    for item in items {
        recipes.remove(item);
        Carving.addVariation(group, item);
    }
}

recipes.addShapeless(<botania:custombrick>,[<ore:blockQuartz>,<ore:dyeBlue>]);
