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

import mods.jei.JEI;

for item in loadedMods["danknull"].items {
    recipes.remove(item);
}

JEI.removeAndHide(<danknull:danknull_dock>);

var mapPanel as IIngredient[][IItemStack] = {
    <danknull:dank_null_panel_0> : [<minecraft:stained_glass_pane:14>,<ore:blockRedstone>],
    <danknull:dank_null_panel_1> : [<minecraft:stained_glass_pane:11>,<ore:blockLapis>],
    <danknull:dank_null_panel_2> : [<minecraft:stained_glass_pane>,<ore:blockIron>],
    <danknull:dank_null_panel_3> : [<minecraft:stained_glass_pane:4>,<ore:blockGold>],
    <danknull:dank_null_panel_4> : [<minecraft:stained_glass_pane:9>,<ore:blockDiamond>],
    <danknull:dank_null_panel_5> : [<minecraft:stained_glass_pane:5>,<ore:blockEmerald>],
};

for panel, data in mapPanel {
    var glass as IIngredient = data[0];
    var filler as IIngredient = data[1];

    recipes.remove(panel);
    recipes.addShaped(panel, [
        [filler,<ore:blockCoal>,filler],
        [<ore:blockCoal>,glass,<ore:blockCoal>],
        [filler,<ore:blockCoal>,filler]
    ]);
}

var mapDank as IItemStack[][IItemStack] = {
    <danknull:dank_null_0> : [<enderio:block_vacuum_chest>,<danknull:dank_null_panel_0>],
    <danknull:dank_null_1> : [<danknull:dank_null_0>,<danknull:dank_null_panel_1>],
    <danknull:dank_null_2> : [<danknull:dank_null_1>,<danknull:dank_null_panel_2>],
    <danknull:dank_null_3> : [<danknull:dank_null_2>,<danknull:dank_null_panel_3>],
    <danknull:dank_null_4> : [<danknull:dank_null_3>,<danknull:dank_null_panel_4>],
    <danknull:dank_null_5> : [<danknull:dank_null_4>,<danknull:dank_null_panel_5>],
};

for dank, data in mapDank {
    var center as IItemStack = data[0];
    var panel as IItemStack = data[1];

    recipes.remove(dank);
    recipes.addShaped(dank, [
        [panel,panel,panel],
        [panel,center,panel],
        [panel,panel,panel]
    ]);
}

<danknull:dank_null_0>.addTooltip(format.red("*Items are voided when upgraded to the next tier.*"));
<danknull:dank_null_1>.addTooltip(format.red("*Items are voided when upgraded to the next tier.*"));
<danknull:dank_null_2>.addTooltip(format.red("*Items are voided when upgraded to the next tier.*"));
<danknull:dank_null_3>.addTooltip(format.red("*Items are voided when upgraded to the next tier.*"));
<danknull:dank_null_4>.addTooltip(format.red("*Items are voided when upgraded to the next tier.*"));
