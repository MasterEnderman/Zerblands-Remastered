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

import mods.botania.PureDaisy;

recipes.addShaped(<botania:pool:1>, [
    [<avaritiatweaks:gaia_block>,<projecte:item.pe_philosophers_stone>,<avaritiatweaks:gaia_block>],
    [<avaritiatweaks:gaia_block>,<botania:pool:3>,<avaritiatweaks:gaia_block>],
    [<projecte:collector_mk3>,<projecte:relay_mk3>,<projecte:collector_mk3>]
]);

recipes.addShaped(<botania:overgrowthseed> * 4, [
    [<minecraft:wheat_seeds>,<minecraft:wheat_seeds>,<minecraft:wheat_seeds>],
    [<minecraft:wheat_seeds>,<tp:growth_block>,<minecraft:wheat_seeds>],
    [<minecraft:wheat_seeds>,<minecraft:wheat_seeds>,<minecraft:wheat_seeds>]
]);

mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
mods.botania.PureDaisy.addRecipe(<immersiveengineering:treated_wood>, <botania:livingwood>, 100);

mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
mods.botania.PureDaisy.addRecipe(<sonarcore:reinforcedstoneblock>, <botania:livingrock>, 100);
