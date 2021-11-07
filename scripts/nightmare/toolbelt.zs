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

import scripts.functions.calc_basic;
import scripts.functions.calc_atomic;

recipes.remove(<toolbelt:pouch>);
calc_basic(<toolbelt:pouch>, <minecraft:chest>, <harvestcraft:hardenedleatheritem>);

recipes.remove(<toolbelt:belt>);
calc_atomic(<toolbelt:belt>, <embers:ember_belt>, <toolbelt:pouch>, <toolbelt:pouch>);
