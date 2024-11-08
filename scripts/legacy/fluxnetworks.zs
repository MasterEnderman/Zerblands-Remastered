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

import mods.inworldcrafting.FireCrafting;
import mods.thermalexpansion.Transposer;

Transposer.addFillRecipe(<fluxnetworks:flux>, <projecte:item.pe_covalence_dust:1>, <liquid:lava>*100, 6000);

FireCrafting.addRecipe(<fluxnetworks:flux>, <projecte:item.pe_covalence_dust:1>, 200);
