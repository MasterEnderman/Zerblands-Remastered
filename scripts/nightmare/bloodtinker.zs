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

import mods.astralsorcery.Altar;

recipes.remove(<bloodtinker:bloody_thorn_ring>);
Altar.addDiscoveryAltarRecipe("bloody_thorn_ring", <bloodtinker:bloody_thorn_ring>, 200, 200, [
    <minecraft:double_plant:4>,<ore:ingotBloodBronze>,<minecraft:double_plant:4>,
    <ore:ingotBloodBronze>,<embers:ember_ring>,<ore:ingotBloodBronze>,
    <minecraft:double_plant:4>,<ore:ingotBloodBronze>,<minecraft:double_plant:4>
]);
