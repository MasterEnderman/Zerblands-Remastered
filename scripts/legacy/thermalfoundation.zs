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

recipes.remove(<thermalfoundation:material:512>);
recipes.addShaped(<thermalfoundation:material:512>, [
    [<actuallyadditions:item_crystal>,<ore:ingotSteel>,<actuallyadditions:item_crystal>],
    [null,<ore:ingotSteel>,null],
    [<actuallyadditions:item_crystal>,<ore:ingotSteel>,<actuallyadditions:item_crystal>]
]);

recipes.remove(<thermalfoundation:material:513>);
recipes.addShaped(<thermalfoundation:material:513>, [
    [null,null,<actuallyadditions:item_crystal>],
    [null,<ore:ingotGold>,null],
    [<actuallyadditions:item_crystal>,null,null]
]);

recipes.remove(<thermalfoundation:material:514>);
recipes.addShaped(<thermalfoundation:material:514>, [
    [null,null,<actuallyadditions:item_crystal>],
    [null,<ore:ingotSilver>,null],
    [<actuallyadditions:item_crystal>,null,null]
]);

recipes.remove(<thermalfoundation:material:515>);
recipes.addShaped(<thermalfoundation:material:515>, [
    [<actuallyadditions:item_crystal>,null,null],
    [null,<ore:ingotElectrum>,null],
    [null,null,<actuallyadditions:item_crystal>]
]);

recipes.addShaped(<thermalfoundation:material:657>, [
    [null,<ore:ingotSteel>,null],
    [<ore:ingotSteel>,<ore:gearSteel>,<ore:ingotSteel>],
    [null,<ore:ingotSteel>,null]
]);

recipes.addShaped(<thermalfoundation:material:640>, [
    [null,<ore:dustRedstone>,null],
    [<ore:ingotSteel>,<thermalfoundation:material:513>,<ore:ingotSteel>],
    [null,<ore:plateGold>,null]
]);
