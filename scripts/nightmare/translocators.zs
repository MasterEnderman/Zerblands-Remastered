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

import scripts.functions.calc_atomic;

recipes.remove(<translocators:translocator_part>);
calc_atomic(<translocators:translocator_part> * 2, <extrautils2:grocket>, <extrautils2:pipe>, <extrautils2:grocket:3>);

recipes.remove(<translocators:translocator_part:1>);
calc_atomic(<translocators:translocator_part:1> * 2, <extrautils2:grocket:2>, <extrautils2:pipe>, <extrautils2:grocket:4>);
