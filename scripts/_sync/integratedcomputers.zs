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

recipes.remove(<ocid:part_computer_writer_item>);
recipes.addShaped(<ocid:part_computer_writer_item>, [
    [<opencomputers:material:8>],
    [<integrateddynamics:variable_transformer>],
    [<opencomputers:component:3>]
]);

recipes.remove(<ocid:part_computer_reader_item>);
recipes.addShaped(<ocid:part_computer_reader_item>, [
    [<opencomputers:material:8>],
    [<integrateddynamics:variable_transformer:1>],
    [<opencomputers:component:3>]
]);
