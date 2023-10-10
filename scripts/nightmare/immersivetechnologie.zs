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

import mods.immersivetechnology.Boiler;
import mods.immersivetechnology.MeltingCrucible;
import mods.thermalexpansion.Crucible;

recipes.remove(<immersivetech:material>);

Crucible.addRecipe(<liquid:moltensalt> * 100, <harvestcraft:saltitem>, 10000);
MeltingCrucible.addRecipe(<liquid:moltensalt> * 100, <harvestcraft:saltitem>, 9600, 160);
MeltingCrucible.addRecipe(<liquid:stone> * 288, <tconstruct:soil>, 8000, 160);

// oiler.addFuel(ILiquidStack input, int time, double heat);
Boiler.removeFuel(<liquid:gasoline>);
Boiler.removeFuel(<liquid:diesel>);
Boiler.removeFuel(<liquid:biodiesel>);

Boiler.addFuel(<liquid:diesel> * 70, 10, 10);
Boiler.addFuel(<liquid:biodiesel> * 100, 10, 10);
Boiler.addFuel(<liquid:gasoline> * 200, 10, 10);
Boiler.addFuel(<liquid:creosote> * 250, 10, 10);

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
