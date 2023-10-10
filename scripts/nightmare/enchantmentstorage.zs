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

recipes.remove(<enchantmentstorage:enchantment_storage>);
RuneAltar.addRecipe(<enchantmentstorage:enchantment_storage>, [
    <minecraft:enchanting_table>,
    <actuallyadditions:block_crystal_empowered:4>,
    <minecraft:bookshelf>,
    <randomthings:imbue:2>,
    <enderio:item_xp_transfer>
], 10000);
