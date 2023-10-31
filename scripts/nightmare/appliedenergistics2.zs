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
import mods.appliedenergistics2.Inscriber;
import mods.botania.ElvenTrade;
import mods.botania.ManaInfusion;
import mods.enderio.AlloySmelter;
import mods.enderio.SagMill;
import mods.forestry.ThermionicFabricator;
import mods.ic2.Extractor;
import mods.ic2.Macerator;
import mods.ic2.Sawmill;
import mods.immersiveengineering.MetalPress;
import mods.jei.JEI;
import mods.tconstruct.Casting;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;
import mods.threng.Aggregator;
import mods.threng.Centrifuge;
import mods.threng.Etcher;

import scripts.functions.calc_atomic;
import scripts.functions.calc_flawless;

JEI.removeAndHide(<appliedenergistics2:grindstone>);
JEI.removeAndHide(<appliedenergistics2:crank>);
JEI.removeAndHide(<appliedenergistics2:sky_compass>);
JEI.removeAndHide(<appliedenergistics2:vibration_chamber>);
JEI.removeAndHide(<appliedenergistics2:charger>);

JEI.removeAndHide(<appliedenergistics2:material:13>);
JEI.removeAndHide(<appliedenergistics2:material:14>);
JEI.removeAndHide(<appliedenergistics2:material:15>);
JEI.removeAndHide(<appliedenergistics2:material:19>);

recipes.removeByRecipeName("appliedenergistics2:network/parts/oredict_storage_bus");

Inscriber.removeRecipe(<appliedenergistics2:material:13>);
Inscriber.removeRecipe(<appliedenergistics2:material:14>);
Inscriber.removeRecipe(<appliedenergistics2:material:15>);
Inscriber.removeRecipe(<appliedenergistics2:material:19>);
Inscriber.removeRecipe(<appliedenergistics2:material:16>);
Inscriber.removeRecipe(<appliedenergistics2:material:17>);
Inscriber.removeRecipe(<appliedenergistics2:material:18>);
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
Inscriber.removeRecipe(<appliedenergistics2:material:22>);
Inscriber.removeRecipe(<appliedenergistics2:material:23>);
Inscriber.removeRecipe(<appliedenergistics2:material:24>);

Etcher.removeRecipe(<threng:material:14>);
Etcher.removeRecipe(<threng:material:6>);
Etcher.removeRecipe(<appliedenergistics2:material:24>);
Etcher.removeRecipe(<appliedenergistics2:material:23>);
Etcher.removeRecipe(<appliedenergistics2:material:22>);

Centrifuge.removeRecipe(<appliedenergistics2:material:4>);
Centrifuge.removeRecipe(<appliedenergistics2:material:46>);
Centrifuge.removeRecipe(<appliedenergistics2:material:45>);
Centrifuge.removeRecipe(<appliedenergistics2:material:12>);
Centrifuge.removeRecipe(<appliedenergistics2:material:11>);
Centrifuge.removeRecipe(<appliedenergistics2:material:10>);

recipes.removeShaped(<appliedenergistics2:storage_cell_1k>);
recipes.removeShaped(<appliedenergistics2:storage_cell_4k>);
recipes.removeShaped(<appliedenergistics2:storage_cell_16k>);
recipes.removeShaped(<appliedenergistics2:storage_cell_64k>);
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_1k>);
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_4k>);
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_16k>);
recipes.removeShaped(<appliedenergistics2:fluid_storage_cell_64k>);
recipes.removeShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>);
recipes.removeShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>);
recipes.removeShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>);
recipes.removeShaped(<appliedenergistics2:view_cell>);

// ElvenTrade.addRecipe([<appliedenergistics2:sky_stone_block>],[<abyssalcraft:stone:6>]);
ManaInfusion.addConjuration(<appliedenergistics2:sky_stone_block>, <abyssalcraft:stone:6>, 1); // fix crash when to many items are thrown into the botania portal.

recipes.remove(<appliedenergistics2:matter_cannon>);
calc_flawless(<appliedenergistics2:matter_cannon>,<xreliquary:handgun>,<appliedenergistics2:material:43>,<appliedenergistics2:crafting_storage_4k>,<appliedenergistics2:energy_cell>);

var mapSeed as IItemStack[IItemStack] = {
	<appliedenergistics2:crystal_seed:1200> : <appliedenergistics2:material:12>,
	<appliedenergistics2:crystal_seed> : <appliedenergistics2:material:10>,
	<appliedenergistics2:crystal_seed:600> : <appliedenergistics2:material:11>
};

for seed, crystal in mapSeed {
	ManaInfusion.addConjuration(crystal, seed, 8000);
}

recipes.remove(<appliedenergistics2:part:120>);
Extractor.addRecipe(<appliedenergistics2:part:120>, findFirstItemFromMod("thermalfoundation","ingot","invar"));

recipes.remove(<appliedenergistics2:network_tool>);
// recipes.addShapeless(<appliedenergistics2:network_tool>, [
//     <appliedenergistics2:part:180>,<appliedenergistics2:material:23>,
//     <enderio:item_yeta_wrench>,<metalchests:metal_chest:1>
// ]);
recipes.addShapeless(<appliedenergistics2:network_tool>, [
    <appliedenergistics2:part:180>,<appliedenergistics2:material:23>,
    <enderio:item_yeta_wrench>,<ore:chest>
]);

recipes.remove(<appliedenergistics2:part:520>);
recipes.addShapeless(<appliedenergistics2:part:520>, [
	<appliedenergistics2:part:380>,<minecraft:bucket>,<appliedenergistics2:material:22>
]);

Macerator.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material>);

recipes.remove(<appliedenergistics2:light_detector>);
Casting.addTableRecipe(<appliedenergistics2:light_detector>, <ore:dustCertusQuartz>, <liquid:glass>, 1000, true, 200);
Transposer.addFillRecipe(<appliedenergistics2:light_detector>, <appliedenergistics2:material:2>, <liquid:glass> * 1000, 2000);

// SagMill.removeRecipe(<minecraft:clay>);
furnace.remove(<appliedenergistics2:material:5>);
MetalPress.addRecipe(<appliedenergistics2:material:5> * 8, <contenttweaker:silicon_boule>, <immersiveengineering:mold:7>, 2048);
Sawmill.addRecipe(<appliedenergistics2:material:5> * 16, <contenttweaker:silicon_boule>);

Centrifuge.addRecipe(<appliedenergistics2:material:12>,<appliedenergistics2:crystal_seed:1200>);
Centrifuge.addRecipe(<appliedenergistics2:material:11>,<appliedenergistics2:crystal_seed:600>);
Centrifuge.addRecipe(<appliedenergistics2:material:10>,<appliedenergistics2:crystal_seed>);

recipes.remove(<appliedenergistics2:quartz_fixture>);
calc_atomic(<appliedenergistics2:quartz_fixture>, <appliedenergistics2:material:1>, <contenttweaker:electricdiamondanimate>, <contenttweaker:starsteel_nugget>);

recipes.remove(<appliedenergistics2:part:56>);
calc_atomic(<appliedenergistics2:part:56>, <appliedenergistics2:part:36>, <rs_ctr:lamp>, <cd4017be_lib:m:400>);

recipes.remove(<appliedenergistics2:part:76>);
calc_atomic(<appliedenergistics2:part:76>, <appliedenergistics2:part:516>, <rs_ctr:lamp>, <cd4017be_lib:m:400>);

recipes.remove(<appliedenergistics2:part:36>);
calc_atomic(<appliedenergistics2:part:36>, <appliedenergistics2:part:16>, <energycontrol:item_component:4>, <enderio:block_industrial_insulation>);

var recipeMapShaped as IIngredient[][][IItemStack] = {
    <appliedenergistics2:crafting_unit>	: [
    	[<ore:ingotFluixSteel>,<appliedenergistics2:material:23>,<ore:ingotFluixSteel>],
    	[<appliedenergistics2:part:16>,<opencomputers:material:21>,<appliedenergistics2:part:16>],
    	[<ore:ingotFluixSteel>,<appliedenergistics2:material:23>,<ore:ingotFluixSteel>]
    ],
    <appliedenergistics2:energy_acceptor> : [
    	[<appliedenergistics2:smooth_sky_stone_block>,<thermallogistics:manager>,<appliedenergistics2:smooth_sky_stone_block>],
    	[<rftools:machine_frame>,<appliedenergistics2:fluix_block>,<rftools:machine_frame>],
    	[<appliedenergistics2:smooth_sky_stone_block>,<thermallogistics:manager>,<appliedenergistics2:smooth_sky_stone_block>]
    ],
    <appliedenergistics2:crafting_accelerator> : [
    	[<opencomputers:material:8>,<ic2:itemmisc:452>,<opencomputers:material:8>],
    	[<ic2:itemmisc:452>,<appliedenergistics2:crafting_unit>,<ic2:itemmisc:452>],
    	[<opencomputers:material:8>,<ic2:itemmisc:452>,<opencomputers:material:8>]
    ],
    <appliedenergistics2:molecular_assembler> : [
    	[<actuallyadditions:block_misc:8>,<contenttweaker:flawless_assembly>,<actuallyadditions:block_misc:8>],
    	[<appliedenergistics2:quartz_glass>,<opencomputers:assembler>,<appliedenergistics2:quartz_glass>],
    	[<actuallyadditions:block_misc:8>,<rftools:crafter3>,<actuallyadditions:block_misc:8>]
    ],
    <appliedenergistics2:drive>	: [
    	[<ore:ingotFluixSteel>,<opencomputers:raid>,<ore:ingotFluixSteel>],
    	[<appliedenergistics2:part:16>,<opencomputers:raid>,<appliedenergistics2:part:16>],
    	[<ore:ingotFluixSteel>,<opencomputers:raid>,<ore:ingotFluixSteel>]
    ],
    <appliedenergistics2:chest>	: [
    	[<ore:ingotFluixSteel>,<appliedenergistics2:part:380>,<ore:ingotFluixSteel>],
    	[<appliedenergistics2:part:16>,<rftools:modular_storage>,<appliedenergistics2:part:16>],
    	[<ore:ingotFluixSteel>,<opencomputers:diskdrive>,<ore:ingotFluixSteel>]
    ],
    <appliedenergistics2:interface> : [
    	[<ore:ingotFluixSteel>,<appliedenergistics2:quartz_glass>,<ore:ingotFluixSteel>],
    	[<appliedenergistics2:material:44>,<opencomputers:transposer>,<appliedenergistics2:material:43>],
    	[<ore:ingotFluixSteel>,<appliedenergistics2:quartz_glass>,<ore:ingotFluixSteel>]
    ],
	<appliedenergistics2:fluid_interface> : [
    	[<ore:ingotFluixSteel>,<pressure:tank_wall>,<ore:ingotFluixSteel>],
    	[<appliedenergistics2:material:44>,<opencomputers:transposer>,<appliedenergistics2:material:43>],
    	[<ore:ingotFluixSteel>,<pressure:tank_wall>,<ore:ingotFluixSteel>]
	],
    <appliedenergistics2:cell_workbench> : [
    	[<ore:blockRockwool>,<appliedenergistics2:material:23>,<ore:blockRockwool>],
    	[<ore:ingotFluixSteel>,<ic2:blockmachinelv2:6>,<ore:ingotFluixSteel>],
    	[<ore:ingotFluixSteel>,<ore:ingotFluixSteel>,<ore:ingotFluixSteel>]
    ],
    <appliedenergistics2:io_port> : [
    	[<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>],
    	[<appliedenergistics2:drive>,<opencomputers:transposer>,<appliedenergistics2:drive>],
    	[<ore:ingotFluixSteel>,<appliedenergistics2:material:22>,<ore:ingotFluixSteel>]
    ],
    <appliedenergistics2:energy_cell> : [
    	[<appliedenergistics2:fluix_block>,<opencomputers:capacitor>,<appliedenergistics2:fluix_block>],
    	[<opencomputers:capacitor>,<enderio:block_cap_bank:3>,<opencomputers:capacitor>],
    	[<appliedenergistics2:fluix_block>,<opencomputers:capacitor>,<appliedenergistics2:fluix_block>]
    ],
    <appliedenergistics2:material:52> : [
    	[<appliedenergistics2:quartz_glass>,<ore:plateLumium>,<appliedenergistics2:quartz_glass>],
    	[<ore:plateLumium>,<appliedenergistics2:material:9>,<ore:plateLumium>],
    	[<ore:ingotFluixSteel>,<opencomputers:component:3>,<ore:ingotFluixSteel>]
    ],
    <appliedenergistics2:material:41> : [
    	[null,<appliedenergistics2:material:9>,null],
    	[<ore:ingotFluixSteel>,<appliedenergistics2:part:140>,<ore:ingotFluixSteel>],
    	[<ore:plateEnderium>,<opencomputers:material:21>,<ore:plateEnderium>]
    ],
    <appliedenergistics2:material:42> : [
    	[<ore:ingotFluixSteel>,<ore:dustEnder>,<ore:ingotFluixSteel>],
    	[<ore:dustFluix>,<actuallyadditions:item_crystal_empowered:2>,<ore:dustFluix>],
    	[<ore:ingotFluixSteel>,<ore:dustEnder>,<ore:ingotFluixSteel>]
    ],
    <appliedenergistics2:material:25> : [
    	[<ore:plateElectrumFlux>,<ore:ingotFluixSteel>,null],
    	[<opencomputers:component:4>,<appliedenergistics2:material:23>,<ore:ingotFluixSteel>],
    	[<ore:plateElectrumFlux>,<ore:ingotFluixSteel>,null]
    ],
    <appliedenergistics2:dense_energy_cell> : [
    	[<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>],
    	[<appliedenergistics2:energy_cell>,<contenttweaker:energy_flow_circuit>,<appliedenergistics2:energy_cell>],
    	[<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>]
    ],
    <appliedenergistics2:material:39> : [
    	[<appliedenergistics2:quartz_glass>,<actuallyadditions:item_crystal_empowered>,<appliedenergistics2:quartz_glass>],
    	[<actuallyadditions:item_crystal_empowered>,null,<actuallyadditions:item_crystal_empowered>],
    	[<ore:ingotFluixSteel>,<opencomputers:component:3>,<ore:ingotFluixSteel>]
    ],
    <appliedenergistics2:quantum_ring> : [
    	[<ore:plateIridium>,<appliedenergistics2:part:76>,<ore:plateIridium>],
    	[<appliedenergistics2:material:24>,<appliedenergistics2:dense_energy_cell>,<appliedenergistics2:material:24>],
    	[<ore:plateIridium>,<appliedenergistics2:material:22>,<ore:plateIridium>]
    ],
    <appliedenergistics2:quantum_link> : [
    	[<appliedenergistics2:quartz_glass>,<appliedenergistics2:material:9>,<appliedenergistics2:quartz_glass>],
    	[<appliedenergistics2:material:9>,<contenttweaker:energy_flow_circuit>,<appliedenergistics2:material:9>],
    	[<appliedenergistics2:quartz_glass>,<appliedenergistics2:material:9>,<appliedenergistics2:quartz_glass>]
    ],
    <appliedenergistics2:material:28> : [
    	[<ore:plateGelidEnderium>,<ore:ingotFluixSteel>,null],
    	[<opencomputers:component:5>,<appliedenergistics2:material:24>,<ore:ingotFluixSteel>],
    	[<ore:plateGelidEnderium>,<ore:ingotFluixSteel>,null]
    ],
    <appliedenergistics2:condenser>	: [
    	[<ore:ingotFluixSteel>,<appliedenergistics2:quartz_glass>,<ore:ingotFluixSteel>],
    	[<appliedenergistics2:quartz_glass>,<appliedenergistics2:material:9>,<appliedenergistics2:quartz_glass>],
    	[<ore:ingotFluixSteel>,<appliedenergistics2:quartz_glass>,<ore:ingotFluixSteel>]
    ],
    <appliedenergistics2:controller> : [
    	[<actuallyadditions:block_misc:8>,<opencomputers:component:2>,<actuallyadditions:block_misc:8>],
    	[<opencomputers:component:2>,<appliedenergistics2:energy_acceptor>,<opencomputers:component:2>],
    	[<actuallyadditions:block_misc:8>,<opencomputers:component:2>,<actuallyadditions:block_misc:8>]
    ],
    <appliedenergistics2:security_station> : [
    	[<ore:ingotFluixSteel>,<appliedenergistics2:chest>,<ore:ingotFluixSteel>],
    	[<appliedenergistics2:part:16>,<opencomputers:material:21>,<appliedenergistics2:part:16>],
    	[<ore:ingotFluixSteel>,<appliedenergistics2:material:24>,<ore:ingotFluixSteel>]
    ],
	<appliedenergistics2:certus_quartz_cutting_knife> : [
		[null,null,<ore:stickTreatedWood>],
		[<contenttweaker:reinforcediron_ingot>,<ore:stickTreatedWood>,null],
		[<ore:crystalCertusQuartz>,<ore:crystalCertusQuartz>,null]
	],
	<appliedenergistics2:nether_quartz_cutting_knife> : [
		[null,null,<ore:stickTreatedWood>],
		[<contenttweaker:reinforcediron_ingot>,<ore:stickTreatedWood>,null],
		[<ore:gemQuartz>,<ore:gemQuartz>,null]
	],
	<appliedenergistics2:inscriber> : [
		[<threng:material>,<ic2:blockmachinelv:5>,<threng:material>],
		[<appliedenergistics2:material:12>,<thermalexpansion:machine:5>,<appliedenergistics2:material:12>],
		[<threng:material>,<ic2:blockmachinelv:5>,<threng:material>]
	],
	<appliedenergistics2:quartz_growth_accelerator> : [
		[<ore:ingotFluixSteel>,<appliedenergistics2:fluix_slab>,<ore:ingotFluixSteel>],
		[<enderio:block_dark_iron_bars>,<tp:growth_block>,<enderio:block_dark_iron_bars>],
		[<ore:ingotFluixSteel>,<appliedenergistics2:fluix_slab>,<ore:ingotFluixSteel>]
	],
	<appliedenergistics2:spatial_pylon> : [
		[<ore:ingotFluixSteel>,<appliedenergistics2:quartz_vibrant_glass>,<ore:ingotFluixSteel>],
		[<appliedenergistics2:part:76>,<ic2:itemmemorystick>,<appliedenergistics2:part:76>],
		[<ore:ingotFluixSteel>,<threng:material:6>,<ore:ingotFluixSteel>]
	],
	<appliedenergistics2:part:516> : [
		[<redstonerepository:material:8>,<appliedenergistics2:part:36>,<redstonerepository:material:8>],
		[<appliedenergistics2:part:36>,<enderio:block_industrial_insulation>,<appliedenergistics2:part:36>],
		[<redstonerepository:material:8>,<appliedenergistics2:part:36>,<redstonerepository:material:8>]
	]
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}

recipes.addShapeless(<appliedenergistics2:interface>, [<appliedenergistics2:part:440>]);
recipes.addShapeless(<appliedenergistics2:fluid_interface>, [<appliedenergistics2:part:441>]);

recipes.remove(<appliedenergistics2:quartz_glass>);
InductionSmelter.addRecipe(<appliedenergistics2:quartz_glass> * 4, <extrautils2:decorativeglass> * 4, <actuallyadditions:item_dust:7> * 5, 8192);

recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
InductionSmelter.addRecipe(<appliedenergistics2:quartz_vibrant_glass>*2, <appliedenergistics2:quartz_glass>*2, <thermalfoundation:material:102>, 8192);

Aggregator.removeRecipe(<appliedenergistics2:material:7>);
Aggregator.addRecipe(<appliedenergistics2:material:7>, <appliedenergistics2:material:1>, <ore:dustQuartz>, <ore:dustRedstone>);
Empowerer.addRecipe(<appliedenergistics2:material:7>*2, <appliedenergistics2:material:1>, <minecraft:redstone>, <ore:dustQuartz>, <minecraft:redstone>, <ore:dustQuartz>, 8192, 100, [0.7, 0.4, 0.9]);

recipes.remove(<appliedenergistics2:material:9>);
Empowerer.addRecipe(<appliedenergistics2:material:9>, <botania:manaresource:1>, <appliedenergistics2:material:12>, <appliedenergistics2:material:12>, <appliedenergistics2:material:12>, <appliedenergistics2:material:12>, 1600, 100, [0.6, 0.9, 0.1]);

// Empowerer.addRecipe(<appliedenergistics2:material:13>, <thermalfoundation:storage:7>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <appliedenergistics2:quartz_block>, 1000000, 2000, [0.5, 0.5, 0.5]);
// Empowerer.addRecipe(<appliedenergistics2:material:14>, <thermalfoundation:storage:7>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <minecraft:diamond_block>, 1000000, 2000, [0.5, 0.5, 0.5]);
// Empowerer.addRecipe(<appliedenergistics2:material:15>, <thermalfoundation:storage:7>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <minecraft:gold_block>, 1000000, 2000, [0.5, 0.5, 0.5]);
// Empowerer.addRecipe(<appliedenergistics2:material:19>, <thermalfoundation:storage:7>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <appliedenergistics2:material:5>, 1000000, 2000, [0.5, 0.5, 0.5]);
// Empowerer.addRecipe(<appliedenergistics2:material:21>, <thermalfoundation:storage:7>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <minecraft:name_tag>, 1000000, 2000, [0.5, 0.5, 0.5]);

recipes.addShaped(<appliedenergistics2:material:21>,[
	[<minecraft:name_tag>],
	[<ore:plateAluminum>]
]);

var mapPrintedProcessor as IIngredient[IItemStack] = {
	<appliedenergistics2:material:16> : <appliedenergistics2:material:10>,
	<appliedenergistics2:material:17> : <contenttweaker:flawlessdiamond>,
	<appliedenergistics2:material:18> : <contenttweaker:enrichedgold_ingot>,
	<contenttweaker:elementiumprint> : <botania:manaresource:7>,
	<contenttweaker:terrasteelprint> : <botania:manaresource:4>,
	<appliedenergistics2:material:20> : <contenttweaker:electro_silicon>,
};

for output, input in mapPrintedProcessor {
	Extractor.addRecipe(output, input);
}

var mapProcessor as IItemStack[IItemStack] = {
	<threng:material:14> : <threng:material:13>,
	<threng:material:6> : <threng:material:5>,
	<appliedenergistics2:material:24> : <appliedenergistics2:material:17>,
	<appliedenergistics2:material:23> : <appliedenergistics2:material:16>,
	<appliedenergistics2:material:22> : <appliedenergistics2:material:18>,
	<contenttweaker:terrasteelprocessor> : <contenttweaker:terrasteelprint>,
	<contenttweaker:elementiumprocessor> : <contenttweaker:elementiumprint>,
};

for output, input in mapProcessor {
	Inscriber.addRecipe(output, findFirstItemFromMod("contenttweaker","dust","redAlloy"), false, input, <appliedenergistics2:material:20>);
	Etcher.addRecipe(output, findFirstItemFromMod("contenttweaker","dust","redAlloy"), input, <appliedenergistics2:material:20>);
}

var map1k as IItemStack[IItemStack] = {
	<appliedenergistics2:material:35> : <actuallyadditions:block_crystal_empowered>,
	<appliedenergistics2:material:54> : <actuallyadditions:block_crystal_empowered:1>,
};

for output, input in map1k {
	recipes.remove(output);
	Inscriber.addRecipe(output, input, false, <contenttweaker:engraved_crystal_chip>, <contenttweaker:plastic>);
	Etcher.addRecipe(output, input, <contenttweaker:engraved_crystal_chip>, <contenttweaker:plastic>);
}

var mapComponent as IItemStack[][IItemStack] = {
	// Item
	<appliedenergistics2:material:36> : [<appliedenergistics2:material:35>,<contenttweaker:data_storage_circuit>],
	<appliedenergistics2:material:37> : [<appliedenergistics2:material:36>,<contenttweaker:data_control_circuit>],
	<appliedenergistics2:material:38> : [<appliedenergistics2:material:37>,<contenttweaker:data_orb>],
	// Fluid
	<appliedenergistics2:material:55> : [<appliedenergistics2:material:54>,<contenttweaker:data_storage_circuit>],
	<appliedenergistics2:material:56> : [<appliedenergistics2:material:55>,<contenttweaker:data_control_circuit>],
	<appliedenergistics2:material:57> : [<appliedenergistics2:material:56>,<contenttweaker:data_orb>],
	// Spatial
	<appliedenergistics2:material:32> : [<threng:material:6>,<contenttweaker:data_storage_circuit>],
	<appliedenergistics2:material:33> : [<appliedenergistics2:material:32>,<contenttweaker:data_control_circuit>],
	<appliedenergistics2:material:34> : [<appliedenergistics2:material:33>,<contenttweaker:data_orb>],
};

for output, input in mapComponent {
	var component as IItemStack = input[0];
	var data_part as IItemStack = input[1];

	recipes.remove(output);
	ThermionicFabricator.addCast(output, [
		[<contenttweaker:plastic>,component,<contenttweaker:plastic>],
		[component,data_part,component],
		[<contenttweaker:plastic>,component,<contenttweaker:plastic>]
	], <liquid: glass> * 200);
}

recipes.remove(<appliedenergistics2:material:43>);
ThermionicFabricator.addCast(<appliedenergistics2:material:43>, [
	[null,<appliedenergistics2:material:22>,null],
	[<forestry:thermionic_tubes>,<appliedenergistics2:material:9>,<forestry:thermionic_tubes:2>],
	[null,<contenttweaker:hdpe_sheet>,null]
], <liquid: glass> * 200);

recipes.remove(<appliedenergistics2:material:44>);
ThermionicFabricator.addCast(<appliedenergistics2:material:44>, [
	[null,<appliedenergistics2:material:22>,null],
	[<forestry:thermionic_tubes:2>,<appliedenergistics2:material:9>,<forestry:thermionic_tubes:10>],
	[null,<contenttweaker:hdpe_sheet>,null]
], <liquid: glass> * 200);

recipes.removeShaped(<appliedenergistics2:part:180>);
recipes.addShaped(<appliedenergistics2:part:180>, [
	[null,<ore:ingotAluminum>,<appliedenergistics2:quartz_glass>],
	[<ore:plateLumium>,<integrateddynamics:part_display_panel_item>,<appliedenergistics2:quartz_glass>],
	[null,<ore:ingotAluminum>,<appliedenergistics2:quartz_glass>]
]);

// formation
recipes.remove(<appliedenergistics2:part:320>);
recipes.addShaped(<appliedenergistics2:part:320> * 4, [
	[<thermalfoundation:rockwool:15>,<actuallyadditions:item_crystal>,<thermalfoundation:rockwool:15>],
	[<ore:ingotFluixSteel>,<appliedenergistics2:material:43>,<ore:ingotFluixSteel>]
]);
recipes.remove(<appliedenergistics2:part:321>);
recipes.addShaped(<appliedenergistics2:part:321> * 4, [
	[<thermalfoundation:rockwool:15>,<actuallyadditions:item_crystal:1>,<thermalfoundation:rockwool:15>],
	[<ore:ingotFluixSteel>,<appliedenergistics2:material:43>,<ore:ingotFluixSteel>]
]);

// annihilation
recipes.remove(<appliedenergistics2:part:300>);
recipes.addShaped(<appliedenergistics2:part:300> * 4, [
	[<thermalfoundation:rockwool>,<actuallyadditions:item_crystal>,<thermalfoundation:rockwool>],
	[<ore:ingotFluixSteel>,<appliedenergistics2:material:44>,<ore:ingotFluixSteel>]
]);
recipes.remove(<appliedenergistics2:part:302>);
recipes.addShaped(<appliedenergistics2:part:302> * 4, [
	[<thermalfoundation:rockwool>,<actuallyadditions:item_crystal:1>,<thermalfoundation:rockwool>],
	[<ore:ingotFluixSteel>,<appliedenergistics2:material:44>,<ore:ingotFluixSteel>]
]);

// exporter
recipes.remove(<appliedenergistics2:part:260>);
recipes.addShaped(<appliedenergistics2:part:260> * 4, [
	[<actuallyadditions:item_crystal>,<appliedenergistics2:material:43>,<actuallyadditions:item_crystal>],
	[<ore:ingotFluixSteel>,<ic2:ic2upgrades:7>,<ore:ingotFluixSteel>]
]);
recipes.remove(<appliedenergistics2:part:261>);
recipes.addShaped(<appliedenergistics2:part:261> * 4, [
	[<actuallyadditions:item_crystal:1>,<appliedenergistics2:material:43>,<actuallyadditions:item_crystal:1>],
	[<ore:ingotFluixSteel>,<ic2:ic2upgrades:23>,<ore:ingotFluixSteel>]
]);

// importer
recipes.remove(<appliedenergistics2:part:240>);
recipes.addShaped(<appliedenergistics2:part:240> * 4, [
	[<actuallyadditions:item_crystal>,<appliedenergistics2:material:44>,<actuallyadditions:item_crystal>],
	[<ore:ingotFluixSteel>,<ic2:ic2upgrades:5>,<ore:ingotFluixSteel>]
]);
recipes.remove(<appliedenergistics2:part:241>);
recipes.addShaped(<appliedenergistics2:part:241> * 4, [
	[<actuallyadditions:item_crystal:1>,<appliedenergistics2:material:44>,<actuallyadditions:item_crystal:1>],
	[<ore:ingotFluixSteel>,<ic2:ic2upgrades:21>,<ore:ingotFluixSteel>]
]);

// storage
recipes.remove(<appliedenergistics2:part:220>);
recipes.addShaped(<appliedenergistics2:part:220> * 4, [
	[<ic2:ic2upgrades:7>,<appliedenergistics2:interface>],
	[<ic2:ic2upgrades:5>,<contenttweaker:storage_module>]
]);
recipes.remove(<appliedenergistics2:part:221>);
recipes.addShaped(<appliedenergistics2:part:221> * 4, [
	[<ic2:ic2upgrades:23>,<appliedenergistics2:fluid_interface>],
	[<ic2:ic2upgrades:21>,<contenttweaker:storage_module>]
]);

// emitter
recipes.remove(<appliedenergistics2:part:280>);
recipes.addShaped(<appliedenergistics2:part:280>, [
	[<rs_ctr:lever:1>],
	[<appliedenergistics2:material:23>],
	[<actuallyadditions:item_crystal>]
]);
recipes.remove(<appliedenergistics2:part:281>);
recipes.addShaped(<appliedenergistics2:part:281>, [
	[<rs_ctr:lever:1>],
	[<appliedenergistics2:material:23>],
	[<actuallyadditions:item_crystal:1>]
]);

for i in 0 .. 15 {
	var me_glass as IItemStack = <appliedenergistics2:part>.definition.makeStack(i);
	var me_covered as IItemStack = <appliedenergistics2:part>.definition.makeStack(i + 20);
	var me_smart as IItemStack = <appliedenergistics2:part>.definition.makeStack(i + 40);
	var me_smart_dense as IItemStack = <appliedenergistics2:part>.definition.makeStack(i + 60);
	var me_covered_dense as IItemStack = <appliedenergistics2:part>.definition.makeStack(i + 500);

	Transposer.addFillRecipe(<appliedenergistics2:part:16>, me_glass, <liquid:water> * 100, 200);
	Transposer.addFillRecipe(<appliedenergistics2:part:36>, me_covered, <liquid:water> * 100, 200);
	Transposer.addFillRecipe(<appliedenergistics2:part:56>, me_smart, <liquid:water> * 100, 200);
	Transposer.addFillRecipe(<appliedenergistics2:part:76>, me_smart_dense, <liquid:water> * 100, 200);
	Transposer.addFillRecipe(<appliedenergistics2:part:516>, me_covered_dense, <liquid:water> * 100, 200);
}
