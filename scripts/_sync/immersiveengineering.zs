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

import mods.immersiveengineering.DieselHandler;
import mods.immersiveengineering.Excavator;
import mods.J0B10.tweaks.GardenCloche as GC;
import mods.TweakedLib.TweakedPowerTier;
import mods.TweakedExcavation.TweakedExcavator;
import mods.TweakedExcavation.TweakedMineral;
import mods.TweakedPetroleum.TweakedReservoir;

<immersiveengineering:wooden_device0:2>.addTooltip(format.red("*Won't function properly on servers.*"));

recipes.remove(<immersiveengineering:material:14>);
recipes.addShaped(<immersiveengineering:material:14>,[[null,null,<ore:ingotSteel>],[null,<ore:ingotSteel>,null],[<ore:ingotSteel>,null,null]]);

recipes.addShapeless(<immersiveengineering:seed>, [<ic2:itemmisc:158>,<ic2:itemmisc:158>]);

var listFertilizer as float[IIngredient] = {
    <ic2:itemmisc:151> : 1.75,
    <ic2:itemmisc:157> : 2.75,
    <ic2:itemmisc:160> : 3.50,
};

for fertilizer, multiplier in listFertilizer {
    GC.registerItemFertilizer(fertilizer, multiplier);
}

var listFluid as float[ILiquidStack] = {
    <liquid:hot_spring_water> : 2.0,
    <liquid:biomass> : 1.50,
    <liquid:biocrude> : 1.25,
};

for fluid, multiplier in listFluid {
    GC.registerFluidFertilizer(fluid, multiplier);
}

// Additional Fuels for the Diesel Generator

// DieselHandler.registerFuel(fluidBiodiesel, 125);
// DieselHandler.registerFuel(FluidRegistry.getFluid("fuel"), 375);
// DieselHandler.registerFuel(FluidRegistry.getFluid("diesel"), 175);
// DieselHandler.registerDrillFuel(fluidBiodiesel);
// DieselHandler.registerDrillFuel(FluidRegistry.getFluid("fuel"));
// DieselHandler.registerDrillFuel(FluidRegistry.getFluid("diesel"));

DieselHandler.addFuel(<liquid:refined_fuel>, 375);
DieselHandler.addFuel(<liquid:refinedcanolaoil>, 125);
DieselHandler.addFuel(<liquid:empoweredoil>, 250);

DieselHandler.addDrillFuel(<liquid:refined_fuel>);
DieselHandler.addDrillFuel(<liquid:refinedcanolaoil>);
DieselHandler.addDrillFuel(<liquid:empoweredoil>);

// Excavator Overhaul
// Credit: https://github.com/voidsong-dragonfly/mechcanical-technology-rocketry/blob/93e5200062cec49604adb56a908c9c7fbf68105f/scripts/immersiveengineering/excavator.zs
// This is an adapted version of the original implementation as I use Tweaked Excavator to furhter tune the ore veins.

Excavator.removeMineral("Bauxite");
Excavator.removeMineral("Cassiterite");
Excavator.removeMineral("Coal");
Excavator.removeMineral("Copper");
Excavator.removeMineral("Cinnabar");
Excavator.removeMineral("Silt");
Excavator.removeMineral("Galena");
Excavator.removeMineral("Gold");
Excavator.removeMineral("Iron");
Excavator.removeMineral("Lapis");
Excavator.removeMineral("Lead");
Excavator.removeMineral("Magnetite");
Excavator.removeMineral("Nickel");
Excavator.removeMineral("Pyrite");
Excavator.removeMineral("Quartzite");
Excavator.removeMineral("Silver");
Excavator.removeMineral("Uranium");

/*
    Veins now have more characteristics - they'll provide dirt, stone, and gravel along with their ores
    They also have different yields - the ratio of stone and dirt to ore
    This plays in when they're used as ingame veins as well
    -----Overworld Veins-----
    60% ore is 25% cobblestone 12.5% gravel 2.5% dirt
    40% ore is 40% cobblestone 15% gravel 5% dirt
    20% ore is 50% cobblestone, 25% gravel, 5% dirt
    ----Nether Veins----
    40% ore is 50% netherrack 10% soul sand
*/

var POWER_CAPACITY as int = 500000;
var ORE_YIELD as int = 120000;

var POWER_TIER_1 = TweakedPowerTier.registerPowerTier(POWER_CAPACITY, 1024);
var POWER_TIER_2 = TweakedPowerTier.registerPowerTier(POWER_CAPACITY, 2048);
var POWER_TIER_3 = TweakedPowerTier.registerPowerTier(POWER_CAPACITY, 4096);
var POWER_TIER_4 = TweakedPowerTier.registerPowerTier(POWER_CAPACITY, 8192);

var DIM_STONE as int[] = [0,-11325,43];
var DIM_HELL as int[] = [-1];
var DIM_END as int[] = [1];
var DIM_WASTE as int[] = [50];
var DIM_DREAD as int[] = [51];

//Common non-mineral
//Ore-rich (60% ore)
TweakedExcavator.addMineralWithCustomYield("Bituminous Coal", 25, 0.05, ["cobblestone", "gravel", "dirt", "oreCoal", "dustSulfur"],[0.41666666666666, 0.2083333333333333333, 0.041666666666666, 0.85, 0.15], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);

//Stones
TweakedExcavator.addMineralWithCustomYield("Slit", 25, 0.05, ["blockClay", "sand", "gravel", "earthworks:block_mud"],[0.4, 0.3, 0.2, 0.1], POWER_TIER_1, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Igneous Rock", 20, 0.05, ["stoneGranite", "stoneAndesite", "stoneDiorite", "obsidian"],[0.3, 0.3, 0.3, 0.1], POWER_TIER_2, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Sedimentary Rock", 20, 0.05, ["stoneMarble", "stoneLimestone", "earthworks:block_chalk"],[0.4, 0.4, 0.2], POWER_TIER_1, ORE_YIELD, [], DIM_STONE);

//Minerals
//Common
//Ore-rich (60% ore)
TweakedExcavator.addMineralWithCustomYield("Pentlandite", 20, 0.05, ["cobblestone", "gravel", "dirt", "oreIron", "oreNickel", "dustSulfur"], [0.41666666666666, 0.2083333333333333333, 0.041666666666666, 0.35, 0.35, 0.3], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Chalcopyrite", 30, 0.05, ["cobblestone", "gravel", "dirt", "oreIron", "oreCopper", "dustSulfur"], [0.41666666666666, 0.2083333333333333333, 0.041666666666666, 0.35, 0.35, 0.3], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Laterite", 20, 0.05, ["cobblestone", "gravel", "dirt", "oreAluminum", "oreIron", "oreCoraliumStone"], [0.41666666666666, 0.2083333333333333333, 0.041666666666666, 0.775, 0.2, 0.025], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);

//Medium (40% ore)
TweakedExcavator.addMineralWithCustomYield("Banded Iron", 25, 0.1, ["cobblestone", "gravel", "dirt", "oreIron"], [1.0, 0.375, 0.125, 1.0], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Cinnabar", 20, 0.1, ["cobblestone", "gravel", "dirt", "oreRedstone", "dustSulfur", "oreClathrateRedstone"], [1.0, 0.375, 0.125, 0.7, 0.15, 0.15], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Auricupride", 15, 0.1, ["cobblestone", "gravel", "dirt", "oreCopper", "oreGold"], [1.0, 0.375, 0.125, 0.875, 0.125], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Galena", 15, 0.1, ["cobblestone", "gravel", "dirt", "oreLead", "oreSilver", "dustSulfur"], [1.0, 0.375, 0.125, 0.4, 0.4, 0.2], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Cassiterite", 15, 0.05, ["cobblestone", "gravel", "dirt", "oreTin"], [1.0, 0.375, 0.125, 1.0], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Quartizite", 15, 0.1, ["cobblestone", "gravel", "dirt", "embers:ore_quartz", "oreQuartzBlack", "oreCertusQuartz"], [1.0, 0.375, 0.125, 0.2, 0.4, 0.4], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);

//Rare
//Medium (40% ore)
TweakedExcavator.addMineralWithCustomYield("Uraninite", 10, 0.15, ["cobblestone", "gravel", "dirt", "oreUranium", "oreLead", "oreSilver"], [1.0, 0.375, 0.125, 0.7, 0.2, 0.1], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Wolframite", 5, 0.1, ["cobblestone", "gravel", "dirt", "oreIron", "oreTungsten"], [1.0, 0.375, 0.125, 0.5, 0.5], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Pyrochlore", 10, 0.15, ["cobblestone", "gravel", "dirt", "oreSaltpeter", "oreUranium", "oreYellorite"], [1.0, 0.375, 0.125, 0.65, 0.1, 0.25], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Metamorphic Rock", 10, 0.1, ["cobblestone", "gravel", "dirt", "oreApatite", "oreLapis", "dustSulfur"], [1.0, 0.375, 0.125, 0.7, 0.25, 0.05], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Kimberlite", 5, 0.2, ["cobblestone", "gravel", "dirt", "oreDiamond"], [1.0, 0.375, 0.125, 1.0], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Beryl", 5, 0.2, ["cobblestone", "gravel", "dirt", "oreEmerald"], [1.0, 0.375, 0.125, 1.0], POWER_TIER_3, ORE_YIELD, [], DIM_STONE);

//Sparse (20% ore)
TweakedExcavator.addMineralWithCustomYield("Cooperite", 5, 0.2, ["cobblestone", "gravel", "dirt", "oreNickel", "orePlatinum", "oreIridium"], [2.5, 1.25, 0.25, 0.7, 0.2, 0.1], POWER_TIER_4, ORE_YIELD, [], DIM_STONE);
TweakedExcavator.addMineralWithCustomYield("Abyssalnite", 5, 0.2, ["cobblestone", "gravel", "dirt", "oreAbyssalnite", "orePlatinum", "oreMithril"], [2.5, 1.25, 0.25, 0.60, 0.25, 0.15], POWER_TIER_4, ORE_YIELD, [], DIM_STONE);

//Nether
//Medium (40% ore)
TweakedExcavator.addMineralWithCustomYield("Mephitic Quartizite", 20, 0.2, ["netherrack", "soulsand", "minecraft:quartz_ore", "dustSulfur", "oreCobalt"], [1.25, 0.25, 0.6, 0.2, 0.2], POWER_TIER_3, ORE_YIELD, [], DIM_HELL);
TweakedExcavator.addMineralWithCustomYield("Fluoritic Quartzite", 15, 0.4, ["netherrack", "soulsand", "minecraft:quartz_ore", "glowstone", "oreArdite"], [1.25, 0.25, 0.6, 0.3, 0.1], POWER_TIER_3, ORE_YIELD, [], DIM_HELL);
TweakedExcavator.addMineralWithCustomYield("Cinnabaric Quartzite", 10, 0.4, ["netherrack", "soulsand", "minecraft:quartz_ore", "oreClathrateGlowstone", "rftools:dimensional_shard_ore:1"], [1.25, 0.25, 0.6, 0.3, 0.1], POWER_TIER_3, ORE_YIELD, [], DIM_HELL);

//End
TweakedExcavator.addMineralWithCustomYield("Stygian Pitchblende", 20, 0.2, ["endstone", "oreClathrateEnder", "appliedenergistics2:material:46", "rftools:dimensional_shard_ore:2"], [1.35, 0.65, 0.4, 0.1], POWER_TIER_3, ORE_YIELD, [], DIM_END);

//Abyssal Wastelands
//Medium (40% ore)
TweakedExcavator.addMineralWithCustomYield("Coralionite", 10, 0.1, ["abyssalcraft:cobblestone:1", "abyssalcraft:abyssalsand", "abyssalcraft:cobblestone:4", "abyssalcraft:abycorore", "abyssalcraft:abypcorore", "abyssalcraft:abylcorore"], [1.0, 0.375, 0.125, 0.7, 0.25, 0.05], POWER_TIER_3, ORE_YIELD, [], DIM_WASTE);

// Reservoir Overhaul
/*
TweakedReservoir.registerReservoir(
    String name,
    ILiquidStack fluid,
    int minSize,
    int maxSize,
    int replenishRate,
    int pumpSpeed,
    int weight,
    int powerTier,
    @Optional int[] dimBlacklist,
    @Optional int[] dimWhitelist,
    @Optional String[] biomeBlacklist,
    @Optional String[] biomeWhitelist);
*/

var WEIGHT_COMMON as int = 30;
var WEIGHT_UNCOMMON as int = 20;
var WEIGHT_RARE as int = 10;
var WEIGHT_SPARSE as int = 5;

// Common Fluids
TweakedReservoir.registerReservoir("aquifer", <liquid:water>, 5000000, 10000000, 1000, 2000, WEIGHT_COMMON, POWER_TIER_1, [], DIM_STONE);
TweakedReservoir.registerReservoir("oil", <liquid:oil>, 2500000, 15000000, 10, 50, WEIGHT_COMMON, POWER_TIER_2, [], DIM_STONE);
TweakedReservoir.registerReservoir("lava", <liquid:lava>, 250000, 1000000, 0, 50, WEIGHT_COMMON, POWER_TIER_2, [], DIM_STONE);

TweakedReservoir.registerReservoir("Liquid Dirt Reservoir", <liquid:dirt>, 2500000, 15000000, 0, 50, WEIGHT_COMMON, POWER_TIER_1, [], DIM_STONE);
TweakedReservoir.registerReservoir("Liquid Clay Reservoir", <liquid:clay>, 2500000, 15000000, 0, 50, WEIGHT_COMMON, POWER_TIER_1, [], DIM_STONE);
TweakedReservoir.registerReservoir("Hot Spring Water Reservoir", <liquid:hot_spring_water>, 5000000, 10000000, 0, 2000, WEIGHT_COMMON, POWER_TIER_1, [], DIM_STONE);

// Uncommon Fluids
TweakedReservoir.registerReservoir("Liquified Coal Reservoir", <liquid:coal>, 2500000, 15000000, 0, 50, WEIGHT_UNCOMMON, POWER_TIER_2, [], DIM_STONE);
TweakedReservoir.registerReservoir("Coralium Reservoir", <liquid:liquidcoralium>, 2500000, 15000000, 0, 50, WEIGHT_UNCOMMON, POWER_TIER_2, [], DIM_WASTE);
TweakedReservoir.registerReservoir("Starlight Reservoir", <liquid:astralsorcery.liquidstarlight>, 2500000, 15000000, 0, 50, WEIGHT_UNCOMMON, POWER_TIER_2, [], [0], ["MOUNTAIN"]);

// Rare Fluids

TweakedReservoir.registerReservoir("Antimatter Reservoir", <liquid:liquidantimatter>, 25000, 100000, 0, 50, WEIGHT_RARE, POWER_TIER_3, [], DIM_WASTE);
TweakedReservoir.registerReservoir("Destabilized Redstone Reservoir", <liquid:redstone>, 250000, 1000000, 0, 50, WEIGHT_RARE, POWER_TIER_3, [], DIM_STONE);
TweakedReservoir.registerReservoir("Energized Glowstone Reservoir", <liquid:glowstone>, 250000, 1000000, 0, 50, WEIGHT_RARE, POWER_TIER_3, [], DIM_HELL);
TweakedReservoir.registerReservoir("Steam Reservoir", <liquid:steam>, 2500000, 10000000, 0, 4000, WEIGHT_RARE, POWER_TIER_3, [], DIM_HELL);
TweakedReservoir.registerReservoir("Obsidian Reservoir", <liquid:obsidian>, 250000, 1000000, 0, 50, WEIGHT_RARE, POWER_TIER_3, [], DIM_HELL);
TweakedReservoir.registerReservoir("Resonant Ender Reservoir", <liquid:ender>, 250000, 1000000, 0, 50, WEIGHT_RARE, POWER_TIER_3, [], DIM_END);

// Credit: https://github.com/Krutoy242/Enigmatica2Expert-Extended/blob/1dab97c5791d6e3e247608604c5c4878cf1a89e0/scripts/mods/tweakedpetroleum.zs
TweakedReservoir.registerReservoir("Desert Oil Reservoir", <liquid:oil>, 15000000, 30000000, 25, 50, WEIGHT_RARE, POWER_TIER_2, [], [0], [], ["SANDY"]);
TweakedReservoir.registerReservoir("Deep Ocean Oil Reservoir", <liquid:oil>, 15000000, 30000000, 25, 50, WEIGHT_RARE, POWER_TIER_2, [], [0], [], ["OCEAN"]);
TweakedReservoir.registerReservoir("Low Pressure Magma Chamber (Nether)", <liquid:lava>, 500000, 1500000, 500, 1000, WEIGHT_RARE, POWER_TIER_2, [], DIM_HELL);

// Sparse Fluids
TweakedReservoir.registerReservoir("Aerotheum Reservoir", <liquid:aerotheum>, 25000, 100000, 0, 50, WEIGHT_SPARSE, POWER_TIER_4, [], [0], [], ["SANDY","SAVANNA"]);
TweakedReservoir.registerReservoir("Petrotheum Reservoir", <liquid:petrotheum>, 25000, 100000, 0, 50, WEIGHT_SPARSE, POWER_TIER_4, [], [0], [], ["MOUNTAIN","WASTELAND"]);
TweakedReservoir.registerReservoir("Pyrotheum Reservoir", <liquid:pyrotheum>, 25000, 100000, 0, 50, WEIGHT_SPARSE, POWER_TIER_4, [], DIM_HELL);
TweakedReservoir.registerReservoir("Cryotheum Reservoir", <liquid:cryotheum>, 25000, 100000, 0, 50, WEIGHT_SPARSE, POWER_TIER_4, [], [0], [], ["COLD","SNOWY"]);
