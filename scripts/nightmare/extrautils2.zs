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

import mods.actuallyadditions.Empowerer;
import mods.astralsorcery.Altar;
import mods.botania.RuneAltar;
import mods.enderio.AlloySmelter;
import mods.extrautils2.Resonator;
import mods.forestry.Carpenter;
import mods.ic2.Extractor;
import mods.jei.JEI;
import mods.tconstruct.Casting;
import mods.thermalexpansion.Transposer;

import moretweaker.draconicevolution.FusionCrafting;

import scripts.functions.calc_basic;
import scripts.functions.calc_scientific;
import scripts.functions.calc_atomic;
import scripts.functions.calc_flawless;

import scripts.mod_functions.betterExplosion;

var survival_generator as IItemStack = <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"});
var furnace_generator as IItemStack = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
var furnace as IItemStack = <extrautils2:machine>.withTag({Type: "extrautils2:furnace"});
var crusher as IItemStack = <extrautils2:machine>.withTag({Type: "extrautils2:crusher"});
var enchanter as IItemStack = <extrautils2:machine>.withTag({Type: "extrautils2:enchanter"});

JEI.removeAndHide(<extrautils2:glasscutter>);

recipes.remove(<extrautils2:decorativesolidwood:1>);
recipes.remove(<extrautils2:magicapple>);

recipes.removeByRecipeName("extrautils2:shortcut_chest");
recipes.removeByRecipeName("extrautils2:shortcut_stick");
recipes.removeByRecipeName("extrautils2:shortcut_hopper");

recipes.removeByRecipeName("extrautils2:machine_base");
Casting.addBasinRecipe(<extrautils2:machine>, <contenttweaker:calculator>, <liquid:iron>, 144 * 4, true, 2000);

recipes.remove(<extrautils2:resonator>);
Altar.addDiscoveryAltarRecipe("resonator", <extrautils2:resonator>, 200, 200, [
    <contenttweaker:black_iron>, <astralsorcery:blockblackmarble>, <contenttweaker:black_iron>,
    <extrautils2:ingredients>, <embers:mech_core>, <extrautils2:ingredients>,
    <contenttweaker:black_iron>, <embers:dust_ember>, <contenttweaker:black_iron>
]);

recipes.remove(<extrautils2:passivegenerator:2>);
Altar.addDiscoveryAltarRecipe("extrautils2_passivegenerator_2", <extrautils2:passivegenerator:2>, 200, 200, [
    <extrautils2:decorativesolid:3>,<extrautils2:ingredients:1>,<extrautils2:decorativesolid:3>,
    <extrautils2:decorativesolid:3>,<botania:rune:2>,<extrautils2:decorativesolid:3>,
    <extrautils2:decorativesolid:3>,<contenttweaker:iron_rotor>,<extrautils2:decorativesolid:3>
]);

recipes.remove(<extrautils2:passivegenerator:3>);
Altar.addDiscoveryAltarRecipe("extrautils2_passivegenerator_3", <extrautils2:passivegenerator:3>, 200, 200, [
    <extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,
    <extrautils2:ingredients:1>,<botania:rune>,<contenttweaker:iron_rotor>,
    <extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>
]);

recipes.remove(<extrautils2:passivegenerator:4>);
Altar.addDiscoveryAltarRecipe("extrautils2_passivegenerator_4", <extrautils2:passivegenerator:4>, 200, 200, [
    <extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,
    <contenttweaker:iron_rotor>,<botania:rune:3>,<extrautils2:ingredients:1>,
    <extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>
]);

recipes.remove(<extrautils2:passivegenerator:5>);
Altar.addDiscoveryAltarRecipe("extrautils2_passivegenerator_5", <extrautils2:passivegenerator:5>, 200, 200, [
    <extrautils2:decorativesolid:3>,<contenttweaker:iron_rotor>,<extrautils2:decorativesolid:3>,
    <extrautils2:decorativesolid:3>,<botania:rune:1>,<extrautils2:decorativesolid:3>,
    <extrautils2:decorativesolid:3>,<extrautils2:ingredients:1>,<extrautils2:decorativesolid:3>
]);

recipes.remove(<extrautils2:passivegenerator:8>);
Altar.addAttunementAltarRecipe("extrautils2_passivegenerator_8", <extrautils2:passivegenerator:8>, 500, 800, [
    <extrautils2:decorativesolid:3>,
    <contenttweaker:iron_rotor>,
    <extrautils2:decorativesolid:3>,
    <extrautils2:ingredients:1>,
    <draconicevolution:dragon_heart>,
    <extrautils2:ingredients:1>,
    <extrautils2:decorativesolid:3>,
    <botanicadds:gaiasteel_block>,
    <extrautils2:decorativesolid:3>,
    <extrautils2:ingredients:2>,
    <extrautils2:ingredients:2>,
    <botania:storage:4>,
    <botania:storage:4>,
]);

recipes.remove(<extrautils2:snowglobe>);
Altar.addConstellationAltarRecipe("snowglobe", <extrautils2:snowglobe>, 800, 200, [
    <ore:slabWood>,
    <naturescompass:naturescompass>,
    <ore:treeLeaves>,
    <ore:logWood>,
    <ore:doorWood>,
    <ore:treeSapling>,
    <minecraft:grass>,
    <minecraft:grass>,
    <minecraft:grass>,
    <botania:elfglasspane>,
    <botania:elfglasspane>,
    <contenttweaker:starsteel_ingot>,
    <contenttweaker:starsteel_ingot>,
    <botania:elfglasspane>,
    <botania:elfglasspane>,
    <botania:elfglasspane>,
    <botania:elfglasspane>,
    <botania:elfglasspane>,
    <botania:elfglasspane>,
    <contenttweaker:starsteel_ingot>,
    <contenttweaker:starsteel_ingot>,
]);

recipes.remove(<extrautils2:flattransfernode>);
Extractor.addRecipe(<extrautils2:flattransfernode> * 2, <extrautils2:grocket>);

recipes.remove(<extrautils2:flattransfernode:1>);
Extractor.addRecipe(<extrautils2:flattransfernode:1> * 2, <extrautils2:grocket:2>);

recipes.remove(<extrautils2:interactionproxy>);
calc_flawless(<extrautils2:interactionproxy>, <actuallyadditions:block_phantomface>, <actuallyadditions:block_phantom_liquiface>, <actuallyadditions:block_phantom_energyface>, <extrautils2:powermanager>);

recipes.addShapeless(<extrautils2:drum>, [<extrautils2:drum>]);

recipes.remove(<extrautils2:drum:1>);
recipes.addShapeless(<extrautils2:drum:1>, [<extrautils2:drum:1>]);
calc_basic(<extrautils2:drum:1>, <extrautils2:drum>, <contenttweaker:reinforced_iron_block>);

recipes.remove(<extrautils2:drum:2>);
recipes.addShapeless(<extrautils2:drum:2>, [<extrautils2:drum:2>]);
calc_atomic(<extrautils2:drum:2>, <contenttweaker:flawless_block>, <extrautils2:drum:1>, <contenttweaker:enriched_gold_block>);

recipes.remove(<extrautils2:drum:3>);
recipes.addShapeless(<extrautils2:drum:3>, [<extrautils2:drum:3>]);
calc_flawless(<extrautils2:drum:3>, <extrautils2:simpledecorative:1>, <extrautils2:drum:2>, <extrautils2:klein>, <extrautils2:simpledecorative:1>);

recipes.remove(<extrautils2:ingredients:2>);
calc_scientific(<extrautils2:ingredients:2>, <minecraft:ender_eye>, <extrautils2:ingredients>);

recipes.remove(<extrautils2:angelblock>);
calc_scientific(<extrautils2:angelblock>, <contenttweaker:purifiedobsidian>, <xreliquary:angelic_feather>);

recipes.remove(<extrautils2:minichest>);
calc_scientific(<extrautils2:minichest> * 8, <minecraft:chest>, <minecraft:stick>);

recipes.remove(<extrautils2:largishchest>);
calc_basic(<extrautils2:largishchest>, <minecraft:chest>, <ic2:blockscaffold>);

recipes.remove(<extrautils2:unstableingots:0>);
calc_scientific(<extrautils2:unstableingots:0>, <ore:ingotIron>, <ore:gemDiamond>);

recipes.remove(<extrautils2:unstableingots:1>);
calc_scientific(<extrautils2:unstableingots:1>, <ore:nuggetIron>, <ore:gemDiamond>);

recipes.remove(<extrautils2:goldenlasso>);
calc_atomic(<extrautils2:goldenlasso>, <enderutilities:enderlasso>, <ore:ingotGold>, <astralsorcery:itemusabledust>);

recipes.remove(<extrautils2:goldenlasso:1>);
calc_atomic(<extrautils2:goldenlasso:1>, <enderutilities:enderlasso>, <extrautils2:ingredients:10>, <astralsorcery:itemusabledust:1>);

recipes.remove(<extrautils2:terraformer:9>);
calc_atomic(<extrautils2:terraformer:9>,<extrautils2:machine>,<gendustry:climate_module>,<ic2:itemmisc:451>);

Resonator.remove(<extrautils2:ingredients:9>);
Resonator.add(<extrautils2:ingredients:9>, <contenttweaker:enriched_gold_block>, 800, false);

Resonator.remove(<extrautils2:ingredients:13>);
JEI.removeAndHide(<extrautils2:ingredients:13>);
Resonator.add(<contenttweaker:heating_coil>, <embers:superheater>, 1500, false);

Resonator.remove(<extrautils2:decorativesolid:3>);
Resonator.add(<extrautils2:decorativesolid:3>, <botania:pavement:1>, 800, false);

Resonator.add(<contenttweaker:red_coal>, <abyssalcraft:charcoal>, 3200, true);

Resonator.remove(<extrautils2:decorativesolid:7>);
Resonator.add(<extrautils2:decorativesolid:7>, <actuallyadditions:block_testifi_bucks_white_wall>, 800, false);

recipes.remove(<extrautils2:passivegenerator:1>);
Resonator.add(<extrautils2:passivegenerator:1>, <extrautils2:passivegenerator>, 1600, false);

Resonator.add(<extrautils2:decorativeglass:5>, <immersiveengineering:stone_decoration:8>, 100, false);

recipes.remove(<extrautils2:quarryproxy>);
Resonator.add(<extrautils2:quarryproxy>, <ic2:blockmachinelv:12>, 64000, false);

recipes.remove(<extrautils2:endershard>);
betterExplosion(<extrautils2:endershard> * 8, <minecraft:ender_pearl>);

recipes.remove(<extrautils2:suncrystal:250>);
Transposer.addFillRecipe(<extrautils2:suncrystal:250>, <actuallyadditions:item_crystal:2>, <liquid:liquid_sunshine> * 1000, 25000);

recipes.remove(<extrautils2:klein>);
Transposer.addFillRecipe(<extrautils2:klein>, <botania:manabottle>, <liquid:ender> * 1000, 25000);

recipes.remove(<extrautils2:decorativeglass:4>);
Transposer.addFillRecipe(<extrautils2:decorativeglass:4>, <extrautils2:decorativeglass>, <liquid:glowstone> * 1000, 10000);

recipes.remove(enchanter);
RuneAltar.addRecipe(enchanter, [
    <extrautils2:machine>,
    <minecraft:enchanting_table>,
    <thermalfoundation:material:1028>,
    <abyssalcraft:platec>,
    <contenttweaker:rune_legendary>,
    <minecraft:bookshelf>
], 40000);

recipes.remove(survival_generator);
recipes.addShaped(survival_generator, [
    [<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>],
    [<minecraft:cobblestone>,<minecraft:coal>,<minecraft:cobblestone>],
    [<ore:dustRedstone>,furnace_generator,<ore:dustRedstone>]
]);

recipes.remove(furnace_generator);
recipes.addShaped(furnace_generator, [
    [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],
    [<ore:ingotIron>,<minecraft:furnace>,<ore:ingotIron>],
    [<ore:dustRedstone>,<rftools:machine_frame>,<ore:dustRedstone>]
]);

recipes.remove(furnace);
recipes.addShaped(furnace, [
    [<minecraft:brick>,<minecraft:brick>,<minecraft:brick>],
    [<minecraft:brick>,<rftools:machine_frame>,<minecraft:brick>],
    [<minecraft:brick>,<minecraft:brick>,<minecraft:brick>]
]);

recipes.remove(crusher);
recipes.addShaped(crusher, [
    [<ore:ingotIron>,<minecraft:piston>,<ore:ingotIron>],
    [<ore:ingotIron>,<rftools:machine_frame>,<ore:ingotIron>],
    [<ore:ingotIron>,<minecraft:piston>,<ore:ingotIron>]
]);

recipes.remove(<extrautils2:passivegenerator>);
recipes.addShaped(<extrautils2:passivegenerator> * 8, [
    [<forestry:thermionic_tubes:11>,<forestry:thermionic_tubes:11>,<forestry:thermionic_tubes:11>],
    [<botania:pavement:1>,<immersiveengineering:material:27>,<botania:pavement:1>]
]);

recipes.remove(<extrautils2:pipe>);
AlloySmelter.addRecipe(<extrautils2:pipe>, [<embers:pipe>, <ore:ingotConductiveIron>, <embers:item_pipe>], 10000);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <extrautils2:ingredients> : [
        [
            [<ore:dustRedstone>,<extrautils2:endershard>,<ore:dustRedstone>],
            [<extrautils2:endershard>,<ore:gemAquamarine>,<extrautils2:endershard>],
            [<ore:dustRedstone>,<extrautils2:endershard>,<ore:dustRedstone>]
        ]
    ],
    <extrautils2:ingredients:1> : [
        [
            [null,<extrautils2:ingredients>,null],
            [<extrautils2:ingredients>,<contenttweaker:runic_gear>,<extrautils2:ingredients>],
            [null,<extrautils2:ingredients>,null]
        ]
    ],
    <extrautils2:passivegenerator:7> : [
        [
            [null,<extrautils2:ingredients:1>,null],
            [<botania:pavement:1>,<immersiveengineering:material:8>,<botania:pavement:1>]
        ]
    ],
    <extrautils2:teleporter:1> : [
        [
            [<extrautils2:compressedcobblestone:4>,<actuallyadditions:item_crystal_empowered:3>,<extrautils2:compressedcobblestone:4>],
            [<actuallyadditions:item_crystal_empowered:3>,<embers:glimmer_lamp>.noReturn(),<actuallyadditions:item_crystal_empowered:3>],
            [<extrautils2:compressedcobblestone:4>,<actuallyadditions:item_crystal_empowered:3>,<extrautils2:compressedcobblestone:4>]
        ]
    ],
    <extrautils2:decorativesolid:4> : [
        [
            [<thermalfoundation:material:770>,<earthworks:item_sand>,<thermalfoundation:material:770>],
            [<earthworks:item_sand>,<ore:blockGlassColorless>,<earthworks:item_sand>],
            [<thermalfoundation:material:770>,<earthworks:item_sand>,<thermalfoundation:material:770>]
        ]
    ],
    <extrautils2:poweroverload> : [
        [
            [<ore:ingotEnder>,<enderio:item_material:15>,<ore:ingotEnder>],
            [<contenttweaker:energy_module>,<ic2:itemmisc:451>,<contenttweaker:energy_module>],
            [<ore:ingotEnder>,<botanicadds:rune_energy>,<ore:ingotEnder>]
        ]
    ],
    <extrautils2:powerbattery> : [
        [
            [<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>],
            [<extrautils2:grocket:6>,<immersiveengineering:metal_device0:2>,<extrautils2:grocket:6>],
            [<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>,<extrautils2:decorativesolid:3>]
        ]
    ],
    <extrautils2:wateringcan:1000> : [
        [
            [<contenttweaker:plastic>,<actuallyadditions:item_fertilizer>,null],
            [<contenttweaker:plastic>,<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),<contenttweaker:plastic>],
            [null,<contenttweaker:plastic>,null]
        ]
    ],
    <extrautils2:terraformer:1> : [
        [
            [<xnet:antenna>],
            [<xnet:antenna_base>],
            [<extrautils2:terraformer:9>]
        ]
    ],
    <extrautils2:opinium> : [
        [
            [null,<contenttweaker:red_coal>,null],
            [<contenttweaker:red_coal>,<ore:blockIron>,<contenttweaker:red_coal>],
            [null,<contenttweaker:red_coal>,null]
        ]
    ]
};

recipes.addShaped(<extrautils2:ingredients> * 4, [
    [<ore:dustRedstone>,<extrautils2:endershard>,<ore:dustRedstone>],
    [<extrautils2:endershard>,<astralsorcery:itemcraftingcomponent:4>,<extrautils2:endershard>],
    [<ore:dustRedstone>,<extrautils2:endershard>,<ore:dustRedstone>]
]);

for key, value in recipeMapShaped {
	var index as int = 0;    
    recipes.remove(key);

    for recipe in value {
        var name as string = "ct_"+toString(key)+"_"+index;
        recipes.addShaped(name, key, recipe);
        index += 1;
    }
}

recipes.remove(<extrautils2:filter>);
recipes.addShapeless(<extrautils2:filter>, [<extrautils2:filter>]); // clear nbt
recipes.addShaped(<extrautils2:filter>, [
    [<actuallyadditions:item_crystal>,<forestry:oak_stick>,<actuallyadditions:item_crystal>],
    [<forestry:oak_stick>,<forestry:crafting_material:3>,<forestry:oak_stick>],
    [<actuallyadditions:item_crystal>,<forestry:oak_stick>,<actuallyadditions:item_crystal>]
]);

recipes.remove(<extrautils2:filterfluids>);
recipes.addShapeless(<extrautils2:filterfluids>, [<extrautils2:filterfluids>]); // clear nbt
recipes.addShaped(<extrautils2:filterfluids>, [
    [<actuallyadditions:item_crystal:1>,<forestry:oak_stick>,<actuallyadditions:item_crystal:1>],
    [<forestry:oak_stick>,<forestry:crafting_material:3>,<forestry:oak_stick>],
    [<actuallyadditions:item_crystal:1>,<forestry:oak_stick>,<actuallyadditions:item_crystal:1>]
]);

recipes.remove(<extrautils2:grocket>);
recipes.addShaped(<extrautils2:grocket> * 2, [
    [<actuallyadditions:item_crystal>,<extrautils2:pipe>,<actuallyadditions:item_crystal>],
    [<ore:ingotElectricalSteel>,<thermaldynamics:servo>,<ore:ingotElectricalSteel>]
]);

recipes.remove(<extrautils2:grocket:2>);
recipes.addShaped(<extrautils2:grocket:2> * 2, [
    [<actuallyadditions:item_crystal:1>,<extrautils2:pipe>,<actuallyadditions:item_crystal:1>],
    [<ore:ingotElectricalSteel>,<thermaldynamics:servo>,<ore:ingotElectricalSteel>]
]);

recipes.remove(<extrautils2:grocket:1>);
recipes.addShaped(<extrautils2:grocket:1> * 2, [
    [<actuallyadditions:item_crystal:1>,<extrautils2:pipe>,<actuallyadditions:item_crystal:1>],
    [<ore:ingotElectricalSteel>,<extrautils2:filter>,<ore:ingotElectricalSteel>]
]);

recipes.remove(<extrautils2:grocket:6>);
recipes.addShaped(<extrautils2:grocket:6> * 2, [
    [<ore:plateElectrum>,<extrautils2:pipe>,<ore:plateElectrum>],
    [<ore:ingotElectricalSteel>,<ore:ingotConductiveIron>,<ore:ingotElectricalSteel>]
]);

recipes.remove(<extrautils2:powertransmitter>);
recipes.addShaped(<extrautils2:powertransmitter> * 2, [
    [null,<extrautils2:ingredients>,null],
    [<extrautils2:decorativesolid:3>,<extrautils2:grocket:6>,<extrautils2:decorativesolid:3>]
]);

recipes.remove(<extrautils2:grocket:3>);
Empowerer.addRecipe(<extrautils2:grocket:3>, <extrautils2:grocket>, <minecraft:ender_pearl>, <actuallyadditions:item_crystal:4>, <minecraft:ender_pearl>, <actuallyadditions:item_crystal:4>, 8192, 100, [0.1, 0.1, 0.1]);

recipes.remove(<extrautils2:grocket:4>);
Empowerer.addRecipe(<extrautils2:grocket:4>, <extrautils2:grocket:2>, <minecraft:ender_pearl>, <actuallyadditions:item_crystal:2>, <minecraft:ender_pearl>, <actuallyadditions:item_crystal:2>, 8192, 100, [0.1, 0.1, 0.1]);

recipes.remove(<extrautils2:spike_wood>);
calc_basic(<extrautils2:spike_wood>, <astralsorcery:blockinfusedwood>, <bloodarsenal:base_item>);
calc_basic(<extrautils2:spike_wood>, <astralsorcery:blockinfusedwood>, <tconstruct:punji>);
calc_basic(<extrautils2:spike_wood>, <astralsorcery:blockinfusedwood>, <contenttweaker:bone_shard>);
calc_basic(<extrautils2:spike_wood>, <astralsorcery:blockinfusedwood>, <contenttweaker:flint_shard>);

recipes.remove(<extrautils2:spike_stone>);
calc_scientific(<extrautils2:spike_stone>, <extrautils2:spike_wood>, <sonarcore:stablestone_normal>);

recipes.remove(<extrautils2:spike_iron>);
calc_atomic(<extrautils2:spike_iron>, <contenttweaker:reinforced_iron_block>, <extrautils2:spike_stone>, <contenttweaker:reinforced_iron_block>);

recipes.remove(<extrautils2:spike_gold>);
calc_atomic(<extrautils2:spike_gold>, <contenttweaker:enriched_gold_block>, <extrautils2:spike_iron>, <contenttweaker:enriched_gold_block>);

recipes.remove(<extrautils2:spike_diamond>);
calc_atomic(<extrautils2:spike_diamond>, <contenttweaker:flawless_block>, <extrautils2:spike_gold>, <contenttweaker:flawless_block>);

recipes.remove(<extrautils2:grocket:5>);
calc_scientific(<extrautils2:grocket:5> * 4, <extrautils2:pipe>, <extrautils2:filter>);

recipes.remove(<extrautils2:ingredients:6>);
Carpenter.addRecipe(<extrautils2:ingredients:6>, [
    [<minecraft:redstone>,<ore:nuggetGold>,<minecraft:redstone>],
    [<ore:nuggetGold>,<ore:ingotGold>,<ore:nuggetGold>],
    [<minecraft:redstone>,<ore:ingotGold>,<minecraft:redstone>]
], 20, <liquid:for.honey> * 250, <extrautils2:ingredients:9>);

recipes.remove(<extrautils2:ingredients:8>);
Carpenter.addRecipe(<extrautils2:ingredients:8>, [
    [<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>],
    [<minecraft:redstone>,<ore:stickWood>,<minecraft:redstone>],
    [<minecraft:redstone>,<ore:stickWood>,<minecraft:redstone>]
], 20, <liquid:for.honey> * 250, <extrautils2:ingredients:9>);

recipes.remove(<extrautils2:ingredients:7>);
Carpenter.addRecipe(<extrautils2:ingredients:7>, [
    [<minecraft:redstone>,<ore:nuggetGold>,<minecraft:redstone>],
    [<ore:nuggetGold>,<ore:ingotGold>,<ore:nuggetGold>],
    [<ore:ingotGold>,<ore:blockGold>,<ore:ingotGold>]
], 20, <liquid:for.honey> * 250, <extrautils2:ingredients:9>);

recipes.remove(<extrautils2:ingredients:15>);
Carpenter.addRecipe(<extrautils2:ingredients:15>, [
    [<extrautils2:magicapple>,<ore:ingotEnchantedMetal>,<extrautils2:magicapple>],
    [<ore:ingotEnchantedMetal>,<extrautils2:ingredients:6>,<ore:ingotEnchantedMetal>],
    [<extrautils2:magicapple>,<ore:ingotEnchantedMetal>,<extrautils2:magicapple>]
], 20, <liquid:for.honey> * 500, <extrautils2:decorativesolidwood:1>);

recipes.remove(<extrautils2:ingredients:16>);
Carpenter.addRecipe(<extrautils2:ingredients:16>, [
    [<extrautils2:ingredients:10>,<ore:ingotEvilMetal>,<extrautils2:ingredients:10>],
    [<ore:ingotEvilMetal>,<extrautils2:ingredients:15>,<ore:ingotEvilMetal>],
    [<extrautils2:ingredients:10>,<ore:ingotEvilMetal>,<extrautils2:ingredients:10>]
], 20, <liquid:for.honey> * 1000, <extrautils2:simpledecorative:1>);

recipes.remove(<extrautils2:rainbowgenerator>);
FusionCrafting.add(<extrautils2:rainbowgenerator>, <embers:winding_gears> * 64, FusionCrafting.BASIC, 1000000000, [
    <extrautils2:rainbowgenerator:2>,
    <extrautils2:rainbowgenerator:2>,
    <quantumflux:zeropointextractor>,
    <quantumflux:zeropointextractor>,
    <extrautils2:rainbowgenerator:1>,
    <extrautils2:rainbowgenerator:1>,
]);

recipes.remove(<extrautils2:quarry>);
Empowerer.addRecipe(<extrautils2:quarry>, <actuallyadditions:block_misc:8>, <immersiveengineering:metal_device1:7>, <extrautils2:snowglobe:1>, <simplevoidworld:portal>, <actuallyadditions:block_miner>, 8192, 100, [0.1, 0.1, 0.1]);
