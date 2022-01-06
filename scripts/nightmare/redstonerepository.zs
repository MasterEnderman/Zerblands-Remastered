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

import mods.forestry.Carpenter;
import mods.thermalexpansion.Transposer;

Transposer.removeFillRecipe(<minecraft:emerald>, <liquid:cryotheum>);
Transposer.addFillRecipe(<redstonerepository:material:5>, <enderio:item_material:15>, <liquid:cryotheum> * 1000, 2500);

Transposer.removeFillRecipe(<minecraft:string>, <liquid:redstone>);
Transposer.addFillRecipe(<redstonerepository:material:8>, <randomthings:ingredient:12>, <liquid:redstone> * 200, 2500);

recipes.remove(<redstonerepository:material:7>);
Carpenter.addRecipe(<redstonerepository:material:7>, [
    [<ore:plateGelidEnderium>,<ore:gearGelidEnderium>,<ore:plateGelidEnderium>],
    [<ore:gearGelidEnderium>,<draconicevolution:draconic_core>,<ore:gearGelidEnderium>],
    [<ore:plateGelidEnderium>,<ore:gearGelidEnderium>,<ore:plateGelidEnderium>]
], 60, <liquid:empoweredoil> * 1000, <ic2:itembatlamacrystal>);
