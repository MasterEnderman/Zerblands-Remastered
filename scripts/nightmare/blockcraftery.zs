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

import scripts.functions.calc_basic;

recipes.remove(<blockcraftery:editable_block>);
recipes.addShaped(<blockcraftery:editable_block> * 4, [
    [<bibliocraft:framingboard>,<bibliocraft:framingboard>,<bibliocraft:framingboard>],
    [<bibliocraft:framingboard>,<ic2:blockscaffold>,<bibliocraft:framingboard>],
    [<bibliocraft:framingboard>,<bibliocraft:framingboard>,<bibliocraft:framingboard>]
]);

recipes.remove(<blockcraftery:editable_block_reinforced>);
calc_basic(<blockcraftery:editable_block_reinforced>,<blockcraftery:editable_block>,<ore:nuggetIron>);
