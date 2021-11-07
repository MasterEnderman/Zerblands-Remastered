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

import mods.inworldcrafting.FluidToItem;

FluidToItem.transform(<earthworks:item_mud>, <liquid:water>, [<earthworks:item_dirt>], false);
FluidToItem.transform(<earthworks:item_mud>, <liquid:water>, [<contenttweaker:soil>], false);

FluidToItem.transform(<earthworks:item_slaked_lime>, <liquid:water>, [<earthworks:item_quicklime>], false);

FluidToItem.transform(<earthworks:item_lime_plaster> * 8, <liquid:water>, [<earthworks:item_quicklime> * 4,<earthworks:item_sand> * 4], true);
