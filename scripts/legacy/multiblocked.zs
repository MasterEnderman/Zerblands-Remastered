#packmode legacy

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

var mapPortal as IIngredient[IItemStack] = {
    <botania:manaresource:8> : <botania:manaresource:1> * 2,
    <botania:manaresource:9> : <botania:manaresource:2> * 2,
    <botania:storage:4> : <botania:storage:3> * 2,
    <botanicadds:elven_lapis_block> : <botanicadds:mana_lapis_block> * 2,
    <botanicadds:elven_lapis> : <botanicadds:mana_lapis> * 2,
    <botanicadds:dreamrock> : <botania:livingrock>,
    <botania:elfglass> : <botania:managlass>,
    <botania:quartz:5> : <minecraft:quartz>,
    <botania:storage:2> : <botania:storage> * 2,
    <botania:manaresource:7> : <botania:manaresource> * 2,
    <botania:dreamwood> : <botania:livingwood>,
    <botanicadds:elvenwood_log> : <ore:logWood>,
};

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
