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
import mods.bloodmagic.BloodAltar;

BloodAltar.addRecipe(<draconicevolution:draconium_ingot>,<tconstruct:ingots:2>,5,100000,1000,1000);

Empowerer.addRecipe(<draconicevolution:draconium_block>,<tconstruct:metal:2>,<minecraft:dragon_egg>,<abyssalcraft:abyingot>,<abyssalcraft:abyingot>,<abyssalcraft:abyingot>, 50000, 1000);

<draconicevolution:chaos_crystal>.addTooltip(format.red("DON'T USE THIS. IT WILL END YOUR WORLD."));
<draconicevolution:chaos_crystal>.addTooltip(format.red("YOU HAVE BEEN WARNED. I WON'T BE RESPONIBLE"));
<draconicevolution:chaos_crystal>.addTooltip(format.red("FOR ANY DAMAGE THIS CAUSES TO YOUR BASE!"));

recipes.addShaped(<draconicevolution:chaos_crystal>, [
    [<draconicevolution:chaotic_core>,<contenttweaker:ender_token>,<draconicevolution:chaotic_core>],
    [<abyssalcraft:odb>,<abyssalcraft:odb>,<abyssalcraft:odb>],
    [<draconicevolution:crafting_injector:3>,<draconicevolution:crafting_injector:3>,<draconicevolution:crafting_injector:3>]
]);

recipes.remove(<draconicevolution:crafting_injector>);
recipes.addShaped(<draconicevolution:crafting_injector>, [
    [<ore:gaiaIngot>,<draconicevolution:draconic_core>,<ore:gaiaIngot>],
    [<contenttweaker:slate_ethereal>,<calculator:calculatorlocator>,<contenttweaker:slate_ethereal>],
    [<ic2:itemmisc:258>,<quantumflux:quibitcluster:5>,<ic2:itemmisc:258>]
]);

recipes.remove(<draconicevolution:draconic_core>);
recipes.addShaped(<draconicevolution:draconic_core>, [
    [<ore:blockDraconium>,<quantumflux:craftingpiece:1>,<ore:blockDraconium>],
    [<quantumflux:craftingpiece:1>,<tp:netherstar_block>,<quantumflux:craftingpiece:1>],
    [<ore:blockDraconium>,<quantumflux:craftingpiece:1>,<ore:blockDraconium>]
]);

recipes.remove(<draconicevolution:fusion_crafting_core>);
recipes.addShaped(<draconicevolution:fusion_crafting_core>, [
    [<ore:blockLudicrite>,<draconicevolution:wyvern_energy_core>,<ore:blockLudicrite>],
    [<draconicevolution:wyvern_energy_core>,<draconicevolution:particle_generator>,<draconicevolution:wyvern_energy_core>],
    [<ore:blockLudicrite>,<draconicevolution:wyvern_energy_core>,<ore:blockLudicrite>]
]);

recipes.remove(<draconicevolution:wyvern_energy_core>);
recipes.addShaped(<draconicevolution:wyvern_energy_core>, [
    [<ore:blockDraconium>,<enderio:block_cap_bank:3>,<ore:blockDraconium>],
    [<enderio:block_cap_bank:3>,<draconicevolution:draconic_core>,<enderio:block_cap_bank:3>],
    [<ore:blockDraconium>,<enderio:block_cap_bank:3>,<ore:blockDraconium>]
]);

recipes.remove(<draconicevolution:wyvern_sword>);
recipes.addShaped(<draconicevolution:wyvern_sword>, [
    [<tp:netherstar_block>,<draconicevolution:wyvern_core>,<tp:netherstar_block>],
    [<draconicevolution:draconium_block>,<redstonerepository:tool.sword_gelid>,<draconicevolution:draconium_block>],
    [<tp:netherstar_block>,<draconicevolution:wyvern_energy_core>,<tp:netherstar_block>]
]);

recipes.remove(<draconicevolution:wyvern_shovel>);
recipes.addShaped(<draconicevolution:wyvern_shovel>, [
    [<tp:netherstar_block>,<draconicevolution:wyvern_core>,<tp:netherstar_block>],
    [<draconicevolution:draconium_block>,<redstonerepository:tool.shovel_gelid>,<draconicevolution:draconium_block>],
    [<tp:netherstar_block>,<draconicevolution:wyvern_energy_core>,<tp:netherstar_block>]
]);

recipes.remove(<draconicevolution:wyvern_pick>);
recipes.addShaped(<draconicevolution:wyvern_pick>, [
    [<tp:netherstar_block>,<draconicevolution:wyvern_core>,<tp:netherstar_block>],
    [<draconicevolution:draconium_block>,<redstonerepository:tool.pickaxe_gelid>,<draconicevolution:draconium_block>],
    [<tp:netherstar_block>,<draconicevolution:wyvern_energy_core>,<tp:netherstar_block>]
]);

recipes.remove(<draconicevolution:wyvern_axe>);
recipes.addShaped(<draconicevolution:wyvern_axe>, [
    [<tp:netherstar_block>,<draconicevolution:wyvern_core>,<tp:netherstar_block>],
    [<draconicevolution:draconium_block>,<redstonerepository:tool.axe_gelid>,<draconicevolution:draconium_block>],
    [<tp:netherstar_block>,<draconicevolution:wyvern_energy_core>,<tp:netherstar_block>]
]);

recipes.remove(<draconicevolution:wyvern_bow>);
recipes.addShaped(<draconicevolution:wyvern_bow>, [
    [<tp:netherstar_block>,<draconicevolution:wyvern_core>,<tp:netherstar_block>],
    [<draconicevolution:draconium_block>,<redstonearsenal:tool.bow_flux>,<draconicevolution:draconium_block>],
    [<tp:netherstar_block>,<draconicevolution:wyvern_energy_core>,<tp:netherstar_block>]
]);

recipes.remove(<draconicevolution:wyvern_helm>);
recipes.addShaped(<draconicevolution:wyvern_helm>, [
    [<tp:netherstar_block>,<draconicevolution:wyvern_core>,<tp:netherstar_block>],
    [<draconicevolution:draconium_block>,<redstonerepository:armor.helmet_gelid>,<draconicevolution:draconium_block>],
    [<tp:netherstar_block>,<draconicevolution:wyvern_energy_core>,<tp:netherstar_block>]
]);

recipes.remove(<draconicevolution:wyvern_chest>);
recipes.addShaped(<draconicevolution:wyvern_chest>, [
    [<tp:netherstar_block>,<draconicevolution:wyvern_core>,<tp:netherstar_block>],
    [<draconicevolution:draconium_block>,<redstonerepository:armor.plate_gelid>,<draconicevolution:draconium_block>],
    [<tp:netherstar_block>,<draconicevolution:wyvern_energy_core>,<tp:netherstar_block>]
]);

recipes.remove(<draconicevolution:wyvern_legs>);
recipes.addShaped(<draconicevolution:wyvern_legs>, [
    [<tp:netherstar_block>,<draconicevolution:wyvern_core>,<tp:netherstar_block>],
    [<draconicevolution:draconium_block>,<redstonerepository:armor.legs_gelid>,<draconicevolution:draconium_block>],
    [<tp:netherstar_block>,<draconicevolution:wyvern_energy_core>,<tp:netherstar_block>]
]);

recipes.remove(<draconicevolution:wyvern_boots>);
recipes.addShaped(<draconicevolution:wyvern_boots>, [
    [<tp:netherstar_block>,<draconicevolution:wyvern_core>,<tp:netherstar_block>],
    [<draconicevolution:draconium_block>,<redstonerepository:armor.boots_gelid>,<draconicevolution:draconium_block>],
    [<tp:netherstar_block>,<draconicevolution:wyvern_energy_core>,<tp:netherstar_block>]
]);
