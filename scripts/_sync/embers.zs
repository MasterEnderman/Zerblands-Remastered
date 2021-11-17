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

recipes.addShaped(<embers:creative_ember_source>, [
    [<embers:block_dawnstone>,<embers:block_dawnstone>,<embers:block_dawnstone>],
    [<embers:block_dawnstone>,<contenttweaker:infinite>,<embers:block_dawnstone>],
    [<embers:block_dawnstone>,<embers:block_dawnstone>,<embers:block_dawnstone>]
]);

<embers:archaic_brick>.addTooltip(format.green("Drops from Ancient Golem."));
