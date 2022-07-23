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

import mods.astralsorcery.Altar;
import mods.enderio.AlloySmelter;
import mods.enderio.SagMill;
import mods.enderio.SliceNSplice;
import mods.enderio.SoulBinder;
import mods.forestry.ThermionicFabricator;
import mods.ic2.Macerator;
import mods.immersiveengineering.ArcFurnace;
import mods.inworldcrafting.FluidToItem;
import mods.jei.JEI;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;
import scripts.functions.calc_flawless;

JEI.removeAndHide(<enderio:block_simple_furnace>);
JEI.removeAndHide(<enderio:block_simple_sag_mill>);
JEI.removeAndHide(<enderio:block_simple_stirling_generator>);
JEI.removeAndHide(<enderio:block_simple_crafter>);
JEI.removeAndHide(<enderio:block_simple_wired_charger>);

JEI.removeAndHide(<enderio:item_endergy_conduit>);
JEI.removeAndHide(<enderio:item_endergy_conduit:1>);
JEI.removeAndHide(<enderio:item_endergy_conduit:2>);
JEI.removeAndHide(<enderio:item_endergy_conduit:3>);
JEI.removeAndHide(<enderio:item_endergy_conduit:4>);
JEI.removeAndHide(<enderio:item_endergy_conduit:5>);
JEI.removeAndHide(<enderio:item_endergy_conduit:6>);

SagMill.removeRecipe(<enderio:block_infinity>);
SagMill.removeRecipe(<enderio:block_infinity:1>);
SagMill.removeRecipe(<enderio:block_infinity:2>);

var capacitorT1 as IIngredient = <enderio:item_basic_capacitor>|<enderio:item_capacitor_silver>;
var capacitorT2 as IIngredient = <enderio:item_basic_capacitor:1>|<enderio:item_capacitor_energetic_silver>;
var capacitorT3 as IIngredient = <enderio:item_basic_capacitor:2>|<enderio:item_capacitor_vivid>;

// Nether Cotta
# AlloySmelter.removeRecipe(<enderio:item_material:72>);
AlloySmelter.addRecipe(<enderio:item_material:72>, [<minecraft:netherbrick>,<contenttweaker:crushed_nether_wart>,<contenttweaker:fireclay_brick>], 5000);

// Conductive Iron
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:4>);
InductionSmelter.removeRecipe(<minecraft:redstone>,<minecraft:iron_ingot>);
InductionSmelter.removeRecipe(<minecraft:redstone>,<thermalfoundation:material>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:4>, [<ore:ingotRefinedIron>,<ore:ingotLead>,<ore:ingotRedAlloy>], 10000);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:4>, <ore:ingotRefinedIron>, null, 200, 512, [<ore:ingotLead>,<ore:ingotRedAlloy>]);

// Pulsating Iron
InductionSmelter.removeRecipe(<minecraft:ender_pearl>,<minecraft:iron_ingot>);
InductionSmelter.removeRecipe(<minecraft:ender_pearl>,<thermalfoundation:material>);

// Electrical Steel
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:0>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:0>, [<ore:ingotSteel>,<ore:ingotElectrum>,<ore:itemSilicon>], 10000);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:0>, <ore:ingotSteel>, null, 200, 512, [<ore:ingotElectrum>,<ore:itemSilicon>]);

// Dark Steel
Alloy.removeRecipe(<liquid:dark_steel>);
InductionSmelter.removeRecipe(<thermalfoundation:material:770>,<thermalfoundation:material:160>);
InductionSmelter.removeRecipe(<thermalfoundation:material:770>,<thermalfoundation:material:96>);
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:6>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:6>, [<ore:ingotSteel>,<contenttweaker:black_iron>,<ore:ingotHOPGraphite>], 20000);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:6>, <ore:ingotSteel>, null, 200, 512, [<contenttweaker:black_iron>,<ore:ingotHOPGraphite>]);

// End Steel
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:8>, [<ore:ingotDarkSteel>,<ore:ingotStarSteel>,<enderutilities:enderpart:1>], 20000);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:8>, <ore:ingotDarkSteel>, null, 200, 512, [<ore:ingotStarSteel>,<enderutilities:enderpart:1>]);

// Redstone Alloy
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:3>, [<contenttweaker:redstone_ingot>,<ore:itemSilicon>,<ore:ingotRedAlloy>], 10000);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:3>, <contenttweaker:redstone_ingot>, null, 200, 512, [<ore:itemSilicon>,<ore:ingotRedAlloy>]);

// Vibrant Alloy
InductionSmelter.removeRecipe(<enderio:item_alloy_ingot:1>,<minecraft:ender_pearl>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:2>, [<ore:ingotEnergeticAlloy>,<ore:ingotGelidEnderium>,<ore:ingotElectrumFlux>], 15000);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:2>, <ore:ingotEnergeticAlloy>, null, 200, 512, [<ore:ingotGelidEnderium>,<ore:ingotElectrumFlux>]);

// Energetic Alloy
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:1>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:1>, [<ore:ingotElectrum>,<ore:ingotSignalum>,<ore:ingotLumium>], 10000);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:1>, <ore:ingotElectrum>, null, 200, 512, [<ore:ingotSignalum>,<ore:ingotLumium>]);

// Energetic Silver ALloy
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:5>, [<ore:ingotEnergeticAlloy>,<ore:ingotMithril>,<ore:ingotManasteel>], 10000);
ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:5>, <ore:ingotEnergeticAlloy>, null, 200, 512, [<ore:ingotMithril>,<ore:ingotManasteel>]);

// Vivid Alloy
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:6>, [<ore:ingotEnergeticSilver>,<extrautils2:unstableingots:2>,<extrautils2:ingredients:12>], 10000);
ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:6>, <ore:ingotEnergeticSilver>, null, 200, 512, [<extrautils2:unstableingots:2>,<extrautils2:ingredients:12>]);

// Crystalline ALloy
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:1>, [<ore:ingotVividAlloy>,<quantumflux:craftingpiece:6>,<bloodmagic:item_demon_crystal>], 25000);
ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:1>, <ore:ingotVividAlloy>, null, 200, 512, [<quantumflux:craftingpiece:6>,<bloodmagic:item_demon_crystal>]);

// Crystalline Pink Slime
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:4>, [<ore:ingotPinkMetal>,<ore:ingotCrystallineAlloy>,<ore:ingotVibrantAlloy>], 25000);
ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:4>, <ore:ingotPinkMetal>, null, 200, 512, [<ore:ingotCrystallineAlloy>,<ore:ingotVibrantAlloy>]);

// Melodic ALloy Ingot
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:2>, [<ore:ingotDraconium>,<enderutilities:enderpart:2>,<ore:ingotCrystallinePinkSlime>], 25000);
ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:2>, <ore:ingotEndSteel>, null, 200, 512, [<ore:ingotDraconium>,<ore:ingotCrystallinePinkSlime>]);

// Stellar Alloy
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:3>, [<ore:ingotMelodicAlloy>,<ic2:itemmisc:258>,<contenttweaker:enhanced_ender_ingot>], 50000);
ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:3>, <ore:ingotMelodicAlloy>, null, 200, 512, [<ic2:itemmisc:258>,<contenttweaker:enhanced_ender_ingot>]);

// Iron Alloy
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:9>, [<enderio:item_alloy_endergy_ingot>,<enderio:item_alloy_ingot:4>,<contenttweaker:fireclay_brick>], 2500);

// Soularium Alloy
InductionSmelter.removeRecipe(<minecraft:soul_sand>,<minecraft:gold_ingot>);
InductionSmelter.removeRecipe(<minecraft:soul_sand>,<thermalfoundation:material:1>);
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:7>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:7>, [<woot:soulsanddust> * 4,<contenttweaker:enrichedgold_ingot>,<ore:shoggothFlesh> * 4], 15000);

recipes.remove(<enderio:item_capacitor_grainy>);
InductionSmelter.addRecipe(<enderio:item_capacitor_grainy> * 8, <thermalexpansion:capacitor>, <enderio:item_material:75> * 4, 20000);

AlloySmelter.addRecipe(<enderio:block_industrial_insulation>, [<ore:blockRockwool>,<embers:ashen_cloth>,<ic2:blockfoam>], 4000);

FluidToItem.transform(<enderio:item_material:20>, <liquid:astralsorcery.liquidstarlight>, [<ore:dustQuartzBlack>], true);
FluidToItem.transform(<enderio:item_material:20>, <liquid:colour_out_of_space>, [<ore:dustQuartzBlack>], false);
Transposer.addFillRecipe(<enderio:item_material:20>, <actuallyadditions:item_dust:7>,  <liquid:astralsorcery.liquidstarlight> * 100, 2000);

recipes.remove(<enderio:item_basic_item_filter>);
InductionSmelter.addRecipe(<enderio:item_basic_item_filter>, <extrautils2:filter>, <enderio:item_alloy_ingot> * 2, 2000);
InductionSmelter.addRecipe(<enderio:item_basic_item_filter>, <extrautils2:filter>, <minecraft:hopper>, 2000);

recipes.remove(<enderio:item_material:51>);
FluidToItem.transform(<enderio:item_material:51> * 2, <liquid:lubricant>, [
    <enderio:item_material:48>,
    <enderio:item_material:50>,
    <enderio:item_material:49>,
    <enderio:block_holier_fog> * 3
], true);

recipes.remove(<enderio:item_material:52>);
FluidToItem.transform(<enderio:item_material:52> * 2, <liquid:lubricant>, [
    <enderio:item_material:35>,
    <contenttweaker:lithium_dust>,
    <randomthings:ingredient:13>,
    <enderio:block_holier_fog> * 3
], true);

recipes.remove(<enderio:item_material:67>);
FluidToItem.transform(<enderio:item_material:67> * 2, <liquid:lubricant>, [
    <enderio:item_material:74>,
    <enderio:item_material:36>,
    <evilcraft:garmonbozia>,
    <enderio:block_holier_fog> * 3
], true);

recipes.remove(<enderio:item_material:11>);
Casting.removeTableRecipe(<enderio:item_material:11>);
Casting.addTableRecipe(<enderio:item_material:11>, <enderio:item_material:20>, <liquid:iron>, 576, true, 200);
InductionSmelter.addRecipe(<enderio:item_material:11>, <enderio:item_material:20>, <minecraft:iron_ingot> * 4, 40000);

recipes.remove(<enderio:item_material:12>);
Casting.removeTableRecipe(<enderio:item_material:12>);
Casting.addTableRecipe(<enderio:item_material:12>, <enderio:item_material:11>, <liquid:energetic_alloy>, 576, true, 200);
InductionSmelter.addRecipe(<enderio:item_material:12>, <enderio:item_material:11>, <enderio:item_alloy_ingot:1> * 4, 40000);

recipes.remove(<enderio:item_material:13>);
Casting.removeTableRecipe(<enderio:item_material:13>);
Casting.addTableRecipe(<enderio:item_material:13>, <enderio:item_material:12>, <liquid:vibrant_alloy>, 576, true, 200);
InductionSmelter.addRecipe(<enderio:item_material:13>, <enderio:item_material:12>, <enderio:item_alloy_ingot:2> * 4, 40000);

recipes.remove(<enderio:item_material:73>);
Casting.removeTableRecipe(<enderio:item_material:73>);
Casting.addTableRecipe(<enderio:item_material:73>, <enderio:item_material:11>, <liquid:dark_steel>, 576, true, 200);
InductionSmelter.addRecipe(<enderio:item_material:73>, <enderio:item_material:11>, <enderio:item_alloy_ingot:6> * 4, 40000);

recipes.remove(<enderio:item_material:14>);
Casting.removeTableRecipe(<enderio:item_material:14>);
Casting.addTableRecipe(<enderio:item_material:14>, <actuallyadditions:item_crystal_empowered:2>, <liquid:pulsating_iron>, 288, true, 200);
InductionSmelter.addRecipe(<enderio:item_material:14>, <actuallyadditions:item_crystal_empowered:2>, <enderio:item_alloy_ingot:5> * 2, 40000);

recipes.remove(<enderio:item_material:15>);
Casting.removeTableRecipe(<enderio:item_material:15>);
Casting.addTableRecipe(<enderio:item_material:15>, <actuallyadditions:item_crystal_empowered:4>, <liquid:vibrant_alloy>, 288, true, 200);
InductionSmelter.addRecipe(<enderio:item_material:15>, <actuallyadditions:item_crystal_empowered:4>, <enderio:item_alloy_ingot:2> * 2, 40000);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <enderio:item_material> : [
        [
            [<ore:plateDawnstone>,<ore:gearIronInfinity>,<ore:plateDawnstone>],
            [<ore:gearIronInfinity>,<embers:mech_core>,<ore:gearIronInfinity>],
            [<ore:plateDawnstone>,<ore:gearIronInfinity>,<ore:plateDawnstone>]
        ]
    ],
    <enderio:block_simple_alloy_smelter> : [
        [
            [<immersiveengineering:stone_decoration:10>,<minecraft:furnace>,<immersiveengineering:stone_decoration:10>],
            [<minecraft:furnace>,<enderio:item_material>,<minecraft:furnace>],
            [<immersiveengineering:stone_decoration:10>,<immersiveengineering:metal_device1:1>,<immersiveengineering:stone_decoration:10>]
        ]
    ],
    <enderio:block_transceiver> : [
        [
            [<ore:ingotElectricalSteel>,<enderio:item_material:44>,<ore:ingotElectricalSteel>],
            [<appliedenergistics2:quartz_vibrant_glass>,<ic2:blockmachinehv:2>,<appliedenergistics2:quartz_vibrant_glass>],
            [<ore:ingotElectricalSteel>,<bloodmagic:teleposition_focus:1>,<ore:ingotElectricalSteel>]
        ]
    ],
    <enderio:block_cap_bank:1> : [
        [
            [<ore:ingotConductiveIron>,capacitorT1,<ore:ingotConductiveIron>],
            [capacitorT1,<thermalexpansion:frame:146>,capacitorT1],
            [<ore:ingotConductiveIron>,capacitorT1,<ore:ingotConductiveIron>]
        ]
    ],
    <enderio:block_cap_bank:2> : [
        [
            [<ore:ingotEnergeticAlloy>|<ore:ingotEnergeticSilver>,capacitorT2,<ore:ingotEnergeticAlloy>|<ore:ingotEnergeticSilver>],
            [<enderio:block_cap_bank:1>,<thermalexpansion:frame:147>,<enderio:block_cap_bank:1>],
            [<ore:ingotEnergeticAlloy>|<ore:ingotEnergeticSilver>,capacitorT2,<ore:ingotEnergeticAlloy>|<ore:ingotEnergeticSilver>]
        ]
    ],
    <enderio:block_cap_bank:3> : [
        [
            [<ore:ingotVibrantAlloy>|<ore:ingotVividAlloy>,capacitorT3,<ore:ingotVibrantAlloy>|<ore:ingotVividAlloy>],
            [<enderio:block_cap_bank:2>,<thermalexpansion:frame:148>,<enderio:block_cap_bank:2>],
            [<ore:ingotVibrantAlloy>|<ore:ingotVividAlloy>,capacitorT3,<ore:ingotVibrantAlloy>|<ore:ingotVividAlloy>]
        ]
    ],
    <enderio:block_crafter> : [
        [
            [<ore:itemSilicon>,<evilcraft:exalted_crafter:1>,<ore:itemSilicon>],
            [<opencomputers:material:7>,<forestry:worktable>,<opencomputers:material:7>],
            [<enderio:item_material:11>,<enderio:item_material:1>,<enderio:item_material:11>]
        ]
    ],
    <enderio:block_sag_mill> : [
        [
            [<contenttweaker:cutting_head_diamond>,<contenttweaker:cutting_head_diamond>,<contenttweaker:cutting_head_diamond>],
            [<contenttweaker:electric_motor>,<enderio:item_material:1>,<contenttweaker:electric_motor>],
            [<ore:gearDark>,<thermalfoundation:material:513>,<ore:gearDark>]
        ]
    ],
    <enderio:block_alloy_smelter> : [
        [
            [<immersiveengineering:metal_device1:1>,<ic2:reactorventspread>,<immersiveengineering:metal_device1:1>],
            [<enderio:block_simple_alloy_smelter>,<enderio:item_material:1>,<enderio:block_simple_alloy_smelter>],
            [<ore:gearDark>,<thermalfoundation:material:513>,<ore:gearDark>]
        ]
    ],
    <enderio:block_vat> : [
        [
            [<contenttweaker:iron_rotor>,<minecraft:cauldron>,<contenttweaker:iron_rotor>],
            [<enderio:block_tank>,<enderio:item_material:1>,<enderio:block_tank>],
            [<ore:gearDark>,<thermalfoundation:material:513>,<ore:gearDark>]
        ]
    ],
    <enderio:block_wired_charger> : [
        [
            [<ore:ingotElectricalSteel>,<embers:charger>,<ore:ingotElectricalSteel>],
            [<ore:ingotElectricalSteel>,<enderio:item_material:1>,<ore:ingotElectricalSteel>],
            [<ore:ingotElectricalSteel>,<thermalfoundation:material:513>,<ore:ingotElectricalSteel>]
        ]
    ],
    <enderio:block_combustion_generator> : [
        [
            [<embers:mini_boiler>,<embers:reaction_chamber>,<embers:mini_boiler>],
            [<enderio:block_tank>,<enderio:item_material:1>,<enderio:block_tank>],
            [<ore:gearDark>,<thermalfoundation:material:514>,<ore:gearDark>]
        ]
    ],
    <enderio:block_stirling_generator> : [
        [
            [<opencomputers:upgrade:16>,<ic2:blockmachinelv:1>,<opencomputers:upgrade:16>],
            [<ic2:blockmachinelv:1>,<enderio:item_material:1>,<ic2:blockmachinelv:1>],
            [<ore:gearDark>,<thermalfoundation:material:514>,<ore:gearDark>]
        ]
    ],
    <enderio:block_enhanced_combustion_generator> : [
        [
            [<ore:ingotEndSteel>,<enderio:block_combustion_generator>,<ore:ingotEndSteel>],
            [<enderio:block_tank:1>,<enderio:item_material:54>,<enderio:block_tank:1>],
            [<ore:gearVibrant>,<embers:combustor>,<ore:gearVibrant>]
        ]
    ],
    <enderio:block_enhanced_alloy_smelter> : [
        [
            [<ore:ingotEndSteel>,<enderio:block_alloy_smelter>,<ore:ingotEndSteel>],
            [<gendustry:apiary.upgrade:6>,<enderio:item_material:54>,<gendustry:apiary.upgrade:6>],
            [<ore:gearVibrant>,<embers:inferno_forge>,<ore:gearVibrant>]
        ]
    ],
    <enderio:block_enhanced_sag_mill> : [
        [
            [<ore:ingotEndSteel>,<enderio:block_sag_mill>,<ore:ingotEndSteel>],
            [<ic2:ic2upgrades>,<enderio:item_material:54>,<ic2:ic2upgrades>],
            [<ore:gearVibrant>,<embers:heat_coil>,<ore:gearVibrant>]
        ]
    ],
    <enderio:block_enhanced_vat> : [
        [
            [<ore:ingotEndSteel>,<enderio:block_vat>,<ore:ingotEndSteel>],
            [<enderio:block_tank:1>,<enderio:item_material:54>,<enderio:block_tank:1>],
            [<ore:gearVibrant>,<embers:boiler>,<ore:gearVibrant>]
        ]
    ],
    <enderio:block_enhanced_wired_charger> : [
        [
            [<ore:ingotEndSteel>,<embers:catalytic_plug>,<ore:ingotEndSteel>],
            [<enderio:block_tank:1>,<enderio:item_material:54>,<enderio:block_tank:1>],
            [<ore:gearVibrant>,<enderio:block_wired_charger>,<ore:gearVibrant>]
        ]
    ],
    <enderio:block_travel_anchor> : [
        [
            [<ore:ingotEnderium>,<enderio:item_material:14>,<ore:ingotEnderium>],
            [<enderio:item_material:4>,<contenttweaker:jump_module>,<enderio:item_material:4>],
            [<ore:ingotEnderium>,<enderio:item_material:43>,<ore:ingotEnderium>]
        ]
    ]
};

for key, value in recipeMapShaped {
	var index as int = 0;
    recipes.remove(key);

    for recipe in value {
        var name as string = "ct_"+toString(key)+"_"+index;
        recipes.addShaped(name, key, recipe);
        index += 1;
    }
}

var mapEnergyConduit as IItemStack[][] = [
    [<enderio:item_power_conduit>,<enderio:item_alloy_ingot:4>],
    [<enderio:item_power_conduit:1>,<enderio:item_alloy_ingot:1>],
    [<enderio:item_endergy_conduit:7>,<enderio:item_alloy_endergy_ingot:5>],
    [<enderio:item_power_conduit:2>,<enderio:item_alloy_ingot:2>],
    [<enderio:item_endergy_conduit:8>,<enderio:item_alloy_endergy_ingot:1>],
    [<enderio:item_endergy_conduit:9>,<enderio:item_alloy_endergy_ingot:4>],
    [<enderio:item_endergy_conduit:10>,<enderio:item_alloy_endergy_ingot:2>],
    [<enderio:item_endergy_conduit:11>,<enderio:item_alloy_endergy_ingot:3>],
];

var index as int = 0;

recipes.remove(<enderio:item_power_conduit>);
recipes.addShaped(<enderio:item_power_conduit> * 4, [
    [<enderio:item_material:4>,<enderio:item_material:75>,<enderio:item_material:4>],
    [<enderio:item_alloy_ingot:4>,<contenttweaker:module_energy>,<enderio:item_alloy_ingot:4>],
    [<enderio:item_material:4>,<enderio:item_material:75>,<enderio:item_material:4>]
]);

while index <= 6 {
    var pre_conduit as IItemStack = mapEnergyConduit[index][0];
    var conduit as IItemStack = mapEnergyConduit[index+1][0];
    var ingot as IItemStack = mapEnergyConduit[index+1][1];

    recipes.remove(conduit);
    recipes.addShaped(conduit * 4, [
        [<enderio:item_material:4>,<enderio:item_material:75>,<enderio:item_material:4>],
        [ingot,pre_conduit,ingot],
        [<enderio:item_material:4>,<enderio:item_material:75>,<enderio:item_material:4>],
    ]);

    index += 1;
}

recipes.remove(<enderio:item_material:1>);
InductionSmelter.removeRecipe(<enderio:item_material>,<enderio:item_material:51>);
Altar.addConstellationAltarRecipe("machine_chassis", <enderio:item_material:1>, 800, 200, [
    <enderio:item_material:51>,
    <opencomputers:component>,
    <enderio:item_material:51>,
    <actuallyadditions:item_crystal_empowered:3>,
    <enderio:item_material>,
    <actuallyadditions:item_crystal_empowered:3>,
    <enderio:item_material:51>,
    <thermalexpansion:frame:146>,
    <enderio:item_material:51>,
    <ore:ingotDarkSteel>,
    <ore:ingotDarkSteel>,
    <ore:ingotDarkSteel>,
    <ore:ingotDarkSteel>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>
]);

recipes.remove(<enderio:item_material:53>);
InductionSmelter.removeRecipe(<enderio:item_material>,<enderio:item_material:52>);
Altar.addConstellationAltarRecipe("soul_chassis", <enderio:item_material:53>, 800, 200, [
    <enderio:item_material:52>,
    <extrautils2:poweroverload>,
    <enderio:item_material:52>,
    <actuallyadditions:item_crystal_empowered:5>,
    <enderio:item_material:1>,
    <actuallyadditions:item_crystal_empowered:5>,
    <enderio:item_material:52>,
    <thermalexpansion:frame:147>,
    <enderio:item_material:52>,
    <ore:ingotSoularium>,
    <ore:ingotSoularium>,
    <ore:ingotSoularium>,
    <ore:ingotSoularium>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>,
    <appliedenergistics2:quartz_vibrant_glass>
]);

recipes.remove(<enderio:item_material:55>);
Altar.addConstellationAltarRecipe("soulless_chassis", <enderio:item_material:55>, 800, 200, [
    <enderio:item_material:67>,
    <contenttweaker:warp_module>,
    <enderio:item_material:67>,
    <enderio:item_material:56>,
    <enderio:item_material:53>,
    <enderio:item_material:56>,
    <enderio:item_material:67>,
    <thermalexpansion:frame:148>,
    <enderio:item_material:67>,
    <ore:ingot_dark_soularium>,
    <ore:ingot_dark_soularium>,
    <ore:ingot_dark_soularium>,
    <ore:ingot_dark_soularium>,
    <enderio:block_industrial_insulation>,
    <enderio:block_industrial_insulation>,
    <enderio:block_industrial_insulation>,
    <enderio:block_industrial_insulation>,
    <enderio:block_industrial_insulation>,
    <enderio:block_industrial_insulation>,
    <enderio:block_industrial_insulation>,
    <enderio:block_industrial_insulation>
]);

SoulBinder.addRecipe(<enderio:item_material:54>,<enderio:item_material:55>,["minecraft:silverfish","evilcraft:netherfish"], 50000, 1725);

recipes.remove(<enderio:item_material:66>);
Altar.addTraitAltarRecipe("endsteel_chassis", <enderio:item_material:66>, 4500, 100, [
	<redstonerepository:material:7>,
    <opencomputers:component:2>,
    <redstonerepository:material:7>,
    <abyssalcraft:ethaxiumingot>,
    <thermalexpansion:frame:64>, 
	<abyssalcraft:ethaxiumingot>,
    <redstonerepository:material:7>,
    <ic2:bigquantumaccumulator>,
    <redstonerepository:material:7>,
    <ore:ingotLudicrite>,
	<ore:ingotLudicrite>,
    <ore:ingotLudicrite>,
    <ore:ingotLudicrite>,
    <enderio:block_end_iron_bars>,
    <enderio:block_end_iron_bars>,
	<enderio:block_end_iron_bars>,
    <enderio:block_end_iron_bars>,
    <enderio:block_end_iron_bars>,
    <enderio:block_end_iron_bars>,
    <enderio:block_end_iron_bars>, 
	<enderio:block_end_iron_bars>,
    <enderio:item_material:68>,
    <enderio:item_material:68>,
    <enderio:item_material:68>,
    <enderio:item_material:68>,
	//Outer Items, indices 25+
	<botanicadds:rune_energy>,
    <advancedsolars:irradiantreinforcedplate>,
    <advancedsolars:enrichedsunnariumalloy>,
    <advancedsolars:irradiantreinforcedplate>
], "astralsorcery.constellation.evorsio");

Pulverizer.addRecipe(<enderio:block_holier_fog>, <enderio:item_material:76>, 50000);

var mapCapacitor as IItemStack[][][string] = {
    "copper" : [
        [
            <enderio:item_basic_capacitor>,
            <thermalexpansion:capacitor:1>,
            <enderio:item_capacitor_grainy>,
        ]
    ],
    "lead" : [
        [
            <enderio:item_capacitor_silver>,
            <thermalexpansion:capacitor:1>,
            <enderio:item_capacitor_grainy>,
        ]
    ],
    "energeticAlloy" : [
        [
            <enderio:item_basic_capacitor:1>,
            <thermalexpansion:capacitor:2>,
            <enderio:item_basic_capacitor>,
        ]
    ],
    "energeticSilver" : [
        [
            <enderio:item_capacitor_energetic_silver>,
            <thermalexpansion:capacitor:2>,
            <enderio:item_capacitor_silver>,
        ]
    ],
    "vibrantAlloy" : [
        [
            <enderio:item_basic_capacitor:2>,
            <thermalexpansion:capacitor:3>,
            <enderio:item_basic_capacitor:1>,
        ]
    ],
    "vividAlloy" : [
        [
            <enderio:item_capacitor_vivid>,
            <thermalexpansion:capacitor:3>,
            <enderio:item_capacitor_energetic_silver>,
        ]
    ],
    "crystallineAlloy" : [
        [
            <enderio:item_capacitor_crystalline>,
            <thermalexpansion:capacitor:4>,
            <enderio:item_basic_capacitor:2>,
        ],
        [
            <enderio:item_capacitor_crystalline>,
            <thermalexpansion:capacitor:4>,
            <enderio:item_capacitor_vivid>,
        ]
    ],
    "melodicAlloy" : [
        [
            <enderio:item_capacitor_melodic>,
            <draconicevolution:draconium_capacitor>,
            <enderio:item_capacitor_crystalline>,
        ]
    ],
    "stellarAlloy" : [
        [
            <enderio:item_capacitor_stellar>,
            <draconicevolution:draconium_capacitor:1>,
            <enderio:item_capacitor_melodic>,
        ]
    ]
};

for metal, data in mapCapacitor {
    for entry in data {
        var nugget as IIngredient = getOreDict("nugget",metal);
        var capacitor as IItemStack = entry[0];
        var battery as IItemStack = entry[1];
        var filler as IItemStack = entry[2];

        recipes.remove(capacitor);
        ThermionicFabricator.addCast(capacitor, [
            [nugget,<contenttweaker:plastic>,nugget],
            [filler,battery,filler],
            [<ic2:itemcable:15>,nugget,<ic2:itemcable:15>]
        ], <liquid:glass> * 200);
    }
}

recipes.remove(<enderio:block_farm_station>);
calc_flawless(<enderio:block_farm_station>,<actuallyadditions:block_farmer>,<enderio:item_material:42>,<enderio:item_material:53>,<thermalexpansion:machine:4>);

recipes.remove(<enderio:block_vacuum_chest>);
calc_basic(<enderio:block_vacuum_chest>, <actuallyadditions:block_ranged_collector>, <enderio:item_material:14>);

SliceNSplice.removeRecipe(<enderio:item_material:41>);
SliceNSplice.addRecipe(<enderio:item_material:41>, [
    <ore:ingotSoularium>, <minecraft:skull:2>, <ore:ingotSoularium>,
    <contenttweaker:electro_silicon>,<integrateddynamics:logic_director>,<contenttweaker:electro_silicon>
], 20000);

SliceNSplice.removeRecipe(<enderio:item_material:40>);
SliceNSplice.addRecipe(<enderio:item_material:40>, [
    <ore:ingotEnergeticAlloy>, <minecraft:skull:2>, <ore:ingotEnergeticAlloy>,
    <contenttweaker:electro_silicon>,capacitorT1,<contenttweaker:electro_silicon>
], 20000);

SliceNSplice.removeRecipe(<enderio:item_material:43>);
SliceNSplice.addRecipe(<enderio:item_material:43>, [
    <ore:ingotSoularium>, <enderio:block_enderman_skull>, <ore:ingotSoularium>,
    <contenttweaker:electro_silicon>,<ore:ingotVibrantAlloy>,<contenttweaker:electro_silicon>
], 20000);

recipes.remove(<enderio:item_item_conduit>);
AlloySmelter.addRecipe(<enderio:item_item_conduit> * 4, [
    <thermaldynamics:duct_32:1>,
    <enderio:item_material:4> * 2,
    <enderio:item_alloy_nugget:5> * 3
], 5000);
AlloySmelter.addRecipe(<enderio:item_item_conduit> * 4, [
    <extrautils2:pipe>,
    <enderio:item_material:4> * 2,
    <enderio:item_alloy_nugget:5> * 3
], 5000);

recipes.remove(<enderio:item_liquid_conduit>);
AlloySmelter.addRecipe(<enderio:item_liquid_conduit> * 4, [
    <thermaldynamics:duct_16>,
    <enderio:item_material:4> * 2,
    <enderio:block_fused_glass> * 3
], 5000);
AlloySmelter.addRecipe(<enderio:item_liquid_conduit> * 4, [
    <extrautils2:pipe>,
    <enderio:item_material:4> * 2,
    <enderio:block_fused_glass> * 3
], 5000);

SliceNSplice.addRecipe(<enderio:item_material>, [
    <ore:plateDawnstone>, <embers:mech_core>, <ore:plateDawnstone>,
    <ore:gearIronInfinity>,<ore:plateLead>,<ore:gearIronInfinity>
], 5000);
SliceNSplice.addRecipe(<enderio:item_material:1>, [
    <enderio:item_material>, <opencomputers:component>, <thermalexpansion:frame:146>,
    <actuallyadditions:item_crystal_empowered:3>,<ore:ingotDarkSteel>,<enderio:item_material:51>
], 10000);
SliceNSplice.addRecipe(<enderio:item_material:53>, [
    <enderio:item_material:1>, <extrautils2:poweroverload>, <thermalexpansion:frame:147>,
    <actuallyadditions:item_crystal_empowered:5>,<ore:ingotSoularium>,<enderio:item_material:52>
], 20000);

AlloySmelter.addRecipe(<enderio:item_material:75>,[<enderio:item_material:20>,<ic2:itemmisc:7>],1500);
AlloySmelter.addRecipe(<enderio:item_material:75>,[<enderio:item_material:20>,<ic2:itemmisc:13>],1500);

recipes.remove(<enderio:item_material:38>);
recipes.addShapeless(<enderio:item_material:38> * 3,[
    <contenttweaker:material_part:94>,
    <extrautils2:ingredients:3>,
    <contenttweaker:lithium_dust>,
    <enderio:block_holier_fog>,
    <enderio:item_material:75>
]);

AlloySmelter.addRecipe(<enderio:item_material:3>, [<botania:managlasspane>,<enderio:item_material:38>,<contenttweaker:electro_silicon>], 15000);
