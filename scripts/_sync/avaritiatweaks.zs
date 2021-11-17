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

import mods.avaritia.ExtremeCrafting;

var potato as IIngredient = <botania_tweaks:compressed_tiny_potato_8>;

ExtremeCrafting.remove(<avaritiatweaks:infinitato>);
ExtremeCrafting.addShaped("infinitato",<avaritiatweaks:infinitato>, [
    [potato,potato,potato,potato,potato,potato,potato,potato,potato],
    [potato,potato,potato,potato,potato,potato,potato,potato,potato],
    [potato,potato,potato,<avaritia:resource:5>,potato,<avaritia:resource:5>,potato,potato,potato],
    [potato,potato,potato,potato,potato,potato,potato,potato,potato],
    [potato,potato,<avaritia:resource:5>,potato,potato,potato,<avaritia:resource:5>,potato,potato],
    [potato,potato,potato,<avaritia:resource:5>,<avaritia:resource:5>,<avaritia:resource:5>,potato,potato,potato],
    [potato,potato,potato,potato,potato,potato,potato,potato,potato],
    [potato,potato,potato,potato,potato,potato,potato,potato,potato],
    [potato,potato,potato,potato,potato,potato,potato,potato,potato]
]);
