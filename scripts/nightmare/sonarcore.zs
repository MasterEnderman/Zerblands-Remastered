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

recipes.remove(<sonarcore:reinforcedstoneblock>);
calc_basic(<sonarcore:reinforcedstoneblock>,<earthworks:block_dry_stone>,<immersiveengineering:treated_wood>);
calc_basic(<sonarcore:reinforcedstoneblock> * 4,<earthworks:block_dry_stone>,<botania:livingwood>);

recipes.remove(<sonarcore:reinforceddirtblock>);
calc_basic(<sonarcore:reinforceddirtblock>,<minecraft:dirt>,<immersiveengineering:treated_wood>);
calc_basic(<sonarcore:reinforceddirtblock> * 4,<tconstruct:deco_ground>,<botania:livingwood>);
