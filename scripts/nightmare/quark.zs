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
    <quark:custom_chest> : [
        [
            [<minecraft:wooden_slab:1>],
            [<ore:chestWood>],
            [<minecraft:wooden_slab:1>]
        ]
    ],
    <quark:custom_chest:1> : [
        [
            [<minecraft:wooden_slab:2>],
            [<ore:chestWood>],
            [<minecraft:wooden_slab:2>]
        ]
    ],
    <quark:custom_chest:2> : [
        [
            [<minecraft:wooden_slab:3>],
            [<ore:chestWood>],
            [<minecraft:wooden_slab:3>]
        ]
    ],
    <quark:custom_chest:3> : [
        [
            [<minecraft:wooden_slab:4>],
            [<ore:chestWood>],
            [<minecraft:wooden_slab:4>]
        ]
    ],
    <quark:custom_chest:4> : [
        [
            [<minecraft:wooden_slab:5>],
            [<ore:chestWood>],
            [<minecraft:wooden_slab:5>]
        ]
    ],
    <quark:rope> : [
        [
            [<contenttweaker:cordage_fiber>,<contenttweaker:cordage_fiber>,<contenttweaker:cordage_fiber>],
            [<contenttweaker:cordage_fiber>,<contenttweaker:cordage_fiber>,<contenttweaker:cordage_fiber>]
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
