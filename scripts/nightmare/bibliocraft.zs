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

import mods.jei.JEI;

import scripts.functions.calc_basic;

recipes.remove(<bibliocraft:framingsheet>);
recipes.addShaped(<bibliocraft:framingsheet> * 2, [
    [<earthworks:tool_saw:*>.transformDamage(3)],
    [<ore:slabWood>]
]);

recipes.remove(<bibliocraft:framingboard>);
recipes.addShaped(<bibliocraft:framingboard> * 2, [
    [<earthworks:tool_saw:*>.transformDamage(3)],
    [<bibliocraft:framingsheet>]
]);

recipes.remove(<bibliocraft:bibliodrill>);
calc_basic(<bibliocraft:bibliodrill>,<bibliocraft:handdrill>,<contenttweaker:electric_motor>);

recipes.remove(<bibliocraft:furniturepaneler:6>);
calc_basic(<bibliocraft:furniturepaneler:6>,<minecraft:crafting_table>,<storagedrawers:customtrim>);

recipes.remove(<bibliocraft:compass>);
calc_basic(<bibliocraft:compass>, <minecraft:compass>, <ore:ingotAluminumBrass>);

var preFramed as string[] = [
    "bookcase",
    "shelf",
    "furniturepaneler",
    "framedchest",
    "fancysign",
    "fancyworkbench",
    "potionshelf",
    "toolrack",
    "label",
    "desk",
    "table",
    "seat",
    "clock",
    "case",
    "mapframe",
    "paintingframeflat",
    "paintingframesimple",
    "paintingframemiddle",
    "paintingframefancy",
    "paintingframeborderless",
    "armorstand",
    "seatback1",
    "seatback2",
    "seatback3",
    "seatback4",
    "seatback5",
];

var mod as string = "bibliocraft";

var subid as int[] = [0,1,2,3,4,5];

for entry in preFramed {
    for x in subid {
        var item as IItemStack = getItemMeta(mod, entry, x);
        JEI.removeAndHide(item);
    }
}

JEI.removeAndHide(<bibliocraft:framingsaw>);
