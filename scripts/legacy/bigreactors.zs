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

import mods.actuallyadditions.Empowerer;
import mods.enderio.AlloySmelter;

mods.actuallyadditions.Empowerer.addRecipe(<bigreactors:ingotcyanite>,<bigreactors:ingotyellorium>,<bigreactors:ingotgraphite>,<bigreactors:ingotgraphite>,<bigreactors:ingotgraphite>,<bigreactors:ingotgraphite>, 1000, 100);

AlloySmelter.addRecipe(<bigreactors:ingotgraphite> * 2, [<ore:dustHOPGraphite>, <appliedenergistics2:material:45>, <ic2:itemmisc:8>], 5000);
AlloySmelter.addRecipe(<bigreactors:ingotgraphite> * 2, [<quantumflux:graphitedust>, <appliedenergistics2:material:45>, <ic2:itemmisc:8>], 5000);

recipes.remove(<bigreactors:reactorcasingcores>);
recipes.addShaped(<bigreactors:reactorcasingcores>, [
    [<ore:ingotSteel>,<ore:ingotGraphite>,<ore:ingotSteel>],
    [<ore:ingotElectrum>,<ic2:itemmisc:452>,<ore:ingotElectrum>],
    [<ore:ingotSteel>,<ore:ingotGraphite>,<ore:ingotSteel>]
]);

recipes.remove(<bigreactors:reactorcasing>);
recipes.addShaped(<bigreactors:reactorcasing> * 4, [
    [<ore:ingotSteel>,<ore:ingotLead>,<ore:ingotSteel>],
    [<ore:ingotLead>,<bigreactors:reactorcasingcores>,<ore:ingotLead>],
    [<ore:ingotSteel>,<ore:ingotLead>,<ore:ingotSteel>]
]);

recipes.remove(<bigreactors:reactorfuelrod>);
recipes.addShaped(<bigreactors:reactorfuelrod>, [
    [<ore:ingotSteel>,<ore:ingotGraphite>,<ore:ingotSteel>],
    [<ore:blockGlassHardened>,<ore:ingotYellorium>,<ore:blockGlassHardened>],
    [<ore:ingotSteel>,<ore:ingotGraphite>,<ore:ingotSteel>]
]);

recipes.remove(<bigreactors:turbinehousingcores>);
recipes.addShaped(<bigreactors:turbinehousingcores>, [
    [<ore:ingotSteel>,<ore:ingotGraphite>,<ore:ingotSteel>],
    [<ore:ingotElectrum>,<appliedenergistics2:material:24>,<ore:ingotElectrum>],
    [<ore:ingotSteel>,<ore:ingotGraphite>,<ore:ingotSteel>]
]);

recipes.remove(<bigreactors:turbinehousing>);
recipes.addShaped(<bigreactors:turbinehousing> * 4, [
    [<ore:ingotSteel>,<ore:ingotInvar>,<ore:ingotSteel>],
    [<ore:ingotInvar>,<bigreactors:turbinehousingcores>,<ore:ingotInvar>],
    [<ore:ingotSteel>,<ore:ingotInvar>,<ore:ingotSteel>]
]);

recipes.remove(<bigreactors:turbinerotorshaft>);
recipes.addShaped(<bigreactors:turbinerotorshaft>, [
    [<ore:ingotSteel>],
    [<ore:ingotCyanite>],
    [<ore:ingotSteel>]
]);

recipes.remove(<bigreactors:turbinerotorblade>);
recipes.addShaped(<bigreactors:turbinerotorblade>, [
    [<ore:ingotCyanite>,<ore:ingotSteel>,<ore:ingotSteel>]
]);
