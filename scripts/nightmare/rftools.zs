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

import mods.astralsorcery.Altar;

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <rftools:machine_base> : [
        [
            [<immersiveengineering:connector:12>,<opencomputers:material:4>,<immersiveengineering:connector:12>],
            [<ore:plateSteel>,<ore:gearSignalum>,<ore:plateSteel>]
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

recipes.remove(<rftools:machine_frame>);
Altar.addConstellationAltarRecipe("rft_machine_frame", <rftools:machine_frame>, 800, 200, [
    <contenttweaker:atomic_module>,
    <contenttweaker:energy_module>,
    <contenttweaker:atomic_module>,
    <actuallyadditions:item_crystal_empowered:1>,
    <contenttweaker:atomic_assembly>,
    <actuallyadditions:item_crystal_empowered:1>,
    <contenttweaker:atomic_module>,
    <rftools:machine_base>,
    <contenttweaker:atomic_module>,
    <contenttweaker:plastic>,
    <contenttweaker:plastic>,
    <contenttweaker:plastic>,
    <contenttweaker:plastic>,
    <botania:elfglass>,
    <botania:elfglass>,
    <botania:elfglass>,
    <botania:elfglass>,
    <botania:elfglass>,
    <botania:elfglass>,
    <botania:elfglass>,
    <botania:elfglass>
]);
