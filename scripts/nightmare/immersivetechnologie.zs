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
import mods.immersivetechnology.HeatExchanger;
import mods.immersivetechnology.MeltingCrucible;
import mods.thermalexpansion.Crucible;

recipes.remove(<immersivetech:material>);

Crucible.addRecipe(<liquid:moltensalt> * 100, <harvestcraft:saltitem>, 10000);
MeltingCrucible.addRecipe(<liquid:moltensalt> * 100, <harvestcraft:saltitem>, 9600, 160);
MeltingCrucible.addRecipe(<liquid:stone> * 288, <tconstruct:soil>, 8000, 160);

// addRecipe(ILiquidStack outputFluid0, ILiquidStack outputFluid1, ILiquidStack inputFluid0, ILiquidStack inputFluid1, int energy, int time)
HeatExchanger.addRecipe(<liquid:highpressuresteam> * 500, <liquid:lava> * 80, <liquid:steam> * 500, <liquid:pyrotheum> * 80, 640, 10);

// Boiler.addFuel(ILiquidStack input, int time, double heat);
Boiler.removeFuel(<liquid:gasoline>);
Boiler.removeFuel(<liquid:diesel>);
Boiler.removeFuel(<liquid:biodiesel>);

Boiler.addFuel(<liquid:diesel> * 70, 10, 10);
Boiler.addFuel(<liquid:biodiesel> * 100, 10, 10);
Boiler.addFuel(<liquid:gasoline> * 200, 10, 10);
Boiler.addFuel(<liquid:creosote> * 250, 10, 10);

Boiler.addFuel(<liquid:coal> * 100, 10, 10);
Boiler.addFuel(<liquid:refined_fuel> * 80, 10, 20);
Boiler.addFuel(<liquid:refinedcanolaoil> * 80, 10, 10);
Boiler.addFuel(<liquid:empoweredoil> * 80, 10, 20);

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
