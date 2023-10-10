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

import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Empowerer;
import mods.astralsorcery.Altar;
import mods.forestry.Carpenter;
import mods.ic2.Macerator;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.Crusher as IECrusher;
import mods.jei.JEI;
import mods.thermalexpansion.Pulverizer;

import scripts.functions.calc_basic;
import scripts.functions.calc_scientific;
import scripts.functions.calc_atomic;

JEI.removeAndHide(<actuallyadditions:block_coal_generator>);
JEI.removeAndHide(<actuallyadditions:block_leaf_generator>);
JEI.removeAndHide(<actuallyadditions:block_grinder>);
JEI.removeAndHide(<actuallyadditions:block_grinder_double>);
JEI.removeAndHide(<actuallyadditions:block_furnace_double>);
JEI.removeAndHide(<actuallyadditions:block_enervator>);
JEI.removeAndHide(<actuallyadditions:block_energizer>);

<actuallyadditions:item_misc:19>.displayName = "Dragon Star";

recipes.remove(<actuallyadditions:item_food:7>);
furnace.addRecipe(<actuallyadditions:item_food:7>,<harvestcraft:noodlesitem>);

recipes.remove(<actuallyadditions:block_greenhouse_glass>);
recipes.addShaped(<actuallyadditions:block_greenhouse_glass> * 4, [
    [<ore:blockGlassHardened>,<forestry:crafting_material:7>,<ore:blockGlassHardened>],
    [<forestry:crafting_material:7>,<actuallyadditions:item_crystal_empowered:1>,<forestry:crafting_material:7>],
    [<ore:blockGlassHardened>,<forestry:crafting_material:7>,<ore:blockGlassHardened>]
]);

recipes.remove(<actuallyadditions:block_misc:7>);
recipes.addShaped(<actuallyadditions:block_misc:7> * 16, [
    [<actuallyadditions:block_crystal:5>,<actuallyadditions:block_crystal:5>,<actuallyadditions:block_crystal:5>],
    [<actuallyadditions:block_crystal:5>,<actuallyadditions:block_misc:9>,<actuallyadditions:block_crystal:5>],
    [<actuallyadditions:block_crystal:5>,<actuallyadditions:block_crystal:5>,<actuallyadditions:block_crystal:5>]
]);

recipes.remove(<actuallyadditions:item_misc:12>);
recipes.addShaped(<actuallyadditions:item_misc:12> * 4, [
    [null,<actuallyadditions:item_misc:9>,null],
    [<actuallyadditions:item_misc:9>,<ore:listAllwater>,<actuallyadditions:item_misc:9>],
    [null,<actuallyadditions:item_misc:9>,null]
]);

recipes.remove(<actuallyadditions:block_furnace_solar>);
recipes.addShaped(<actuallyadditions:block_furnace_solar> * 2, [
    [<contenttweaker:small_tanzanite>,<contenttweaker:small_tanzanite>,<contenttweaker:small_tanzanite>],
    [<extrautils2:passivegenerator>,<extrautils2:passivegenerator>,<extrautils2:passivegenerator>],
    [<immersiveengineering:material:27>,<actuallyadditions:block_misc:9>,<immersiveengineering:material:27>]
]);

Macerator.addRecipe(<actuallyadditions:item_dust:7>,<actuallyadditions:item_misc:5>);

recipes.remove(<actuallyadditions:block_giant_chest>);
calc_atomic(<actuallyadditions:block_giant_chest>, <abyssalcraft:crate>, <contenttweaker:storage_module>, <abyssalcraft:crate>);

recipes.remove(<actuallyadditions:block_giant_chest_medium>);
calc_atomic(<actuallyadditions:block_giant_chest_medium>, <actuallyadditions:block_giant_chest>, <contenttweaker:storage_module>, <actuallyadditions:block_giant_chest>);

recipes.remove(<actuallyadditions:block_giant_chest_large>);
calc_atomic(<actuallyadditions:block_giant_chest_large>, <actuallyadditions:block_giant_chest_medium>, <contenttweaker:storage_module>, <actuallyadditions:block_giant_chest_medium>);

recipes.remove(<actuallyadditions:item_crate_keeper>);
calc_basic(<actuallyadditions:item_crate_keeper>, <actuallyadditions:block_misc:2>, <tconstruct:cast>);

recipes.remove(<actuallyadditions:item_chest_to_crate_upgrade>);
calc_atomic(<actuallyadditions:item_chest_to_crate_upgrade>, <actuallyadditions:block_giant_chest>,<tconstruct:cast>, <contenttweaker:storage_module>);

recipes.remove(<actuallyadditions:item_small_to_medium_crate_upgrade>);
calc_atomic(<actuallyadditions:item_small_to_medium_crate_upgrade>, <actuallyadditions:block_giant_chest_medium>, <tconstruct:cast>, <contenttweaker:storage_module>);

recipes.remove(<actuallyadditions:item_medium_to_large_crate_upgrade>);
calc_atomic(<actuallyadditions:item_medium_to_large_crate_upgrade>, <actuallyadditions:block_giant_chest_large>, <tconstruct:cast>, <contenttweaker:storage_module>);

recipes.remove(<actuallyadditions:item_crafter_on_a_stick>);
calc_basic(<actuallyadditions:item_crafter_on_a_stick>,<minecraft:crafting_table>,<minecraft:sign>);

recipes.remove(<actuallyadditions:item_void_bag>);
calc_scientific(<actuallyadditions:item_void_bag>, <actuallyadditions:item_bag>, <actuallyadditions:item_crystal_empowered:3>);

recipes.remove(<actuallyadditions:item_misc:18>);
calc_basic(<actuallyadditions:item_misc:18>,<contenttweaker:crystal_prism>,<astralsorcery:itemcraftingcomponent:3>);

recipes.remove(<actuallyadditions:item_misc:14>);
calc_basic(<actuallyadditions:item_misc:14>,<ic2:itemmisc:454>,<ore:cropCoffee>);

var recipeMapShaped as IIngredient[][][IItemStack] = {
    <actuallyadditions:item_misc:7>	: [
    	[null,<immersiveengineering:wirecoil:5>,<ore:plankTreatedWood>],
    	[<immersiveengineering:wirecoil:5>,<contenttweaker:copper_coil>,<immersiveengineering:wirecoil:5>],
    	[<ore:plankTreatedWood>,<immersiveengineering:wirecoil:5>,null]
    ],
    <actuallyadditions:item_misc:8>	: [
    	[null,<immersiveengineering:wirecoil:1>,<ore:plankTreatedWood>],
    	[<immersiveengineering:wirecoil:1>,<actuallyadditions:item_misc:7>,<immersiveengineering:wirecoil:1>],
    	[<ore:plankTreatedWood>,<immersiveengineering:wirecoil:1>,null]
    ],
	<actuallyadditions:block_misc:9> : [
		[<contenttweaker:black_iron>,<forestry:chipsets>,<contenttweaker:black_iron>],
		[<ore:stickAluminum>,<extrautils2:machine>,<ore:stickAluminum>],
		[<contenttweaker:black_iron>,<embers:aspectus_dawnstone>,<contenttweaker:black_iron>]
	],
    <actuallyadditions:item_misc:2> : [
        [<immersiveengineering:material:4>,<minecraft:flint>],
        [<minecraft:flint>,<immersiveengineering:material:4>]
    ],
    <actuallyadditions:item_misc:3> : [
        [<immersiveengineering:material:4>,<ore:stickWood>],
        [<ore:stickWood>,<immersiveengineering:material:4>]
    ],
    <actuallyadditions:item_knife> : [
        [<immersiveengineering:material:4>,<actuallyadditions:item_misc:2>],
        [<actuallyadditions:item_misc:3>,<immersiveengineering:material:4>]
    ],
    <actuallyadditions:block_misc:4> : [
        [<tconstruct:pattern>,<openmodularturrets:intermediate_tiered:10>,<tconstruct:pattern>],
        [<openmodularturrets:intermediate_tiered:10>,<ic2:itembarrel>,<openmodularturrets:intermediate_tiered:10>],
        [<tconstruct:pattern>,<openmodularturrets:intermediate_tiered:10>,<tconstruct:pattern>]
    ],
    <actuallyadditions:block_display_stand> : [
        [<superiorshields:thermal_shield_reinforced>,<xreliquary:pedestal>,<superiorshields:thermal_shield_reinforced>],
        [<actuallyadditions:block_testifi_bucks_green_wall>,<actuallyadditions:block_misc:9>,<actuallyadditions:block_testifi_bucks_green_wall>],
        [<actuallyadditions:block_testifi_bucks_white_wall>,<forestry:chipsets:2>,<actuallyadditions:block_testifi_bucks_white_wall>]
    ],
    <actuallyadditions:block_empowerer> : [
        [<botania:managlass>,<astralsorcery:itemcraftingcomponent:4>,<botania:managlass>],
        [<enderio:item_material:12>,<actuallyadditions:block_display_stand>,<enderio:item_material:12>],
        [<actuallyadditions:item_battery>,<thermalexpansion:frame>,<actuallyadditions:item_battery>]
    ],
    <actuallyadditions:block_canola_press> : [
        [<ore:cobblestone>,<actuallyadditions:item_crystal:5>,<ore:cobblestone>],
        [<ore:cobblestone>,<extrautils2:machine>,<ore:cobblestone>],
        [<ore:cobblestone>,<actuallyadditions:item_misc:8>,<ore:cobblestone>]
    ],
    <actuallyadditions:block_fermenting_barrel> : [
        [<ore:logWood>,<actuallyadditions:item_crystal:5>,<ore:logWood>],
        [<ore:logWood>,<actuallyadditions:block_misc:4>,<ore:logWood>],
        [<ore:logWood>,<actuallyadditions:item_misc:8>,<ore:logWood>]
    ],
    <actuallyadditions:block_oil_generator> : [
        [<ore:cobblestone>,<actuallyadditions:item_misc:8>,<ore:cobblestone>],
        [<ore:cobblestone>,<extrautils2:machine>,<ore:cobblestone>],
        [<ore:cobblestone>,<minecraft:furnace>,<ore:cobblestone>]
    ],
    <actuallyadditions:block_misc:8> : [
        [<actuallyadditions:item_crystal_empowered:2>,<ore:gearGelidEnderium>,<actuallyadditions:item_crystal_empowered:2>],
        [<ore:gearGelidEnderium>,<thermalexpansion:frame:148>,<ore:gearGelidEnderium>],
        [<actuallyadditions:item_crystal_empowered:2>,<ore:gearGelidEnderium>,<actuallyadditions:item_crystal_empowered:2>]
    ],
    <actuallyadditions:block_laser_relay> * 4 : [
        [null,<botania:lens:10>,null],
        [<actuallyadditions:item_crystal>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal>],
        [<contenttweaker:reinforced_obsidian_ingot>,<ic2:itembatcrystal>,<contenttweaker:reinforced_obsidian_ingot>]
    ],
    <actuallyadditions:block_laser_relay_fluids> * 4 : [
        [null,<botania:lens:10>,null],
        [<minecraft:bucket>,<actuallyadditions:item_misc:8>,<minecraft:bucket>],
        [<contenttweaker:reinforced_obsidian_ingot>,<ic2:itembatcrystal>,<contenttweaker:reinforced_obsidian_ingot>]
    ],
    <actuallyadditions:block_laser_relay_item> * 4 : [
        [null,<botania:lens:10>,null],
        [<metalchests:metal_chest:2>,<actuallyadditions:item_misc:8>,<metalchests:metal_chest:2>],
        [<contenttweaker:reinforced_obsidian_ingot>,<ic2:itembatcrystal>,<contenttweaker:reinforced_obsidian_ingot>]
    ],
    <actuallyadditions:block_battery_box> : [
        [<ore:plateSteel>,<thermalfoundation:material:515>,<ore:plateSteel>],
        [<ore:gearElectrum>,<rs_ctr:power_hub>,<ore:gearElectrum>]
    ],
    <actuallyadditions:item_bag> : [
        [null,null,<actuallyadditions:item_crystal:3>],
        [null,<forestry:oak_stick>,<toolbelt:pouch>],
        [<forestry:oak_stick>,null,null]
    ],
    <actuallyadditions:item_misc:6> : [
        [<ore:ingotAlubrass>,<ore:ingotLumium>,<ore:ingotAlubrass>],
        [<ore:ingotLumium>,<botania:spark>,<ore:ingotLumium>],
        [<ore:ingotAlubrass>,<ore:ingotLumium>,<ore:ingotAlubrass>]
    ],
    <actuallyadditions:block_compost> : [
        [<earthworks:item_timber>,null,<earthworks:item_timber>],
        [<earthworks:item_timber>,null,<earthworks:item_timber>],
        [<earthworks:item_timber>,<actuallyadditions:block_misc:4>,<earthworks:item_timber>]
    ],
    <actuallyadditions:item_drill:3> : [
        [null,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_crystal_empowered:2>],
        [<actuallyadditions:item_misc:8>,<immersiveengineering:drillhead>,<actuallyadditions:block_crystal_empowered:2>],
        [<immersiveengineering:drill>,<actuallyadditions:item_misc:8>,null]
    ],
    <actuallyadditions:item_leaf_blower> : [
        [null,<immersiveengineering:metal_device1:6>],
        [<actuallyadditions:item_crystal:5>,<contenttweaker:electric_motor>],
        [<actuallyadditions:item_crystal:5>,<thermalfoundation:material:640>]
    ],
    <actuallyadditions:item_leaf_blower_advanced> : [
        [null,<actuallyadditions:item_misc:8>],
        [<actuallyadditions:item_crystal:2>,<actuallyadditions:item_leaf_blower>],
        [<actuallyadditions:item_crystal:2>,<opencomputers:material:7>]
    ],
    <actuallyadditions:item_filling_wand> : [
        [<actuallyadditions:item_crystal_empowered:4>,<notenoughwands:building_wand>,<actuallyadditions:item_crystal_empowered:4>],
        [<actuallyadditions:item_misc:8>,<thermalfoundation:material:640>,<actuallyadditions:item_misc:8>],
        [null,<actuallyadditions:item_battery_triple>,null]
    ],
    <actuallyadditions:item_misc:20> : [
        [<minecraft:magma_cream>,<actuallyadditions:item_crystal_empowered:1>,<minecraft:magma_cream>],
        [<actuallyadditions:item_crystal_empowered:1>,<enderio:block_dark_iron_bars>,<actuallyadditions:item_crystal_empowered:1>],
        [<minecraft:magma_cream>,<actuallyadditions:item_crystal_empowered:1>,<minecraft:magma_cream>]
    ]
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}

var recipeMapShapeless as IIngredient[][IItemStack] = {
    <actuallyadditions:item_misc:9>	:[
    	<harvestcraft:mixingbowlitem>,<ore:listAllwater>,<ore:dustSalt>,
    	<actuallyadditions:item_food:16>,<ore:foodFlour>
    ],
    <actuallyadditions:item_misc:4> : [
        <harvestcraft:doughitem>,<ore:foodFlour>
    ]
};

for key, value in recipeMapShapeless {
	recipes.remove(key);
    recipes.addShapeless(key, value);
}

IECrusher.addRecipe(<actuallyadditions:item_misc:5>*4, <actuallyadditions:block_misc:2>, 800, null, 0);
Pulverizer.addRecipe(<actuallyadditions:item_misc:5>*4, <actuallyadditions:block_misc:2>, 3000, null, 0);

var listCrystal as IItemStack[] = [
    <actuallyadditions:block_crystal_empowered>,
    <actuallyadditions:block_crystal_empowered:1>,
    <actuallyadditions:block_crystal_empowered:2>,
    <actuallyadditions:block_crystal_empowered:3>,
    <actuallyadditions:block_crystal_empowered:4>,
    <actuallyadditions:block_crystal_empowered:5>,

    <actuallyadditions:item_crystal_empowered>,
    <actuallyadditions:item_crystal_empowered:1>,
    <actuallyadditions:item_crystal_empowered:2>,
    <actuallyadditions:item_crystal_empowered:3>,
    <actuallyadditions:item_crystal_empowered:4>,
    <actuallyadditions:item_crystal_empowered:5>
];

for item in listCrystal {
    Empowerer.removeRecipe(item);
}

var mapCrystalEmpowered as IItemStack[string][IItemStack] = {
    <forestry:thermionic_tubes:13> : {
        // Restonia
        "item_e" : <actuallyadditions:item_crystal_empowered:0>,
        "block_e" : <actuallyadditions:block_crystal_empowered:0>,
        "item" : <actuallyadditions:item_crystal:0>,
        "block" : <actuallyadditions:block_crystal:0>
    },
    <forestry:thermionic_tubes:11> : {
        // Palis
        "item_e" : <actuallyadditions:item_crystal_empowered:1>,
        "block_e" : <actuallyadditions:block_crystal_empowered:1>,
        "item" : <actuallyadditions:item_crystal:1>,
        "block" : <actuallyadditions:block_crystal:1>
    },
    <forestry:thermionic_tubes:5> : {
        // Diamatine
        "item_e" : <actuallyadditions:item_crystal_empowered:2>,
        "block_e" : <actuallyadditions:block_crystal_empowered:2>,
        "item" : <actuallyadditions:item_crystal:2>,
        "block" : <actuallyadditions:block_crystal:2>
    },
    <forestry:thermionic_tubes:8> : {
        // Void
        "item_e" : <actuallyadditions:item_crystal_empowered:3>,
        "block_e" : <actuallyadditions:block_crystal_empowered:3>,
        "item" : <actuallyadditions:item_crystal:3>,
        "block" : <actuallyadditions:block_crystal:3>
    },
    <forestry:thermionic_tubes:9> : {
        // Emaradic
        "item_e" : <actuallyadditions:item_crystal_empowered:4>,
        "block_e" : <actuallyadditions:block_crystal_empowered:4>,
        "item" : <actuallyadditions:item_crystal:4>,
        "block" : <actuallyadditions:block_crystal:4>
    },
    <forestry:thermionic_tubes:3> : {
        // Enori
        "item_e" : <actuallyadditions:item_crystal_empowered:5>,
        "block_e" : <actuallyadditions:block_crystal_empowered:5>,
        "item" : <actuallyadditions:item_crystal:5>,
        "block" : <actuallyadditions:block_crystal:5>
    },
};

for tube, data in mapCrystalEmpowered {
    Empowerer.addRecipe(data["item_e"], data["item"], tube, <rftools:dimensional_shard>, tube, <rftools:dimensional_shard>, 8192, 100, [0.1, 0.1, 0.1]);
    Empowerer.addRecipe(data["block_e"], data["block"], tube, <rftools:infused_diamond>, tube, <rftools:infused_diamond>, 8192 * 8, 100, [0.1, 0.1, 0.1]);
}

Empowerer.addRecipe(<actuallyadditions:item_flax_seed>, <immersiveengineering:seed>, <minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>, 2000, 400, [0.2, 0.4, 0.7]);

recipes.remove(<actuallyadditions:block_farmer>);
Empowerer.addRecipe(<actuallyadditions:block_farmer>, <actuallyadditions:block_misc:9>, <forestry:farm_ender>, <forestry:farm_crops>, <forestry:farm_gourd>, <forestry:farm_nether>, 40000, 600, [0.2, 0.8, 0.1]);

AtomicReconstructor.removeRecipe(<actuallyadditions:item_color_lens>);
AtomicReconstructor.removeRecipe(<actuallyadditions:item_explosion_lens>);
AtomicReconstructor.removeRecipe(<actuallyadditions:item_damage_lens>);

AtomicReconstructor.removeRecipe(<actuallyadditions:block_laser_relay>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_laser_relay_fluids>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_laser_relay_item>);

AtomicReconstructor.addRecipe(<actuallyadditions:item_explosion_lens>, <actuallyadditions:item_misc:18>, 5000);
AtomicReconstructor.addRecipe(<actuallyadditions:item_damage_lens>, <actuallyadditions:item_explosion_lens>, 5000);

var energy as int = 400;

AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal>, <enderio:item_alloy_ingot:3>, energy);

AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:1>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:1>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:1>, <contenttweaker:large_tanzanite>, energy);

AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:2>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:2>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:2>, <minecraft:diamond>, energy);

AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:3>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:3>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:3>, <randomthings:stableenderpearl>, energy);

AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:4>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:4>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:4>, <minecraft:emerald>, energy);

AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:5>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:5>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:5>, <contenttweaker:weakeneddiamond>, energy);

AtomicReconstructor.removeRecipe(<actuallyadditions:block_testifi_bucks_green_wall>);
AtomicReconstructor.addRecipe(<actuallyadditions:block_testifi_bucks_green_wall>, <botania:quartztypered:1>, energy);

AtomicReconstructor.removeRecipe(<actuallyadditions:block_testifi_bucks_white_wall>);
AtomicReconstructor.addRecipe(<actuallyadditions:block_testifi_bucks_white_wall>, <botania:quartztypered>, energy);

recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
Altar.addAttunementAltarRecipe("block_atomic_reconstructor", <actuallyadditions:block_atomic_reconstructor>, 500, 800, [
    <forestry:thermionic_tubes:13>,
    <contenttweaker:crystal_prism>,
    <forestry:thermionic_tubes:13>,
    <actuallyadditions:item_misc:8>,
    <actuallyadditions:block_misc:9>,
    <actuallyadditions:item_misc:8>,
    <enderio:item_material:11>,
    <forestry:chipsets:1>,
    <enderio:item_material:11>,
    <rs_ctr:split_s>,
    <rs_ctr:split_s>,
    <rs_ctr:split_s>,
    <rs_ctr:split_s>,
]);

var smallMachine as IIngredient[][IItemStack] = {
    <actuallyadditions:block_ranged_collector:0> : [
        <actuallyadditions:block_misc:9>,
        <tieredmagnets:magnet_energy_leadstone:0>,
        <actuallyadditions:item_crystal:3> * 2
    ],
    <actuallyadditions:block_breaker:0> : [
        <actuallyadditions:block_misc:9>,
        <actuallyadditions:item_misc:7>,
        <actuallyadditions:item_crystal:3>
    ],
    <actuallyadditions:block_placer:0> : [
        <actuallyadditions:block_misc:9>,
        <actuallyadditions:item_misc:7>,
        <actuallyadditions:item_crystal:1>
    ],
    <actuallyadditions:block_dropper:0> : [
        <actuallyadditions:block_misc:9>,
        <actuallyadditions:item_misc:8>,
        <randomthings:irondropper:0>
    ],
    <actuallyadditions:block_fluid_placer:0> : [
        <actuallyadditions:block_placer:0>,
        <thermalexpansion:tank:0>,
        <immersiveengineering:metal_device1:6> * 2
    ],
    <actuallyadditions:block_fluid_collector:0> : [
        <actuallyadditions:block_breaker:0>,
        <thermalexpansion:tank:0>,
        <immersiveengineering:metal_device1:6> * 2
    ],
    <actuallyadditions:block_phantom_booster:0> : [
        <actuallyadditions:block_misc:8>,
        <actuallyadditions:item_crystal_empowered:0>,
        <botanicadds:rune_tp:0>
    ],
    <actuallyadditions:block_directional_breaker:0> : [
        <actuallyadditions:block_breaker:0> * 3,
        <actuallyadditions:item_crystal_empowered:3>,
        <actuallyadditions:item_misc:8>
    ],
    <actuallyadditions:block_heat_collector:0> : [
        <actuallyadditions:block_misc:9>,
        <actuallyadditions:item_crystal:5>,
        <randomthings:imbue:0>,
        <contenttweaker:heat_conductor:0>
    ],
    <actuallyadditions:block_miner:0> : [
        <actuallyadditions:block_crystal_empowered:3>,
        <thermalexpansion:frame:0>,
        <actuallyadditions:item_drill:*>,
        <actuallyadditions:item_drill_upgrade_speed_iii:0>
    ]
};

for machine, recipe in smallMachine {
    recipes.remove(machine);
    Blueprint.addRecipe("machinery", machine, recipe);
}

var smallComponents as IIngredient[][IItemStack] = {
    <actuallyadditions:item_misc:16> : [
        <contenttweaker:electric_motor:0>,
        <thermalfoundation:material:640>,
        <forestry:thermionic_tubes:6> * 2,
        <ic2:itemcable:15> * 2
    ],
    <actuallyadditions:item_battery:0> : [
        <ic2:itembatre:0>,
        <actuallyadditions:item_misc:8>,
        <actuallyadditions:item_crystal:0>,
        <actuallyadditions:item_crystal:5> * 2
    ],
    <actuallyadditions:item_battery_double:0> : [
        <actuallyadditions:item_battery:0>,
        <actuallyadditions:item_misc:8>,
        <actuallyadditions:item_crystal_empowered:5> * 2
    ],
    <actuallyadditions:item_battery_triple:0> : [
        <actuallyadditions:item_battery_double:0>,
        <actuallyadditions:item_misc:8>,
        <actuallyadditions:item_crystal_empowered:0> * 2
    ],
    <actuallyadditions:item_battery_quadruple:0> : [
        <actuallyadditions:item_battery_triple:0>,
        <actuallyadditions:item_misc:8>,
        <actuallyadditions:item_crystal:2> * 2
    ],
    <actuallyadditions:item_battery_quintuple:0> : [
        <actuallyadditions:item_battery_quadruple:0>,
        <actuallyadditions:item_misc:8>,
        <actuallyadditions:item_crystal_empowered:2> * 2
    ],
};

for component, recipe in smallComponents {
    recipes.remove(component);
    Blueprint.addRecipe("components", component, recipe);
}

recipes.addShapeless(<actuallyadditions:block_fluid_collector>, [<actuallyadditions:block_fluid_collector>]); // clear NBT
recipes.addShapeless(<actuallyadditions:block_fluid_placer>, [<actuallyadditions:block_fluid_placer>]); // clear NBT

recipes.remove(<actuallyadditions:block_item_viewer_hopping>);
calc_basic(<actuallyadditions:block_item_viewer_hopping>,<actuallyadditions:block_item_viewer>,<minecraft:hopper>);

recipes.remove(<actuallyadditions:block_tiny_torch>);
calc_basic(<actuallyadditions:block_tiny_torch> * 2, <minecraft:torch>, <minecraft:stick>);

recipes.remove(<actuallyadditions:block_fishing_net>);
calc_basic(<actuallyadditions:block_fishing_net>,<harvestcraft:watertrap>,<actuallyadditions:item_crystal_empowered:4>);

var mapPhantom as IItemStack[IItemStack] = {
    <actuallyadditions:block_phantomface> : <enderio:item_item_conduit>,
    <actuallyadditions:block_phantom_liquiface> : <enderio:item_liquid_conduit:2>,
    <actuallyadditions:block_phantom_energyface> : <enderio:item_power_conduit:2>,
    <actuallyadditions:block_phantom_redstoneface> : <enderio:item_redstone_conduit>,
};

for face, conduit in mapPhantom {
    recipes.remove(face);
    Empowerer.addRecipe(face, <actuallyadditions:block_misc:8>, conduit, <enderutilities:enderpart:15>, conduit, <bloodmagic:component:15>, 40000, 600, [0.2, 0.1, 0.5]);
}

recipes.remove(<actuallyadditions:block_phantom_placer>);
calc_basic(<actuallyadditions:block_phantom_placer>, <actuallyadditions:block_phantomface>, <actuallyadditions:block_placer>);

recipes.remove(<actuallyadditions:block_phantom_breaker>);
calc_basic(<actuallyadditions:block_phantom_breaker>, <actuallyadditions:block_phantomface>, <actuallyadditions:block_breaker>);

recipes.remove(<actuallyadditions:item_drill_upgrade_speed>);
Carpenter.addRecipe(<actuallyadditions:item_drill_upgrade_speed>, [
    [<actuallyadditions:item_crystal:5>,<contenttweaker:copper_coil>,<actuallyadditions:item_crystal:5>],
    [<contenttweaker:copper_coil>,<minecraft:cookie>,<contenttweaker:copper_coil>],
    [<actuallyadditions:item_crystal:5>,<contenttweaker:copper_coil>,<actuallyadditions:item_crystal:5>]
], 20, <liquid:for.honey> * 250, <thermalfoundation:material:32>);

recipes.remove(<actuallyadditions:item_drill_upgrade_speed_ii>);
Carpenter.addRecipe(<actuallyadditions:item_drill_upgrade_speed_ii>, [
    [<actuallyadditions:item_crystal:5>,<actuallyadditions:item_misc:7>,<actuallyadditions:item_crystal:5>],
    [<actuallyadditions:item_misc:7>,<minecraft:cake>,<actuallyadditions:item_misc:7>],
    [<actuallyadditions:item_crystal:5>,<actuallyadditions:item_misc:7>,<actuallyadditions:item_crystal:5>]
], 20, <liquid:for.honey> * 250, <actuallyadditions:item_drill_upgrade_speed>);

recipes.remove(<actuallyadditions:item_drill_upgrade_speed_iii>);
Carpenter.addRecipe(<actuallyadditions:item_drill_upgrade_speed_iii>, [
    [<actuallyadditions:item_crystal:5>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:5>],
    [<actuallyadditions:item_misc:8>,<harvestcraft:minerstewitem>,<actuallyadditions:item_misc:8>],
    [<actuallyadditions:item_crystal:5>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:5>]
], 20, <liquid:for.honey> * 250, <actuallyadditions:item_drill_upgrade_speed_ii>);
