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

import mods.astralsorcery.Grindstone;

Grindstone.addRecipe(<thermalfoundation:material:24>, <architecturecraft:sawblade>);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <architecturecraft:largepulley> : [
        [
            [<ore:stickWood>,<ore:gearWood>,<ore:stickWood>],
            [<ore:gearWood>,<actuallyadditions:block_misc:4>,<ore:gearWood>],
            [<ore:stickWood>,<ore:gearWood>,<ore:stickWood>]
        ]
    ],
    <architecturecraft:sawbench> : [
        [
            [<minecraft:heavy_weighted_pressure_plate>,<architecturecraft:sawblade>,<minecraft:heavy_weighted_pressure_plate>],
            [<earthworks:item_timber>,<architecturecraft:largepulley>,<earthworks:item_timber>],
            [<earthworks:item_timber>,<minecraft:wooden_pressure_plate>,<earthworks:item_timber>]
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
