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

import mods.jei.JEI;

JEI.addItem(<simplyjetpacks:metaitemmods:20>);
JEI.addItem(<simplyjetpacks:metaitemmods:21>);
JEI.addItem(<simplyjetpacks:metaitemmods:22>);
JEI.addItem(<simplyjetpacks:metaitemmods:23>);

recipes.removeByRecipeName("simplyjetpacks:upgraderecipeshaped24");
recipes.addShaped(<simplyjetpacks:itemjetpack:25>, [
    [<redstonearsenal:material:224>,<redstonerepository:armor.chestplategelid>,<redstonearsenal:material:224>],
    [<simplyjetpacks:metaitemmods:30>,<simplyjetpacks:itemjetpack:23>,<simplyjetpacks:metaitemmods:30>],
    [<simplyjetpacks:metaitemmods:24>,<simplyjetpacks:itemfluxpack:14>,<simplyjetpacks:metaitemmods:24>]
]);
