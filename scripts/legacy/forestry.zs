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

Carpenter.removeRecipe(<forestry:impregnated_casing>);
Carpenter.addRecipe(<forestry:impregnated_casing>, [
    [<ore:logWood>,<ore:logWood>,<ore:logWood>],
    [<ore:logWood>,null,<ore:logWood>],
    [<ore:logWood>,<ore:logWood>,<ore:logWood>]
], 200, <liquid:seed.oil>*250);

var y as IItemStack = <morebees:graincrystal>;
var rockcrystal as IItemStack = <astralsorcery:itemrockcrystalsimple>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 400, fract: 0, purity: 100, sizeOverride: -1}}});
var celestialcrystal as IItemStack = <astralsorcery:itemcelestialcrystal>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, purity: 100, sizeOverride: -1}}});

Carpenter.addRecipe(rockcrystal, [
    [y,<astralsorcery:itemcraftingcomponent:4>,y],
    [y,<astralsorcery:itemrockcrystalsimple>,y],
    [y,<astralsorcery:itemcraftingcomponent:4>,y]
], 120, <liquid:astralsorcery.liquidstarlight>*10000);

Carpenter.addRecipe(celestialcrystal, [
    [y,<astralsorcery:itemcraftingcomponent:4>,y],
    [y,<astralsorcery:itemcelestialcrystal>,y],
    [y,<astralsorcery:itemcraftingcomponent:4>,y]
], 120, <liquid:astralsorcery.liquidstarlight>*10000);
