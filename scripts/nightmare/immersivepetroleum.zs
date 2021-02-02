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

import mods.immersivepetroleum.Distillation;

Distillation.addRecipe([<liquid:lubricant> * 14, <liquid:diesel> * 26, <liquid:gasoline> * 34, <liquid:rocket_fuel> * 8], [<immersivepetroleum:material>], <liquid:oil> * 100, 2048, 1, [0.09]);
Distillation.addRecipe([<liquid:lubricant> * 14, <liquid:diesel> * 26, <liquid:gasoline> * 34, <liquid:rocket_fuel> * 8], [<immersivepetroleum:material>], <liquid:crude_oil> * 100, 2048, 1, [0.11]);
