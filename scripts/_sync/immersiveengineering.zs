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

recipes.remove(<immersiveengineering:material:14>);
recipes.addShaped(<immersiveengineering:material:14>,[[null,null,<ore:ingotSteel>],[null,<ore:ingotSteel>,null],[<ore:ingotSteel>,null,null]]);


recipes.addShapeless(<immersiveengineering:seed>, [<ic2:itemmisc:158>,<ic2:itemmisc:158>]);
