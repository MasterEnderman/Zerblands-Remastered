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
import mods.energycontrol.KitAssembler;
import mods.ic2.Extractor;

import scripts.functions.calc_atomic;

recipes.remove(<energycontrol:item_component:4>);
Extractor.addRecipe(<energycontrol:item_component:4>,<ic2:itemmisc:355>);

recipes.remove(<energycontrol:item_upgrade>);
calc_atomic(<energycontrol:item_upgrade>,<ic2:itemmisc:260>,<energycontrol:item_component:3>,<opencomputers:material:8>);

recipes.remove(<energycontrol:item_upgrade:1>);
calc_atomic(<energycontrol:item_upgrade:1>,<ic2:itemmisc:260>,<simplyjetpacks:metaitem:3>,<opencomputers:material:7>);

recipes.remove(<energycontrol:item_upgrade:2>);
calc_atomic(<energycontrol:item_upgrade:2>,<ic2:itemmisc:260>,<thermalfoundation:security>,<opencomputers:material:9>);

recipes.remove(<energycontrol:kit_assembler>);
recipes.addShaped(<energycontrol:kit_assembler>, [
    [<contenttweaker:weakeneddiamond>,<opencomputers:assembler>,<contenttweaker:weakeneddiamond>],
    [<ore:gearSteel>,<energycontrol:item_component:2>,<ore:gearSteel>],
    [<contenttweaker:weakeneddiamond>,<contenttweaker:module_energy>,<contenttweaker:weakeneddiamond>]
]);

// Basic Circuit
KitAssembler.removeRecipe(<minecraft:redstone> * 2, <minecraft:iron_ingot>, <minecraft:flint>);
KitAssembler.addRecipe(<contenttweaker:diode> * 2, <rs_ctr:wire> * 3, <contenttweaker:stone_board>, <energycontrol:item_component:1>, 100);

// Advanced Circuit
KitAssembler.removeRecipe(<minecraft:redstone> * 2, <minecraft:gold_ingot>, <energycontrol:item_component:1>);
KitAssembler.addRecipe(<contenttweaker:resistor> * 4, <forestry:thermionic_tubes:8>, <energycontrol:item_component:1>, <energycontrol:item_component>, 100);

// Machine Casing
KitAssembler.removeRecipe(<minecraft:iron_ingot> * 3, <minecraft:iron_ingot> * 3, <energycontrol:item_component:4> * 3);
KitAssembler.addRecipe(<contenttweaker:advanced_assembly> * 3, <forestry:sturdy_machine>, <energycontrol:item_component>, <energycontrol:item_component:2>, 100);
Altar.addAttunementAltarRecipe("energycontrol_machine_casing", <energycontrol:item_component:2>, 500, 800, [
    <abyssalcraft:calcifiedstone>,
    <botania:craftinghalo>,
    <abyssalcraft:calcifiedstone>,
    <contenttweaker:advanced_assembly>,
    <forestry:sturdy_machine>,
    <contenttweaker:advanced_assembly>,
    <abyssalcraft:calcifiedstone>,
    <forestry:chipsets:3>,
    <abyssalcraft:calcifiedstone>,
    <hammercore:quartz_bordered_cobblestone>,
    <hammercore:quartz_bordered_cobblestone>,
    <hammercore:quartz_bordered_cobblestone>,
    <hammercore:quartz_bordered_cobblestone>,
]);

// Radio Transmitter
recipes.remove(<energycontrol:item_component:3>);
KitAssembler.addRecipe(<ic2:itemfreq>, <energycontrol:item_component:4> * 2, <energycontrol:item_component>, <energycontrol:item_component:3>, 100);
