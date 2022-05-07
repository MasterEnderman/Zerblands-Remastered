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

recipes.remove(<projecte:item.pe_matter:1>);
recipes.addShapeless(<projecte:item.pe_matter:1> * 4, [<projecte:matter_block:1>]);
recipes.addShaped(<projecte:item.pe_matter:1>, [
    [<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>],
    [<projecte:matter_block>,<contenttweaker:supermassiv>,<projecte:matter_block>],
    [<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>]
]);

recipes.remove(<projecte:item.pe_matter>);
recipes.addShaped(<projecte:item.pe_matter>, [
    [<projecte:fuel_block:2>,<projecte:fuel_block:2>,<projecte:fuel_block:2>],
    [<projecte:fuel_block:2>,<appliedenergistics2:material:47>,<projecte:fuel_block:2>],
    [<projecte:fuel_block:2>,<projecte:fuel_block:2>,<projecte:fuel_block:2>]
]);

recipes.remove(<projecte:item.pe_tome>);
recipes.addShaped(<projecte:item.pe_tome>, [
    [<projecte:item.pe_covalence_dust:2>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust>],
    [<projecte:item.pe_klein_star:5>,<minecraft:bedrock>,<projecte:item.pe_klein_star:5>],
    [<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:2>]
]);
