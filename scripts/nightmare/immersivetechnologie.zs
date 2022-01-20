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

recipes.remove(<immersivetech:material>);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <immersivetech:metal_trash> : [
        [
            [<ore:plateIron>],
            [<extrautils2:trashcan>]
        ]
    ],
    <immersivetech:metal_trash:1> : [
        [
            [<ore:plateIron>],
            [<extrautils2:trashcanfluid>]
        ]
    ],
    <immersivetech:metal_trash:2> : [
        [
            [<ore:plateIron>],
            [<extrautils2:trashcanenergy>]
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
