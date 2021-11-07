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

import mods.jei.JEI;

JEI.removeAndHide(<rftools:coalgenerator>);
JEI.removeAndHide(<rftools:shape_card:2>);
JEI.removeAndHide(<rftools:shape_card:3>);
JEI.removeAndHide(<rftools:shape_card:4>);
JEI.removeAndHide(<rftools:shape_card:5>);
JEI.removeAndHide(<rftools:shape_card:6>);
JEI.removeAndHide(<rftools:shape_card:7>);
JEI.removeAndHide(<rftools:shape_card:8>);

recipes.removeByRecipeName("rftools:tablet_with_storage_module_s");

recipes.remove(<rftools:dimensional_shard>);
