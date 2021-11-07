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

recipes.addShaped(<gendustry:power_module>, [
    [<ore:plateSignalum>,<enderio:item_basic_capacitor:1>,<ore:plateSignalum>],
    [<enderio:item_basic_capacitor:1>,<ore:gearEnderium>,<enderio:item_basic_capacitor:1>],
    [<ore:plateSignalum>,<enderio:item_basic_capacitor:1>,<ore:plateSignalum>]
]);

recipes.addShaped(<gendustry:industrial_apiary>, [
    [<ore:plateConstantan>,<thermalfoundation:glass_alloy:6>,<ore:plateConstantan>],
    [<gendustry:power_module>,<forestry:alveary.plain>,<gendustry:power_module>],
    [<ore:plateConstantan>,<forestry:hardened_machine>,<ore:plateConstantan>]
]);

recipes.addShaped(<gendustry:upgrade_frame>, [
    [<ore:ingotTin>,<minecraft:redstone>,<ore:ingotTin>],
    [<ore:ingotTin>,<ore:plateInvar>,<ore:ingotTin>],
    [<ore:ingotTin>,<opencomputers:material:10>,<ore:ingotTin>]
]);

recipes.addShaped(<gendustry:genetics_processor>, [
    [<ore:gemDiamond>,<ic2:itemmisc:452>,<ore:gemDiamond>],
    [<minecraft:redstone>,<openmodularturrets:intermediate_tiered:4>,<minecraft:redstone>],
    [<ore:gemDiamond>,<opencomputers:component:1>,<ore:gemDiamond>]
]);

recipes.addShaped(<gendustry:env_processor>, [
    [<ore:gemDiamond>,<ic2:itemmisc:452>,<ore:gemDiamond>],
    [<minecraft:dye:4>,<openmodularturrets:intermediate_tiered:4>,<minecraft:dye:4>],
    [<ore:gemDiamond>,<opencomputers:component:1>,<ore:gemDiamond>]
]);

// Default recipes from config (config will be removed -> different recipes in nightmare mode)

recipes.addShaped(<gendustry:industrial_grafter:1>, [
    [null,<ore:gemDiamond>,<ore:gemDiamond>],
    [null,<forestry:grafter>,<ore:gemDiamond>],
    [<gendustry:power_module>,null,null]
]);

recipes.addShaped(<gendustry:industrial_scoop:1>, [
    [null,null,<forestry:scoop>],
    [null,<ore:gemDiamond>,null],
    [<gendustry:power_module>,null,null]
]);

recipes.addShapeless(<gendustry:pollen_kit>, [<gendustry:labware>,<minecraft:paper>,<minecraft:string>]);

recipes.addShaped(<gendustry:mutagen_tank>, [
    [<ore:ingotTin>,<ore:paneGlass>,<ore:ingotTin>],
    [<ore:ingotTin>,<ore:paneGlass>,<ore:ingotTin>],
    [<ore:ingotTin>,<ore:paneGlass>,<ore:ingotTin>]
]);

recipes.addShaped(<gendustry:bee_receptacle>, [
    [<ore:ingotBronze>,<ore:ingotBronze>,<ore:ingotBronze>],
    [<ore:ingotBronze>,<ore:paneGlass>,<ore:ingotBronze>],
    [<ore:dustRedstone>,<minecraft:light_weighted_pressure_plate>,<ore:dustRedstone>]
]);

recipes.addShaped(<gendustry:climate_module>, [
    [<ore:ingotBronze>,<ore:dustRedstone>,<ore:ingotBronze>],
    [<ore:ingotBronze>,<ore:gearBronze>,<ore:ingotBronze>],
    [<ore:ingotBronze>,<ore:dustRedstone>,<ore:ingotBronze>]
]);

recipes.addShaped(<gendustry:labware> * 16, [
    [<ore:paneGlass>,null,<ore:paneGlass>],
    [<ore:paneGlass>,null,<ore:paneGlass>],
    [null,<ore:gemDiamond>,null]
]);

recipes.addShaped(<gendustry:gene_sample_blank>, [
    [null,<ore:ingotTin>,null],
    [<ore:ingotTin>,<ore:dustRedstone>,<ore:ingotTin>],
    [null,<ore:ingotTin>,null]
]);

recipes.addShaped(<gendustry:gene_template>, [
    [<ore:dustRedstone>,<ore:ingotTin>,<ore:dustRedstone>],
    [<ore:ingotTin>,<ore:gemDiamond>,<ore:ingotTin>],
    [<ore:dustRedstone>,<ore:ingotTin>,<ore:dustRedstone>]
]);

recipes.addShaped(<gendustry:import_cover> * 1, [
    [<ore:ingotBronze>,null,<ore:ingotBronze>],
    [null,<minecraft:piston>,null],
    [null,<ore:gearBronze>,null]
]);

recipes.addShaped(<gendustry:eject_cover> * 1, [
    [null,<ore:gearBronze>,null],
    [null,<minecraft:piston>,null],
    [<ore:ingotBronze>,null,<ore:ingotBronze>]
]);

recipes.addShaped(<gendustry:error_sensor_cover> * 1, [
    [<ore:ingotBronze>,<ore:dustRedstone>,<ore:ingotBronze>],
    [<ore:dustRedstone>,<ore:gemQuartz>,<ore:dustRedstone>],
    [<ore:ingotBronze>,<ore:dustRedstone>,<ore:ingotBronze>]
]);

var H as IIngredient = <minecraft:hopper>;
var S as IIngredient = <minecraft:piston>;
var D as IIngredient = <ore:gemDiamond>;
var L as IIngredient = <ore:blockGlass>;
var B as IIngredient = <ore:ingotBronze>;
var A as IIngredient = <ore:gearBronze>;
var M as IIngredient = <gendustry:mutagen_tank>;
var Z as IIngredient = <gendustry:genetics_processor>;
var T as IIngredient = <gendustry:bee_receptacle>;
var P as IIngredient = <gendustry:power_module>;
var O as IIngredient = <forestry:sturdy_machine>;

recipes.addShaped(<gendustry:mutagen_producer> * 1, [
    [B,H,B],
    [P,O,P],
    [A,M,A]
]);

recipes.addShaped(<gendustry:extractor> * 1, [
    [A,H,A],
    [Z,O,Z],
    [A,P,A]
]);

recipes.addShaped(<gendustry:liquifier> * 1, [
    [A,H,A],
    [S,O,S],
    [A,P,A]
]);

recipes.addShaped(<gendustry:replicator> * 1, [
    [A,Z,A],
    [P,O,P],
    [A,Z,A]
]);

recipes.addShaped(<gendustry:transposer> * 1, [
    [A,B,A],
    [Z,O,Z],
    [A,P,A]
]);

recipes.addShaped(<gendustry:mutatron> * 1, [
    [T,Z,B],
    [P,O,T],
    [T,M,B]
]);

recipes.addShaped(<gendustry:mutatron_advanced> * 1, [
    [A,<ore:gemQuartz>,A],
    [Z,<gendustry:mutatron>,Z],
    [A,P,A]
]);

recipes.addShaped(<gendustry:imprinter> * 1, [
    [A,Z,A],
    [T,O,T],
    [A,P,A]
]);

recipes.addShaped(<gendustry:sampler> * 1, [
    [A,Z,A],
    [T,O,D],
    [A,P,A]
]);
