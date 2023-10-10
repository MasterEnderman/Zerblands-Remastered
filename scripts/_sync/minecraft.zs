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

recipes.remove(<minecraft:elytra>);
recipes.addShaped(<minecraft:elytra>, [
    [<ic2:itemmisc:202>,<ic2:itemmisc:202>,<ic2:itemmisc:202>],
    [<openglider:hang_glider_part>,<openglider:hang_glider_part:2>,<openglider:hang_glider_part:1>],
    [<ic2:itemmisc:202>,<ic2:itemmisc:202>,<ic2:itemmisc:202>]
]);

recipes.addShapeless(<minecraft:beetroot_seeds>,[<minecraft:beetroot>]);
recipes.addShapeless(<minecraft:wheat_seeds>,[<minecraft:wheat>]);
recipes.addShapeless(<minecraft:nether_wart>*9, [<minecraft:nether_wart_block>]);
