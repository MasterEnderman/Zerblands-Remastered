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

import mods.jei.JEI;

JEI.removeAndHide(<harvestcraft:market>);
JEI.removeAndHide(<harvestcraft:shippingbin>);

recipes.remove(<harvestcraft:freshwateritem>);
recipes.addShaped(<harvestcraft:freshwateritem> * 8, [
    [getBucketDefault("water")]
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <harvestcraft:presser> : [
        [
            [<enderio:item_alloy_endergy_ingot>,<enderio:item_alloy_endergy_ingot>,<enderio:item_alloy_endergy_ingot>],
            [<enderio:item_alloy_endergy_ingot>,<contenttweaker:cutting_head>,<enderio:item_alloy_endergy_ingot>],
            [<immersiveengineering:treated_wood>,<minecraft:furnace>,<immersiveengineering:treated_wood>]
        ]
    ],
    <harvestcraft:apiary> : [
        [
            [<ore:plankTreatedWood>,<forestry:frame_untreated>,<ore:plankTreatedWood>],
            [<ore:plankTreatedWood>,<actuallyadditions:block_misc:4>,<ore:plankTreatedWood>],
            [<ore:plankTreatedWood>,<forestry:frame_untreated>,<ore:plankTreatedWood>]
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
