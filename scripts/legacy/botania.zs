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

import mods.bloodmagic.BloodAltar;
import mods.botania.ManaInfusion;
import mods.botania.PureDaisy;
import mods.thermalexpansion.Sawmill;

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

recipes.remove(<botania:alfheimportal>);
recipes.addShaped(<botania:alfheimportal>, [
    [<botania:livingwood>,<botania:manaresource:4>,<botania:livingwood>],
    [<abyssalcraft:dreadplate>,<botania:manaresource:4>,<abyssalcraft:dreadplate>],
    [<botania:livingwood>,<botania:manaresource:4>,<botania:livingwood>]
]);

recipes.remove(<botania:pool:2>);
recipes.addShaped(<botania:pool:2>, [
    [<botania:livingrock>,null,<botania:livingrock>],
    [<botania:livingrock>,<botania:livingrock>,<botania:livingrock>]
]);

recipes.remove(<botania:pool>);
ManaInfusion.addInfusion(<botania:pool>, <botania:pool:2>, 10000);

ManaInfusion.removeRecipe(<botania:manaresource>);
ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotSteel>, 3000);

ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.addInfusion(<botania:storage>, <ore:blockSteel>, 27000);

PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.addRecipe(<immersiveengineering:treated_wood>, <botania:livingwood>, 100);

PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.addRecipe(<sonarcore:reinforcedstoneblock>, <botania:livingrock>, 100);

BloodAltar.addRecipe(<botania:blacklotus>, <actuallyadditions:block_black_lotus>, 1, 2000, 20, 20);

Sawmill.addRecipe(<botania:dreamwood:1>*4, <botania:dreamwood>, 400);
Sawmill.addRecipe(<botania:manaresource:13>*2, <botania:dreamwood:1>, 400);
Sawmill.addRecipe(<botania:livingwood:1>*4, <botania:livingwood>, 400);
Sawmill.addRecipe(<botania:manaresource:3>*2, <botania:livingwood:1>, 400);
