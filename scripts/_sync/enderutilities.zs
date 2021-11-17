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

recipes.addShaped(<enderutilities:endercapacitor:3>.withTag({EnderChargeAmount: 1000000000}), [
    [<contenttweaker:creative>,<enderutilities:endercapacitor>,<contenttweaker:creative>],
    [<contenttweaker:creative>,<enderutilities:endercapacitor:1>,<contenttweaker:creative>],
    [<contenttweaker:creative>,<enderutilities:endercapacitor:2>,<contenttweaker:creative>]
]);
