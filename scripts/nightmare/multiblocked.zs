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
import scripts.nightmare.mbd_maps.workbench.mapWorkbench;

var definition_portal as ComponentDefinition = MBDRegistry.getDefinition("zerblands:elven_portal");

var elven_portal = definition_portal as ControllerDefinition;

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

var definition_workbench as ComponentDefinition = MBDRegistry.getDefinition("zerblands:workbench");

var workbench = definition_workbench as ControllerDefinition;

val workbenchRecipeMap = RecipeMap("workbench") as RecipeMap;

RecipeMap.register(workbenchRecipeMap);

workbench.recipeMap = workbenchRecipeMap;

function getAmount(blueprint as string, item as IItemStack) as int {
    if (blueprint == "rails") { return 16; }
    if (blueprint == "bullet") { return 8; }
    if (item.name == <immersiveengineering:material:26>.name) { return 3; }
    return 1;
}

for blueprint_str, blueprint_map in mapWorkbench {
    for output, items in blueprint_map {
        var amount as int = getAmount(blueprint_str,output);
        logger.logInfo("Adding Workbench Recipe for " ~ amount ~ "x "~ output.name ~ " || Blueprint: " ~ blueprint_str);
        workbenchRecipeMap.start()
            .name("mbd_" + blueprint_str + "_" + toString(output))
            .duration(20)
            .inputItems(items)
            .slotName("output")
            .outputItems(output * amount)
            .slotName("blueprint")
            .inputItems(0.0, <immersiveengineering:blueprint>.withTag({blueprint: blueprint_str}))
            .buildAndRegister();
    }
}

// Just a Note for later; "I disable the slot name filter for now as it causes a crash. They will be re-enabled once this bug is fixed by the CleanroomMC team."
