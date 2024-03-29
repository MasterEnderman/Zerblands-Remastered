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

recipes.replaceAllOccurences(<notenoughwands:wandcore>, <notenoughwands:advanced_wandcore>, <*>.only(function(item) {
    return !isNull(item) & !<notenoughwands:advanced_wandcore>.matches(item);
}));

<notenoughwands:potion_wand>.addTooltip(format.red("*Currently useless.*"));
<notenoughwands:potion_wand>.addTooltip(format.red("*Check Guide for more info.*"));
