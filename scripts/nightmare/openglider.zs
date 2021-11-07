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

var wingBat as IIngredient = <actuallyadditions:item_misc:15>|<xreliquary:mob_ingredient:5>;

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <openglider:hang_glider_part:2> : [
        [
            [null,<botania:rune:3>,null],
            [<ore:stickIron>,<simplyjetpacks:metaitem:4>,<ore:stickIron>],
            [<ore:stickIron>,<actuallyadditions:item_misc:7>,<ore:stickIron>]
        ]
    ],
    <openglider:hang_glider_part> : [
        [
            [null,null,<ore:stickIron>],
            [null,<ore:stickIron>,wingBat],
            [<ore:stickIron>,wingBat,wingBat]
        ]
    ],
    <openglider:hang_glider_part:1> : [
        [
            [<ore:stickIron>,null,null],
            [wingBat,<ore:stickIron>,null],
            [wingBat,wingBat,<ore:stickIron>]
        ]
    ]
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
