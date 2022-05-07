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
import mods.forestry.Centrifuge;
import mods.jei.JEI;
import mods.thermalexpansion.EnervationDynamo;

JEI.removeAndHide(<forestry:bottler>);

JEI.addItem(<forestry:bee_combs:1>);
JEI.addItem(<forestry:bee_combs:8>);
JEI.addItem(<forestry:bee_combs:9>);
JEI.addItem(<forestry:bee_combs:10>);
JEI.addItem(<forestry:bee_combs:11>);
JEI.addItem(<forestry:bee_combs:12>);
JEI.addItem(<forestry:bee_combs:13>);
JEI.addItem(<forestry:bee_combs:14>);
JEI.addItem(<forestry:bee_combs_0:1>);
JEI.addItem(<forestry:bee_combs_0:8>);
JEI.addItem(<forestry:bee_combs_0:9>);
JEI.addItem(<forestry:bee_combs_0:10>);
JEI.addItem(<forestry:bee_combs_0:11>);
JEI.addItem(<forestry:bee_combs_0:12>);
JEI.addItem(<forestry:bee_combs_0:13>);
JEI.addItem(<forestry:bee_combs_0:14>);
JEI.addItem(<forestry:crafting_material:5>);
JEI.addItem(<forestry:propolis:2>);
JEI.addItem(<forestry:honey_drop:1>);
JEI.addItem(<forestry:honey_drop:2>);

recipes.remove(<forestry:kit_shovel>);
recipes.remove(<forestry:kit_pickaxe>);

furnace.remove(<minecraft:coal:1>);
furnace.addRecipe(<forestry:ash>, <ore:logWood>);

EnervationDynamo.addFuel(<forestry:honey_drop:1>, 100000000);

recipes.remove(<forestry:ash_stairs>);
recipes.addShaped(<forestry:ash_stairs> * 4, [
    [<forestry:ash_brick>,null,null],
    [<forestry:ash_brick>,<forestry:ash_brick>,null],
    [<forestry:ash_brick>,<forestry:ash_brick>,<forestry:ash_brick>]
]);

Centrifuge.removeRecipe(<forestry:bee_combs:9>);
Centrifuge.addRecipe([<ic2:itemmisc:181> % 60, <forestry:honey_drop> % 40], <forestry:bee_combs:9>, 100);

Centrifuge.addRecipe([<forestry:honey_drop:1> % 100], <forestry:bee_combs:12>, 100);
Centrifuge.addRecipe([<forestry:honey_drop:1> % 100, <forestry:honey_drop:1> % 100], <forestry:bee_combs:11>, 100);

Centrifuge.addRecipe([<forestry:honey_drop:2> % 100], <forestry:bee_combs:13>, 100);

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

var y as IItemStack = <morebees:graincrystal>;

Carpenter.addRecipe(<thermalfoundation:material:16>, [
    [y,y,y],
    [y,y,y],
    [y,y,y]
], 120, <liquid:water>*1000);

Carpenter.addRecipe(<astralsorcery:itemcraftingcomponent>, [
    [null,y,null],
    [y,y,y],
    [null,y,null]
], 120, <liquid:water>*1000);

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
