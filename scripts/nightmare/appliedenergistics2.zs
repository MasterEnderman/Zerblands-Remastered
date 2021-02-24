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
import mods.ic2.Macerator;
import mods.jei.JEI;
import mods.tconstruct.Casting;
import mods.thermalexpansion.InductionSmelter;

JEI.removeAndHide(<appliedenergistics2:grindstone>);
JEI.removeAndHide(<appliedenergistics2:crank>);

recipes.remove(<appliedenergistics2:storage_cell_1k>);
recipes.remove(<appliedenergistics2:storage_cell_4k>);
recipes.remove(<appliedenergistics2:storage_cell_16k>);
recipes.remove(<appliedenergistics2:storage_cell_64k>);
recipes.remove(<appliedenergistics2:view_cell>);

recipes.remove(<appliedenergistics2:network_tool>);
recipes.addShapeless(<appliedenergistics2:network_tool>, [
    <appliedenergistics2:part:180>,<appliedenergistics2:material:23>,
    <enderio:item_yeta_wrench>,<minecraft:chest>
]);

Macerator.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material>);

recipes.remove(<appliedenergistics2:light_detector>);
Casting.addTableRecipe(<appliedenergistics2:light_detector>, <ore:dustCertusQuartz>, <liquid:glass>, 1000, true, 200);

var recipeMapShaped as IIngredient[][][IItemStack] = {
    <appliedenergistics2:crafting_unit>	: [
    	[<ore:plateSteel>,<appliedenergistics2:material:23>,<ore:plateSteel>],
    	[<appliedenergistics2:part:16>,<opencomputers:material:21>,<appliedenergistics2:part:16>],
    	[<ore:plateSteel>,<appliedenergistics2:material:23>,<ore:plateSteel>]
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
    	[<actuallyadditions:block_misc:8>,<calculator:flawlessassembly>,<actuallyadditions:block_misc:8>],
    	[<appliedenergistics2:quartz_glass>,<opencomputers:assembler>,<appliedenergistics2:quartz_glass>],
    	[<actuallyadditions:block_misc:8>,<rftools:crafter3>,<actuallyadditions:block_misc:8>]
    ],
    <appliedenergistics2:drive>	: [
    	[<ore:plateSteel>,<opencomputers:raid>,<ore:plateSteel>],
    	[<appliedenergistics2:part:16>,<opencomputers:raid>,<appliedenergistics2:part:16>],
    	[<ore:plateSteel>,<opencomputers:raid>,<ore:plateSteel>]
    ],
    <appliedenergistics2:chest>	: [
    	[<ore:plateSteel>,<appliedenergistics2:part:380>,<ore:plateSteel>],
    	[<appliedenergistics2:part:16>,<rftools:modular_storage>,<appliedenergistics2:part:16>],
    	[<ore:plateSteel>,<opencomputers:diskdrive>,<ore:plateSteel>]
    ],
    <appliedenergistics2:interface> : [
    	[<ore:plateSteel>,<appliedenergistics2:quartz_glass>,<ore:plateSteel>],
    	[<appliedenergistics2:material:44>,<opencomputers:transposer>,<appliedenergistics2:material:43>],
    	[<ore:plateSteel>,<appliedenergistics2:quartz_glass>,<ore:plateSteel>]
    ],
    <appliedenergistics2:cell_workbench> :[
    	[<ore:blockRockwool>,<appliedenergistics2:material:23>,<ore:blockRockwool>],
    	[<ore:plateSteel>,<ic2:blockmachinelv2:6>,<ore:plateSteel>],
    	[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]
    ],
    <appliedenergistics2:io_port> : [
    	[<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>,<appliedenergistics2:quartz_glass>],
    	[<appliedenergistics2:drive>,<opencomputers:transposer>,<appliedenergistics2:drive>],
    	[<ore:plateSteel>,<appliedenergistics2:material:22>,<ore:plateSteel>]
    ],
    <appliedenergistics2:energy_cell> : [
    	[<appliedenergistics2:fluix_block>,<opencomputers:capacitor>,<appliedenergistics2:fluix_block>],
    	[<opencomputers:capacitor>,<enderio:block_cap_bank:3>,<opencomputers:capacitor>],
    	[<appliedenergistics2:fluix_block>,<opencomputers:capacitor>,<appliedenergistics2:fluix_block>]
    ],
    <appliedenergistics2:material:44> : [
    	[<appliedenergistics2:material:11>,<appliedenergistics2:material:9>,<appliedenergistics2:material:22>]
    ],
    <appliedenergistics2:material:43> : [
    	[<appliedenergistics2:material:10>,<appliedenergistics2:material:9>,<appliedenergistics2:material:22>]
    ],
    <appliedenergistics2:material:52> : [
    	[<appliedenergistics2:quartz_glass>,<ore:plateLumium>,<appliedenergistics2:quartz_glass>],
    	[<ore:plateLumium>,<appliedenergistics2:material:9>,<ore:plateLumium>],
    	[<ore:plateSteel>,<opencomputers:component:3>,<ore:plateSteel>]
    ],
    <appliedenergistics2:material:41> : [
    	[null,<appliedenergistics2:material:9>,null],
    	[<ore:plateSteel>,<appliedenergistics2:part:140>,<ore:plateSteel>],
    	[<ore:plateEnderium>,<opencomputers:material:21>,<ore:plateEnderium>]
    ],
    <appliedenergistics2:material:42> : [
    	[<ore:plateSteel>,<ore:dustEnder>,<ore:plateSteel>],
    	[<ore:dustFluix>,<actuallyadditions:item_crystal_empowered:2>,<ore:dustFluix>],
    	[<ore:plateSteel>,<ore:dustEnder>,<ore:plateSteel>]
    ],
    <appliedenergistics2:material:25> : [
    	[<ore:plateElectrumFlux>,<ore:plateSteel>,null],
    	[<opencomputers:component:4>,<appliedenergistics2:material:23>,<ore:plateSteel>],
    	[<ore:plateElectrumFlux>,<ore:plateSteel>,null]
    ],
    <appliedenergistics2:dense_energy_cell> : [
    	[<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>],
    	[<appliedenergistics2:energy_cell>,<opencomputers:material:21>,<appliedenergistics2:energy_cell>],
    	[<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>]
    ],
    <appliedenergistics2:material:39> : [
    	[<appliedenergistics2:quartz_glass>,<actuallyadditions:item_crystal_empowered>,<appliedenergistics2:quartz_glass>],
    	[<actuallyadditions:item_crystal_empowered>,null,<actuallyadditions:item_crystal_empowered>],
    	[<ore:plateSteel>,<opencomputers:component:3>,<ore:plateSteel>]
    ],
    <appliedenergistics2:quantum_ring> : [
    	[<ore:plateIridium>,<appliedenergistics2:part:76>,<ore:plateIridium>],
    	[<appliedenergistics2:material:24>,<appliedenergistics2:dense_energy_cell>,<appliedenergistics2:material:24>],
    	[<ore:plateIridium>,<appliedenergistics2:material:22>,<ore:plateIridium>]
    ],
    <appliedenergistics2:quantum_link> : [
    	[<appliedenergistics2:quartz_glass>,<appliedenergistics2:material:9>,<appliedenergistics2:quartz_glass>],
    	[<appliedenergistics2:material:9>,<ore:plateIridium>,<appliedenergistics2:material:9>],
    	[<appliedenergistics2:quartz_glass>,<appliedenergistics2:material:9>,<appliedenergistics2:quartz_glass>]
    ],
    <appliedenergistics2:material:28> : [
    	[<ore:plateGelidEnderium>,<ore:plateSteel>,null],
    	[<opencomputers:component:5>,<appliedenergistics2:material:24>,<ore:plateSteel>],
    	[<ore:plateGelidEnderium>,<ore:plateSteel>,null]
    ],
    <appliedenergistics2:condenser>	: [
    	[<ore:plateSteel>,<appliedenergistics2:quartz_glass>,<ore:plateSteel>],
    	[<appliedenergistics2:quartz_glass>,<appliedenergistics2:material:9>,<appliedenergistics2:quartz_glass>],
    	[<ore:plateSteel>,<appliedenergistics2:quartz_glass>,<ore:plateSteel>]
    ],
    <appliedenergistics2:controller> : [
    	[<actuallyadditions:block_misc:8>,<opencomputers:component:2>,<actuallyadditions:block_misc:8>],
    	[<opencomputers:component:2>,<appliedenergistics2:energy_acceptor>,<opencomputers:component:2>],
    	[<actuallyadditions:block_misc:8>,<opencomputers:component:2>,<actuallyadditions:block_misc:8>]
    ],
    <appliedenergistics2:security_station> : [
    	[<ore:plateSteel>,<appliedenergistics2:chest>,<ore:plateSteel>],
    	[<appliedenergistics2:part:16>,<opencomputers:material:21>,<appliedenergistics2:part:16>],
    	[<ore:plateSteel>,<appliedenergistics2:material:24>,<ore:plateSteel>]
    ]
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}

recipes.remove(<appliedenergistics2:quartz_glass>);
InductionSmelter.addRecipe(<appliedenergistics2:quartz_glass> * 4, <thermalfoundation:glass:3> * 4, <actuallyadditions:item_dust:7> * 5, 8192, <appliedenergistics2:material:5>, 5);

recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
InductionSmelter.addRecipe(<appliedenergistics2:quartz_vibrant_glass>*2, <appliedenergistics2:quartz_glass>*2, <thermalfoundation:material:102>, 8192);

Empowerer.addRecipe(<appliedenergistics2:material:7>*2, <appliedenergistics2:material:1>, <minecraft:redstone>, <actuallyadditions:item_dust:5>, <minecraft:redstone>, <actuallyadditions:item_dust:5>, 8192, 100, [0.7, 0.4, 0.9]);

recipes.remove(<appliedenergistics2:material:9>);
Empowerer.addRecipe(<appliedenergistics2:material:9>, <enderutilities:enderpearlreusable>, <appliedenergistics2:material:12>, <appliedenergistics2:material:12>, <appliedenergistics2:material:12>, <appliedenergistics2:material:12>, 1600, 100, [0.6, 0.9, 0.1]);

Empowerer.addRecipe(<appliedenergistics2:material:13>, <thermalfoundation:storage:7>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <appliedenergistics2:quartz_block>, 1000000, 2000, [0.5, 0.5, 0.5]);
Empowerer.addRecipe(<appliedenergistics2:material:14>, <thermalfoundation:storage:7>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <minecraft:diamond_block>, 1000000, 2000, [0.5, 0.5, 0.5]);
Empowerer.addRecipe(<appliedenergistics2:material:15>, <thermalfoundation:storage:7>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <minecraft:gold_block>, 1000000, 2000, [0.5, 0.5, 0.5]);
Empowerer.addRecipe(<appliedenergistics2:material:19>, <thermalfoundation:storage:7>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <appliedenergistics2:material:5>, 1000000, 2000, [0.5, 0.5, 0.5]);
Empowerer.addRecipe(<appliedenergistics2:material:21>, <thermalfoundation:storage:7>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <thermalfoundation:material:352>, <minecraft:name_tag>, 1000000, 2000, [0.5, 0.5, 0.5]);
