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

recipes.remove(<xreliquary:emperor_chalice>);
calc_atomic(<xreliquary:emperor_chalice>, <evilcraft:bucket_eternal_water>, <xreliquary:void_tear>, <ore:ingotGold>);

recipes.remove(<xreliquary:mob_ingredient:9>);
recipes.addShapeless(<xreliquary:mob_ingredient:9>, [
    <ic2:itemmisc:157>,
    <xreliquary:mob_ingredient:4>,
    <xreliquary:mob_ingredient:3>,
    <xreliquary:mob_ingredient>
]);

recipes.remove(<xreliquary:void_tear>);
recipes.addShapeless(<xreliquary:void_tear>, [
    <minecraft:ghast_tear>,
    <xreliquary:mob_ingredient:4>,
    <evilcraft:ender_tear>,
    <xreliquary:mob_ingredient:11>
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {

};

for key, value in recipeMapShaped {
	var index as int = 0;    
    recipes.remove(key);

    for recipe in value {
        var name as string = "ct_"+toString(key)+"_"+index;
        recipes.addShaped(name, key, recipe);
        index += 1;
    }
}
