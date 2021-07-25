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

import mods.botania.ElvenTrade;
import mods.jei.JEI;

JEI.removeAndHide(<eplus:decorative_book>);
JEI.removeAndHide(<eplus:decorative_book:1>);
JEI.removeAndHide(<eplus:decorative_book:2>);
JEI.removeAndHide(<eplus:decorative_book:3>);
JEI.removeAndHide(<eplus:decorative_book:4>);
JEI.removeAndHide(<eplus:decorative_book:5>);
JEI.removeAndHide(<eplus:decorative_book:6>);
JEI.removeAndHide(<eplus:table_upgrade>);

recipes.remove(<eplus:advanced_table>);
ElvenTrade.addRecipe([<eplus:advanced_table>], [<ic2:blockmachinehv:4>]);
