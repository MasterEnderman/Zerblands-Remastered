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
import mods.avaritia.ExtremeCrafting;
import mods.botania.ElvenTrade;
import mods.botania.ManaInfusion;
import mods.botaniatweaks.Agglomeration;
import mods.inworldcrafting.FluidToItem;
import mods.jei.JEI;
import mods.thermalexpansion.InductionSmelter;

JEI.removeAndHide(<appliedenergistics2:crank>);
JEI.removeAndHide(<appliedenergistics2:grindstone>);
JEI.removeAndHide(<appliedenergistics2:sky_compass>);

ElvenTrade.addRecipe([<appliedenergistics2:sky_stone_block>],[<minecraft:end_stone>,<minecraft:end_stone>]);

FluidToItem.transform(<appliedenergistics2:material:7>, <liquid:water>, [<appliedenergistics2:material:1>, <ore:dustRedstone>, <minecraft:quartz>], false);

var mapSeed as IItemStack[IItemStack] = {
	<appliedenergistics2:crystal_seed:1200> : <appliedenergistics2:material:12>,
	<appliedenergistics2:crystal_seed> : <appliedenergistics2:material:10>,
	<appliedenergistics2:crystal_seed:600> : <appliedenergistics2:material:11>
};

for seed, crystal in mapSeed {
	ManaInfusion.addInfusion(crystal, seed, 2000);
}

var mapProcessor as IIngredient[IItemStack] = {
    <appliedenergistics2:material:22>: <appliedenergistics2:material:18>,
    <appliedenergistics2:material:23>: <appliedenergistics2:material:16>,
    <appliedenergistics2:material:24>: <appliedenergistics2:material:17>
};

for processor, printed in mapProcessor {
    Agglomeration.addRecipe(processor, [<appliedenergistics2:material:20>,<ore:dustRedstone>,printed] as IIngredient[], 1000);
}

recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber>, [
    [<ore:blockElectricalSteel>,<minecraft:piston>,<ore:blockElectricalSteel>],
    [<appliedenergistics2:fluix_block>,null,<appliedenergistics2:fluix_block>],
    [<ore:blockElectricalSteel>,<minecraft:piston>,<ore:blockElectricalSteel>]
]);

recipes.remove(<appliedenergistics2:charger>);
recipes.addShaped(<appliedenergistics2:charger>, [
    [<ore:blockElectricalSteel>,<enderio:block_wireless_charger>,<ore:blockElectricalSteel>],
    [<ore:blockElectricalSteel>,null,null],
    [<ore:blockElectricalSteel>,<enderio:block_wireless_charger>,<ore:blockElectricalSteel>]
]);

recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [
    [<ore:blockElectricalSteel>,<appliedenergistics2:material:23>,<ore:blockElectricalSteel>],
    [<ore:circuitAdvanced>,<opencomputers:component:2>,<ore:circuitAdvanced>],
    [<ore:blockElectricalSteel>,<appliedenergistics2:material:23>,<ore:blockElectricalSteel>]
]);

recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler>, [
    [<ore:blockElectricalSteel>,<appliedenergistics2:quartz_glass>,<ore:blockElectricalSteel>],
    [<appliedenergistics2:material:44>,<calculator:flawlessassembly>,<appliedenergistics2:material:43>],
    [<ore:blockElectricalSteel>,<appliedenergistics2:quartz_glass>,<ore:blockElectricalSteel>]
]);

recipes.remove(<appliedenergistics2:quartz_glass>);
InductionSmelter.addRecipe(<appliedenergistics2:quartz_glass> * 4, <enderio:block_fused_quartz> * 4, <botania:quartz:5> * 5, 8192);

recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
InductionSmelter.addRecipe(<appliedenergistics2:quartz_vibrant_glass>*2, <appliedenergistics2:quartz_glass>*2, <thermalfoundation:material:102>, 8192);

// componentItem
recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped(<appliedenergistics2:material:35>, [
	[<ore:dustSignalum>,<appliedenergistics2:material:10>,<ore:dustSignalum>],
	[<appliedenergistics2:material:10>,<appliedenergistics2:material:23>,<appliedenergistics2:material:10>],
	[<ore:dustSignalum>,<appliedenergistics2:material:10>,<ore:dustSignalum>]
]);
recipes.remove(<appliedenergistics2:material:36>);
recipes.addShaped(<appliedenergistics2:material:36>, [
	[<ore:dustLumium>,<appliedenergistics2:material:35>,<ore:dustLumium>],
	[<appliedenergistics2:material:35>,<appliedenergistics2:material:22>,<appliedenergistics2:material:35>],
	[<ore:dustLumium>,<appliedenergistics2:material:35>,<ore:dustLumium>]
]);
recipes.remove(<appliedenergistics2:material:37>);
recipes.addShaped(<appliedenergistics2:material:37>, [
	[<ore:dustElectrumFlux>,<appliedenergistics2:material:36>,<ore:dustElectrumFlux>],
	[<appliedenergistics2:material:36>,<appliedenergistics2:material:24>,<appliedenergistics2:material:36>],
	[<ore:dustElectrumFlux>,<appliedenergistics2:material:36>,<ore:dustElectrumFlux>]
]);
recipes.remove(<appliedenergistics2:material:38>);
recipes.addShaped(<appliedenergistics2:material:38>, [
	[<ore:dustEnderium>,<appliedenergistics2:material:37>,<ore:dustEnderium>],
	[<appliedenergistics2:material:37>,<threng:material:6>,<appliedenergistics2:material:37>],
	[<ore:dustEnderium>,<appliedenergistics2:material:37>,<ore:dustEnderium>]
]);

// componentFluid
recipes.remove(<appliedenergistics2:material:54>);
recipes.addShaped(<appliedenergistics2:material:54>, [
	[<ore:dustSignalum>,<ic2:itemcellempty>,<ore:dustSignalum>],
	[<ic2:itemcellempty>,<appliedenergistics2:material:23>,<ic2:itemcellempty>],
	[<ore:dustSignalum>,<ic2:itemcellempty>,<ore:dustSignalum>]
]);
recipes.remove(<appliedenergistics2:material:55>);
recipes.addShaped(<appliedenergistics2:material:55>, [
	[<ore:dustLumium>,<appliedenergistics2:material:54>,<ore:dustLumium>],
	[<appliedenergistics2:material:54>,<appliedenergistics2:material:22>,<appliedenergistics2:material:54>],
	[<ore:dustLumium>,<appliedenergistics2:material:54>,<ore:dustLumium>]
]);
recipes.remove(<appliedenergistics2:material:56>);
recipes.addShaped(<appliedenergistics2:material:56>, [
	[<ore:dustElectrumFlux>,<appliedenergistics2:material:55>,<ore:dustElectrumFlux>],
	[<appliedenergistics2:material:55>,<appliedenergistics2:material:24>,<appliedenergistics2:material:55>],
	[<ore:dustElectrumFlux>,<appliedenergistics2:material:55>,<ore:dustElectrumFlux>]
]);
recipes.remove(<appliedenergistics2:material:57>);
recipes.addShaped(<appliedenergistics2:material:57>, [
	[<ore:dustEnderium>,<appliedenergistics2:material:56>,<ore:dustEnderium>],
	[<appliedenergistics2:material:56>,<threng:material:6>,<appliedenergistics2:material:56>],
	[<ore:dustEnderium>,<appliedenergistics2:material:56>,<ore:dustEnderium>]
]);

// componentSpace
recipes.remove(<appliedenergistics2:material:32>);
recipes.addShaped(<appliedenergistics2:material:32>, [
	[<ore:dustLumium>,<appliedenergistics2:material:9>,<ore:dustLumium>],
	[<appliedenergistics2:material:9>,<appliedenergistics2:material:24>,<appliedenergistics2:material:9>],
	[<ore:dustLumium>,<appliedenergistics2:material:9>,<ore:dustLumium>]
]);
recipes.remove(<appliedenergistics2:material:33>);
recipes.addShaped(<appliedenergistics2:material:33>, [
	[<ore:dustElectrumFlux>,<appliedenergistics2:material:32>,<ore:dustElectrumFlux>],
	[<appliedenergistics2:material:32>,<threng:material:6>,<appliedenergistics2:material:32>],
	[<ore:dustElectrumFlux>,<appliedenergistics2:material:32>,<ore:dustElectrumFlux>]
]);
recipes.remove(<appliedenergistics2:material:34>);
recipes.addShaped(<appliedenergistics2:material:34>, [
	[<ore:dustEnderium>,<appliedenergistics2:material:33>,<ore:dustEnderium>],
	[<appliedenergistics2:material:33>,<threng:material:14>,<appliedenergistics2:material:33>],
	[<ore:dustEnderium>,<appliedenergistics2:material:33>,<ore:dustEnderium>]
]);

var plateIridium as IItemStack = findFirstItemFromMod("thermalfoundation","plate","iridium");

// IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time
Empowerer.addRecipe(<appliedenergistics2:material:13>, <embers:plate_dawnstone>, <appliedenergistics2:material:10>, plateIridium, plateIridium, plateIridium, 5000, 20);
Empowerer.addRecipe(<appliedenergistics2:material:14>, <embers:plate_dawnstone>, <minecraft:diamond>, plateIridium, plateIridium, plateIridium, 5000, 20);
Empowerer.addRecipe(<appliedenergistics2:material:15>, <embers:plate_dawnstone>, <minecraft:gold_ingot>, plateIridium, plateIridium, plateIridium, 5000, 20);
Empowerer.addRecipe(<appliedenergistics2:material:19>, <embers:plate_dawnstone>, <appliedenergistics2:material:5>, plateIridium, plateIridium, plateIridium, 5000, 20);
Empowerer.addRecipe(<appliedenergistics2:material:21>, <embers:plate_dawnstone>, <minecraft:name_tag>, plateIridium, plateIridium, plateIridium, 5000, 20);

//Creative ME Storage Cell
ExtremeCrafting.addShaped("creative_me_storage_cell",<appliedenergistics2:creative_storage_cell>,[
    [<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<contenttweaker:infinite>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<appliedenergistics2:controller>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>]
]);
