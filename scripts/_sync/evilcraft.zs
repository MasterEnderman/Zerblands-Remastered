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

import mods.evilcraft.BloodInfuser;
import mods.thermalexpansion.Transposer;

BloodInfuser.addRecipe(<evilcraft:hardened_blood>, <liquid:evilcraftblood> * 500, 1, <minecraft:sand>, 100, 1);
Transposer.addFillRecipe(<evilcraft:hardened_blood>, <minecraft:sand>, <liquid:evilcraftblood> * 1000, 2000);
