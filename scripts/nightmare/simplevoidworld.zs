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

import mods.botania.RuneAltar;

recipes.remove(<simplevoidworld:portal>);
RuneAltar.addRecipe(<simplevoidworld:portal>, [
    <xreliquary:void_tear>,
    <actuallyadditions:block_crystal:3>,
    <rftools:infused_enderpearl>,
    <botania:quartz:3>,
    <enderio:item_ender_food>
], 50000);
