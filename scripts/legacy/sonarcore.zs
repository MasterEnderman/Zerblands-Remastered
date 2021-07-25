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

import scripts.functions.calc_basic;

recipes.remove(<sonarcore:reinforcedstoneblock>);
calc_basic(<sonarcore:reinforcedstoneblock>,<ore:cobblestone>,<ore:plankWood>);
calc_basic(<sonarcore:reinforcedstoneblock>*4,<ore:cobblestone>,<ore:logWood>);

recipes.remove(<sonarcore:reinforceddirtblock>);
calc_basic(<sonarcore:reinforceddirtblock>,<ore:dirt>,<ore:plankWood>);
calc_basic(<sonarcore:reinforceddirtblock>*4,<ore:dirt>,<ore:logWood>);
