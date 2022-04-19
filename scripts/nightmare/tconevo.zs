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

import mods.bloodmagic.AlchemyTable;

recipes.remove(<tconevo:material>);
AlchemyTable.addRecipe(<tconevo:material>, [
    <contenttweaker:material_part:32>,
    <enderio:item_material:72>,
    <projecte:item.pe_fuel>,
    <rftools:dimensional_shard>,
    <abyssalcraft:essence:2>,
    <botanicadds:gaia_shard>
], 10000, 100, 2);
