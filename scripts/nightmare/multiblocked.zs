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

import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.recipe.RecipeMap;
import mods.multiblocked.functions.ISetupRecipe;
import mods.multiblocked.recipe.RecipeLogic;
import mods.multiblocked.recipe.Recipe;

import scripts.nightmare.mbd_maps.elven_portal.mapPortal;

var definition as ComponentDefinition = MBDRegistry.getDefinition("zerblands:elven_portal");

var elven_portal = definition as ControllerDefinition;

val portalRecipeMap = RecipeMap("portal") as RecipeMap;

RecipeMap.register(portalRecipeMap);

elven_portal.recipeMap = portalRecipeMap;

for output, input in mapPortal {
    logger.logInfo("Adding Elven Portal Recipe for " ~ output.name);
    portalRecipeMap.start()
        .name("mbd_" + toString(output) + "_" + toString(input))
        .duration(5)
        .inputMana(10)
        .inputItems(input)
        .outputItems(output)
        .buildAndRegister();
}

/*
for mana, recipes in mapPortal {
    for output, inputs in recipes {
        for item in inputs {
            logger.logInfo("Adding Recipe for "~output.name);
            portalRecipeMap.start()
                .name("mbd_" + toString(output) + "_" + toString(item))
                .duration(5)
                .inputMana(mana)
                .inputItems(item)
                .outputItems(output)
                .buildAndRegister();
        }
    }
}
*/
