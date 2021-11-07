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

import mods.actuallyadditions.Empowerer;

recipes.remove(<notenoughwands:wandcore>);
Empowerer.addRecipe(<notenoughwands:wandcore>, <evilcraft:dark_stick>, <ore:nuggetDawnstone>, <ore:nuggetDawnstone>, <ore:nuggetDawnstone>, <ore:nuggetDawnstone>, 20000, 400, [0.2, 0.4, 0.7]);

recipes.remove(<notenoughwands:advanced_wandcore>);
Empowerer.addRecipe(<notenoughwands:advanced_wandcore>, <notenoughwands:wandcore>, <contenttweaker:alfsteel_nugget>, <contenttweaker:alfsteel_nugget>, <contenttweaker:alfsteel_nugget>, <contenttweaker:alfsteel_nugget>, 20000, 400, [0.2, 0.4, 0.7]);
