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

import mods.jei.JEI;
import mods.thermalexpansion.Transposer;

JEI.removeAndHide(<simplyjetpacks:metaitemmods:25>);

recipes.removeByRecipeName("redstonearsenal:gem_crystal_flux");

Transposer.removeFillRecipe(<minecraft:diamond>, <liquid:redstone>);
Transposer.addFillRecipe(<redstonearsenal:material:160>, <enderio:item_material:14>, <liquid:redstone> * 1000, 2500);
