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

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <tp:cobblegen_block> : [
        [
            [<hammercore:iron_bordered_cobblestone>,<botania:rune>,<hammercore:iron_bordered_cobblestone>],
            [<hammercore:iron_bordered_cobblestone>,<extrautils2:decorativeglass:5>,<hammercore:iron_bordered_cobblestone>],
            [<hammercore:iron_bordered_cobblestone>,<botania:rune:1>,<hammercore:iron_bordered_cobblestone>]
        ],
        [
            [<hammercore:iron_bordered_cobblestone>,<botania:rune:1>,<hammercore:iron_bordered_cobblestone>],
            [<hammercore:iron_bordered_cobblestone>,<extrautils2:decorativeglass:5>,<hammercore:iron_bordered_cobblestone>],
            [<hammercore:iron_bordered_cobblestone>,<botania:rune>,<hammercore:iron_bordered_cobblestone>]
        ]
    ],
    <tp:iron_cobblegen_block> : [
        [
            [<hammercore:quartz_bordered_cobblestone>,<tp:cobblegen_block>,<hammercore:quartz_bordered_cobblestone>],
            [<hammercore:quartz_bordered_cobblestone>,<minecraft:quartz>,<hammercore:quartz_bordered_cobblestone>],
            [<hammercore:quartz_bordered_cobblestone>,<tp:cobblegen_block>,<hammercore:quartz_bordered_cobblestone>]
        ]
    ],
    <tp:diamond_cobblegen_block> : [
        [
            [<hammercore:diamond_bordered_cobblestone>,<tp:iron_cobblegen_block>,<hammercore:diamond_bordered_cobblestone>],
            [<hammercore:diamond_bordered_cobblestone>,<botania:quartz:1>,<hammercore:diamond_bordered_cobblestone>],
            [<hammercore:diamond_bordered_cobblestone>,<tp:iron_cobblegen_block>,<hammercore:diamond_bordered_cobblestone>]
        ]
    ],
    <tp:blaze_cobblegen_block> : [
        [
            [<hammercore:gold_bordered_cobblestone>,<tp:diamond_cobblegen_block>,<hammercore:gold_bordered_cobblestone>],
            [<hammercore:gold_bordered_cobblestone>,<botania:quartz:2>,<hammercore:gold_bordered_cobblestone>],
            [<hammercore:gold_bordered_cobblestone>,<tp:diamond_cobblegen_block>,<hammercore:gold_bordered_cobblestone>]
        ]
    ],
    <tp:emerald_cobblegen_block> : [
        [
            [<hammercore:emerald_bordered_cobblestone>,<tp:blaze_cobblegen_block>,<hammercore:emerald_bordered_cobblestone>],
            [<hammercore:emerald_bordered_cobblestone>,<botania:quartz:5>,<hammercore:emerald_bordered_cobblestone>],
            [<hammercore:emerald_bordered_cobblestone>,<tp:blaze_cobblegen_block>,<hammercore:emerald_bordered_cobblestone>]
        ]
    ],
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
