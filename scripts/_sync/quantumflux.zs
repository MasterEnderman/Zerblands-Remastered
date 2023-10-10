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

import scripts.mod_functions.betterExplosion;

betterExplosion(<quantumflux:craftingpiece:6>, <quantumflux:graphitedust>);

recipes.addShapeless(<quantumflux:hamcheese>, [<harvestcraft:toastitem>,<harvestcraft:bakedhamitem>,<harvestcraft:cheeseitem>]);

recipes.addShaped(<quantumflux:netherbane>, [
    [null,null,<xreliquary:mob_ingredient:1>],
    [<tconstruct:materials:17>,<xreliquary:mob_ingredient:1>,null],
    [<enderio:item_material:72>,<tconstruct:materials:17>,null]
]);
