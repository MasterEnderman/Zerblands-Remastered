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

// Default recipes from config (config will be removed -> different recipes in nightmare mode)

var R as IIngredient = <ore:dustRedstone>;
var D as IIngredient = <ore:gemDiamond>;
var I as IIngredient = <ore:ingotIron>;
var C as IIngredient = <ore:dyeGreen>;
var E as IIngredient = <ore:enderpearl>;
var L as IIngredient = <ore:paneGlass>;

var P as IItemStack = <minecraft:piston>;
var S as IItemStack = <minecraft:iron_bars>;
var O as IItemStack = <minecraft:hopper>;

var H as IItemStack = <pressure:interface>;
var F as IItemStack = <pressure:fluid_interface>;
var T as IItemStack = <pressure:tank_wall>;

var Q as IIngredient = <ore:gemQuartz>;

var W as IItemStack = <minecraft:water_bucket>;

recipes.addShaped(<pressure:interface> * 1, [
    [R,I,L],
    [I,E,I],
    [L,I,R]
]);

recipes.addShaped(<pressure:fluid_interface> * 8, [
    [null,I,null],
    [I,C,I],
    [null,I,null]
]);

recipes.addShaped(<pressure:tank_wall> * 16, [
    [I,I,I],
    [I,C,I],
    [I,I,I]
]);

recipes.addShaped(<pressure:tank_block>, [
    [T,T],
    [T,T]
]);

recipes.addShaped(<pressure:tank_indicator>, [
    [T,L,T],
    [T,L,T]
]);

recipes.addShaped(<pressure:tank_filter>, [
    [T,S,T],
    [S,null,S],
    [T,S,T]
]);

recipes.addShaped(<pressure:tank_controller>, [
    [T,R,T],
    [R,D,R],
    [T,R,T]
]);

recipes.addShaped(<pressure:tank_fluid_input>, [
    [C,F,C],
    [I,null,I],
    [T,I,T]
]);

recipes.addShaped(<pressure:tank_fluid_output_auto>, [
    [C,I,C],
    [I,null,I],
    [T,F,T]
]);

recipes.addShaped(<pressure:tank_fluid_output>, [
    [C,F,C],
    [I,null,I],
    [T,F,T]
]);

recipes.addShaped(<pressure:tank_fluid_access>, [
    [C,F,C],
    [I,null,I],
    [T,F,T]
]);

recipes.addShapeless(<pressure:tank_fluid_input>,[<pressure:tank_fluid_output>]);
recipes.addShapeless(<pressure:tank_fluid_output_auto>,[<pressure:tank_fluid_output>,P]);
recipes.addShapeless(<pressure:tank_fluid_output>,[<pressure:tank_fluid_input>]);

recipes.addShaped(<pressure:tank_sensor>, [
    [T,R,T],
    [R,Q,R],
    [T,R,T]
]);

recipes.addShaped(<pressure:tank_interface>, [
    [T,O,T],
    [I,null,I],
    [T,O,T]
]);

recipes.addShaped(<pressure:tank_data_port>, [
    [T,<opencomputers:cable>,T],
    [<opencomputers:cable>,Q,<opencomputers:cable>],
    [T,<opencomputers:cable>,T]
]);

recipes.addShaped(<pressure:configurator>, [
    [<ore:ingotIron>,<minecraft:bucket>,<ore:ingotIron>],
    [<ore:dyeRed>,<ore:ingotIron>,<ore:dyeGreen>],
    [<ore:dyeBlue>,<ore:ingotIron>,<ore:dustGlowstone>]
]);

recipes.addShaped(<pressure:canister>, [
    [L,I,L],
    [I,L,I],
    [I,I,I]
]);

recipes.addShaped(<pressure:hand_pump>, [
    [R,I,L],
    [<ore:ingotGold>,L,I],
    [<ore:stickWood>,P,R]
]);

recipes.addShaped(<pressure:pipe> * 6, [
    [I,I,I],
    [C,null,C],
    [I,I,I]
]);

recipes.addShaped(<pressure:input>, [
    [I,C,I],
    [I,null,I],
    [I,H,I]
]);

recipes.addShaped(<pressure:output>, [
    [I,H,I],
    [I,null,I],
    [I,C,I]
]);

recipes.addShaped(<pressure:water_source>, [
    [I,I,I],
    [W,null,W],
    [I,I,I]
]);

recipes.addShaped(<pressure:pump>, [
    [I,C,I],
    [P,null,P],
    [I,C,I]
]);

recipes.addShaped(<pressure:drain>, [
    [I,C,S],
    [H,null,S],
    [I,C,S]
]);

recipes.addShaped(<pressure:sluice>, [
    [I,C,P],
    [H,null,S],
    [I,C,P]
]);

recipes.addShaped(<pressure:router>, [
    [I,H,I],
    [H,R,H],
    [I,H,I]
]);

recipes.addShaped(<pressure:check_valve>, [
    [null,I,null],
    [H,<minecraft:lever>,H],
    [null,I,null]
]);

recipes.addShaped(<pressure:pipe_sensor>, [
    [null,I,null],
    [H,<minecraft:redstone_torch>,H],
    [null,I,null]
]);
