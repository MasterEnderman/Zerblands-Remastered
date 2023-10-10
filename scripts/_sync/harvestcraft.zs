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

import mods.forestry.Centrifuge;

for i in 1 to 16 {
    recipes.remove(getItem("harvestcraft","candledeco"+i));
}

Centrifuge.addRecipe([<harvestcraft:honeyitem> % 100, <harvestcraft:beeswaxitem> % 100], <harvestcraft:honeycombitem>, 100);
Centrifuge.addRecipe([(<harvestcraft:beeswaxitem> * 2)% 100], <harvestcraft:waxcombitem>, 100);
