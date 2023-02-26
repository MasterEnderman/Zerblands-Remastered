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

import scripts.functions.calc_basic;

recipes.remove(<jecalculation:item_calculator>);
calc_basic(<jecalculation:item_calculator>,<jecalculation:item_calculator:1>,<opencomputers:upgrade:11>);

recipes.remove(<jecalculation:item_calculator:1>);
calc_basic(<jecalculation:item_calculator:1>,<contenttweaker:calculator_screen>,<contenttweaker:calculator_assembly>);
