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

import mods.actuallyadditions.Empowerer;
import mods.forestry.Carpenter;
import mods.jei.JEI;

JEI.removeAndHide(<forestry:still>);

furnace.addRecipe(<forestry:ash>, <ore:logWood>);

recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped(<forestry:sturdy_machine>, [
    [<ore:ingotInvar>,<ore:plateBronze>,<ore:ingotInvar>],
    [<ore:plateBronze>,<ore:gearConstantan>,<ore:plateBronze>],
    [<ore:ingotInvar>,<ore:plateBronze>,<ore:ingotInvar>]
]);

var droneSteadfast as IItemStack = <forestry:bee_drone_ge>.withTag(
    {MaxH: 40, Mate: {Chromosomes: [{UID1: "forestry.speciesSteadfast", UID0: "forestry.speciesSteadfast", Slot: 0 as byte},
    {UID1: "forestry.speedSlower", UID0: "forestry.speedSlower", Slot: 1 as byte}, {UID1: "forestry.lifespanNormal", UID0: "forestry.lifespanNormal", Slot: 2 as byte},
    {UID1: "forestry.fertilityNormal", UID0: "forestry.fertilityNormal", Slot: 3 as byte}, {UID1: "forestry.toleranceNone", UID0: "forestry.toleranceNone", Slot: 4 as byte},
    {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 5 as byte}, {UID1: "forestry.toleranceNone", UID0: "forestry.toleranceNone", Slot: 6 as byte},
    {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 7 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 8 as byte},
    {UID1: "forestry.flowersVanilla", UID0: "forestry.flowersVanilla", Slot: 9 as byte}, {UID1: "forestry.floweringSlowest", UID0: "forestry.floweringSlowest", Slot: 10 as byte},
    {UID1: "forestry.territoryAverage", UID0: "forestry.territoryAverage", Slot: 11 as byte}, {UID1: "forestry.effectNone", UID0: "forestry.effectNone", Slot: 12 as byte}]},
    Health: 40, IsAnalyzed: 0 as byte, Genome: {Chromosomes: [{UID1: "forestry.speciesSteadfast", UID0: "forestry.speciesSteadfast", Slot: 0 as byte},
    {UID1: "forestry.speedSlower", UID0: "forestry.speedSlower", Slot: 1 as byte}, {UID1: "forestry.lifespanNormal", UID0: "forestry.lifespanNormal", Slot: 2 as byte},
    {UID1: "forestry.fertilityNormal", UID0: "forestry.fertilityNormal", Slot: 3 as byte}, {UID1: "forestry.toleranceNone", UID0: "forestry.toleranceNone", Slot: 4 as byte},
    {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 5 as byte}, {UID1: "forestry.toleranceNone", UID0: "forestry.toleranceNone", Slot: 6 as byte},
    {UID1: "forestry.boolFalse", UID0: "forestry.boolFalse", Slot: 7 as byte}, {UID1: "forestry.boolTrue", UID0: "forestry.boolTrue", Slot: 8 as byte},
    {UID1: "forestry.flowersVanilla", UID0: "forestry.flowersVanilla", Slot: 9 as byte}, {UID1: "forestry.floweringSlowest", UID0: "forestry.floweringSlowest", Slot: 10 as byte},
    {UID1: "forestry.territoryAverage", UID0: "forestry.territoryAverage", Slot: 11 as byte}, {UID1: "forestry.effectNone", UID0: "forestry.effectNone", Slot: 12 as byte}]}}
);

Empowerer.addRecipe(droneSteadfast, <harvestcraft:grubitem>, <forestry:royal_jelly>, <forestry:pollen:1>, <forestry:pollen>, <forestry:propolis:3>, 50000, 1000);

var x as IItemStack = <morebees:grainmetallic>;

// IItemStack output, IIngredient[][] ingredients, int packagingTime, @Optional ILiquidStack fluidInput, @Optional IItemStack box
Carpenter.addRecipe(<minecraft:gold_nugget>, [
    [x,x,x],
    [x,null,x],
    [x,x,x]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<minecraft:gold_nugget>, [
    [x,x,x],
    [x,null,x],
    [x,x,x]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<minecraft:iron_nugget>, [
    [x,null,x],
    [x,x,x],
    [x,null,x]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<thermalfoundation:material:192>, [
    [null,null,null],
    [x,x,x],
    [null,null,null]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<thermalfoundation:material:193>, [
    [null,x,null],
    [null,x,null],
    [null,x,null]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<thermalfoundation:material:194>, [
    [x,null,x],
    [null,null,null],
    [x,null,x]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<thermalfoundation:material:195>, [
    [null,x,null],
    [x,null,x],
    [null,x,null]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<thermalfoundation:material:196>, [
    [null,null,null],
    [null,x,null],
    [null,null,null]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<thermalfoundation:material:197>, [
    [x,x,x],
    [null,x,null],
    [x,x,x]
], 120, <liquid:water>*500);

