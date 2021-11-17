#packmode legacy

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

recipes.remove(<thermalexpansion:frame>);
recipes.addShaped(<thermalexpansion:frame>, [
    [<ore:ingotSteel>,<ore:blockGlass>,<ore:ingotSteel>],
    [<ore:blockGlass>,<ore:gearTin>,<ore:blockGlass>],
    [<ore:ingotSteel>,<ore:blockGlass>,<ore:ingotSteel>]
]);

recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped(<thermalexpansion:frame:64>, [
    [<ore:ingotSteel>,<ore:blockGlass>,<ore:ingotSteel>],
    [<ore:blockGlass>,<ore:gearCopper>,<ore:blockGlass>],
    [<ore:ingotSteel>,<ore:blockGlass>,<ore:ingotSteel>]
]);

recipes.remove(<thermalexpansion:frame:128>);
recipes.addShaped(<thermalexpansion:frame:128>, [
    [<ore:ingotSteel>,<ore:blockGlass>,<ore:ingotSteel>],
    [<ore:blockGlass>,<ore:gearLead>,<ore:blockGlass>],
    [<ore:ingotSteel>,<ore:blockGlass>,<ore:ingotSteel>]
]);

recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped(<thermalexpansion:machine:3>, [
    [null,<enderio:block_alloy_smelter>,null],
    [<ore:gearInvar>,<thermalexpansion:frame>,<ore:gearInvar>],
    [<ore:blockSteel>,<thermalfoundation:material:513>,<ore:blockSteel>]
]);
