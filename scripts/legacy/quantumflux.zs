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

import mods.enderio.SagMill;
import mods.jei.JEI;

import scripts.mod_functions.betterExplosion;

JEI.removeAndHide(<quantumflux:magnet>);

betterExplosion(<quantumflux:craftingpiece:6>, <bigreactors:dustgraphite>);
betterExplosion(<quantumflux:craftingpiece:6>, <immersiveengineering:material:18>);

SagMill.addRecipe([<quantumflux:graphitedust>], [100], <quantumflux:craftingpiece:6>, "NONE", 5000);

recipes.remove(<quantumflux:craftingpiece:1>);
recipes.addShaped(<quantumflux:craftingpiece:1> * 4, [
    [<ore:ingotSteel>,<abyssalcraft:crystal:1>,<ore:ingotSteel>],
    [<abyssalcraft:crystal:1>,<contenttweaker:red_core>,<abyssalcraft:crystal:1>],
    [<ore:ingotSteel>,<abyssalcraft:crystal:1>,<ore:ingotSteel>]
]);

recipes.remove(<quantumflux:quibitcluster:1>);
recipes.addShaped(<quantumflux:quibitcluster:1>, [
    [<quantumflux:craftingpiece>,<quantumflux:craftingpiece:1>,<quantumflux:craftingpiece>],
    [<quantumflux:craftingpiece:1>,<quantumflux:craftingpiece>,<quantumflux:craftingpiece:1>],
    [<ore:ingotEnderium>,<ore:ingotEnderium>,<ore:ingotEnderium>]
]);
