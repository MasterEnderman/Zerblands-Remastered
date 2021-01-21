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
import mods.botaniatweaks.Agglomeration;
import mods.jei.JEI;

JEI.removeAndHide(<appliedenergistics2:crank>);
JEI.removeAndHide(<appliedenergistics2:grindstone>);

ElvenTrade.addRecipe([<appliedenergistics2:sky_stone_block>],[<minecraft:end_stone>,<minecraft:end_stone>]);

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

recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped(<appliedenergistics2:material:35>, [
    [<ore:dustRedstone>,<appliedenergistics2:material:10>,<ore:dustRedstone>],
    [<appliedenergistics2:material:10>,<appliedenergistics2:material:22>,<appliedenergistics2:material:10>],
    [<ore:dustRedstone>,<appliedenergistics2:material:10>,<ore:dustRedstone>]
]);

recipes.remove(<appliedenergistics2:material:36>);
recipes.addShaped(<appliedenergistics2:material:36>, [
    [<ore:dustGlowstone>,<appliedenergistics2:material:35>,<ore:dustGlowstone>],
    [<appliedenergistics2:material:35>,<appliedenergistics2:material:23>,<appliedenergistics2:material:35>],
    [<ore:dustGlowstone>,<appliedenergistics2:material:35>,<ore:dustGlowstone>]
]);

recipes.remove(<appliedenergistics2:material:37>);
recipes.addShaped(<appliedenergistics2:material:37>, [
    [<redstonearsenal:material>,<appliedenergistics2:material:36>,<redstonearsenal:material>],
    [<appliedenergistics2:material:36>,<appliedenergistics2:material:24>,<appliedenergistics2:material:36>],
    [<redstonearsenal:material>,<appliedenergistics2:material:36>,<redstonearsenal:material>]
]);

recipes.remove(<appliedenergistics2:material:38>);
recipes.addShaped(<appliedenergistics2:material:38>, [
    [<thermalfoundation:material:103>,<appliedenergistics2:material:37>,<thermalfoundation:material:103>],
    [<appliedenergistics2:material:37>,<appliedenergistics2:material:24>,<appliedenergistics2:material:37>],
    [<thermalfoundation:material:103>,<appliedenergistics2:material:37>,<thermalfoundation:material:103>]
]);

recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [
    [<ore:blockElectricalSteel>,<appliedenergistics2:material:23>,<ore:blockElectricalSteel>],
    [<ore:circuitAdvanced>,<opencomputers:component:2>,<ore:circuitAdvanced>],
    [<ore:blockElectricalSteel>,<appliedenergistics2:material:23>,<ore:blockElectricalSteel>]
]);

recipes.remove(<appliedenergistics2:quartz_glass>);
recipes.addShaped(<appliedenergistics2:quartz_glass>*4, [
    [<ore:dustQuartz>,<ore:blockGlassHardened>,<ore:dustQuartz>],
    [<ore:blockGlassHardened>,<ore:dustQuartz>,<ore:blockGlassHardened>],
    [<ore:dustQuartz>,<ore:blockGlassHardened>,<ore:dustQuartz>]
]);

recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler>, [
    [<ore:blockElectricalSteel>,<appliedenergistics2:quartz_glass>,<ore:blockElectricalSteel>],
    [<appliedenergistics2:material:44>,<calculator:flawlessassembly>,<appliedenergistics2:material:43>],
    [<ore:blockElectricalSteel>,<appliedenergistics2:quartz_glass>,<ore:blockElectricalSteel>]
]);

// IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time
Empowerer.addRecipe(<appliedenergistics2:material:13>, <embers:plate_dawnstone>, <appliedenergistics2:material:10>, <appliedenergistics2:material:10>, <appliedenergistics2:material:10>, <appliedenergistics2:material:10>, 5000, 20);
Empowerer.addRecipe(<appliedenergistics2:material:14>, <embers:plate_dawnstone>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, 5000, 20);
Empowerer.addRecipe(<appliedenergistics2:material:15>, <embers:plate_dawnstone>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, 5000, 20);
Empowerer.addRecipe(<appliedenergistics2:material:19>, <embers:plate_dawnstone>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, 5000, 20);
Empowerer.addRecipe(<appliedenergistics2:material:21>, <embers:plate_dawnstone>, <minecraft:name_tag>, <minecraft:name_tag>, <minecraft:name_tag>, <minecraft:name_tag>, 5000, 20);

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
