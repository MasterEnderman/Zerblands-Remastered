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
import mods.enderio.SliceNSplice;
import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;
import scripts.functions.calc_atomic;

recipes.remove(<thermalexpansion:augment:401>);
calc_atomic(<thermalexpansion:augment:401>,<thermalexpansion:augment:400>,<actuallyadditions:block_item_repairer>,<evilcraft:blood_chest>);

recipes.remove(<thermalexpansion:frame>);
Altar.addConstellationAltarRecipe("te_machine_frame", <thermalexpansion:frame>, 800, 200, [
    <contenttweaker:weakeneddiamond>,
    <contenttweaker:energy_module>,
    <contenttweaker:weakeneddiamond>,
    <abyssalcraft:cingot>,
    <forestry:impregnated_casing>,
    <abyssalcraft:cingot>,
    <contenttweaker:weakeneddiamond>,
    <embers:winding_gears>,
    <contenttweaker:weakeneddiamond>,
    <enderio:item_alloy_ingot>,
    <enderio:item_alloy_ingot>,
    <enderio:item_alloy_ingot>,
    <enderio:item_alloy_ingot>,
    <botania:managlass>,
    <botania:managlass>,
    <botania:managlass>,
    <botania:managlass>,
    <botania:managlass>,
    <botania:managlass>,
    <botania:managlass>,
    <botania:managlass>
]);

recipes.remove(<thermalexpansion:frame:64>);
Empowerer.addRecipe(<thermalexpansion:frame:64>, <actuallyadditions:block_misc:9>, <ore:platePlatinum>, <ore:plateTin>, <ore:platePlatinum>, <ore:plateTin>, 8192, 100, [0.1, 0.1, 0.1]);

recipes.remove(<thermalexpansion:frame:128>);
Empowerer.addRecipe(<thermalexpansion:frame:128>, <actuallyadditions:block_misc:9>, <ore:plateElectrum>, <ore:plateLead>, <ore:plateElectrum>, <ore:plateLead>, 8192, 100, [0.1, 0.1, 0.1]);

recipes.removeShaped(<thermalexpansion:satchel>);
calc_basic(<thermalexpansion:satchel>,<toolbelt:pouch>,<simplyjetpacks:metaitem:4>);

recipes.remove(<thermalexpansion:satchel:100>);
calc_basic(<thermalexpansion:satchel:100>,<thermalexpansion:satchel>,<actuallyadditions:item_crystal_empowered:3>);

recipes.remove(<thermalexpansion:strongbox>);
calc_basic(<thermalexpansion:strongbox>, <minecraft:chest>, <ore:plateTin>);

recipes.remove(<thermalexpansion:cache>);
calc_basic(<thermalexpansion:cache>, <storagedrawers:customdrawers>, <ore:plateTin>);

Empowerer.addRecipe(<thermalexpansion:frame:129>, <thermalexpansion:frame:128>, <ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>, 8192, 100, [0.1, 0.1, 0.1]);
Empowerer.addRecipe(<thermalexpansion:frame:130>, <thermalexpansion:frame:129>, <ore:plateElectrum>, <ore:plateElectrum>, <ore:plateElectrum>, <ore:plateElectrum>, 8192, 100, [0.1, 0.1, 0.1]);
Empowerer.addRecipe(<thermalexpansion:frame:131>, <thermalexpansion:frame:130>, <ore:plateSignalum>, <ore:plateSignalum>, <ore:plateSignalum>, <ore:plateSignalum>, 8192, 100, [0.1, 0.1, 0.1]);
Empowerer.addRecipe(<thermalexpansion:frame:132>, <thermalexpansion:frame:131>, <ore:plateEnderium>, <ore:plateEnderium>, <ore:plateEnderium>, <ore:plateEnderium>, 8192, 100, [0.1, 0.1, 0.1]);

//Transposer.addFillRecipe(<contenttweaker:magma_soaked_cobblestone>, <minecraft:magma>,  <liquid:stone> * 576, 2000);
Transposer.addFillRecipe(<thermalexpansion:frame:146>, <thermalexpansion:frame:130>, <liquid:redstone> * 900, 4000);
Transposer.addFillRecipe(<thermalexpansion:frame:147>, <thermalexpansion:frame:131>, <liquid:redstone> * 900, 4000);
Transposer.addFillRecipe(<thermalexpansion:frame:148>, <thermalexpansion:frame:132>, <liquid:redstone> * 900, 4000);

var mapDynamo as string[IItemStack] = {
    <thermalexpansion:dynamo> : "copper",
    <thermalexpansion:dynamo:1> : "invar",
    <thermalexpansion:dynamo:2> : "tin",
    <thermalexpansion:dynamo:3> : "lead",
    <thermalexpansion:dynamo:4> : "electrum",
    <thermalexpansion:dynamo:5> : "constantan",
};

for dynamo, metal in mapDynamo {
    var gear as IIngredient = getOreDict("gear",metal);

    recipes.remove(dynamo);
    recipes.addShaped(dynamo, [
        [null,<thermalfoundation:material:514>,null],
        [gear,<contenttweaker:electric_motor>,gear],
        [<immersiveengineering:metal_decoration0:5>,<immersiveengineering:metal_decoration0:3>,<immersiveengineering:metal_decoration0:5>]
    ]);
}

recipes.removeShaped(<thermalexpansion:capacitor>);
recipes.addShaped(<thermalexpansion:capacitor>, [
    [null,<ore:dustRedstone>,null],
    [<ore:ingotLead>,<ic2:itembatre>,<ore:ingotLead>],
    [<ore:dustRedstone>,<ore:ingotCopper>,<ore:dustRedstone>]
]);

var mapMachine as IIngredient[][IItemStack] = {
    <thermalexpansion:machine> : [<ic2:blockmachinelv:1>,<immersiveengineering:metal_device1:1>,<ore:gearBronze>],
    <thermalexpansion:machine:1> : [<ic2:blockmachinelv:15>,<contenttweaker:cutting_head>,<ore:gearSteel>],
    <thermalexpansion:machine:2> : [<thermalfoundation:material:657>,<thermalfoundation:material:657>,<ore:gearCopper>], // Saw Mill
    <thermalexpansion:machine:3> : [<contenttweaker:scientificcalculator>,<immersiveengineering:metal_decoration0:2>,<ore:gearElectrum>],
    <thermalexpansion:machine:4> : [<immersiveengineering:metal_device1:13>,<randomthings:fertilizeddirt>,<ore:gearLumium>], // Phytogenic Insolator
    <thermalexpansion:machine:5> : [<immersiveengineering:mold>,<minecraft:piston>,<ore:gearBronze>], // Compactor
    <thermalexpansion:machine:6> : [<immersiveengineering:metal_device1:1>,<botania:rune:1>,<ore:gearInvar>],
    <thermalexpansion:machine:7> : [<forestry:still>,<embers:diffraction_barrel>,<ore:gearNickel>], // Fractionating Still
    <thermalexpansion:machine:8> : [<immersiveengineering:metal_device0:5>,<thermalfoundation:material:512>,<ore:gearSilver>],
    <thermalexpansion:machine:9> : [<immersiveengineering:metal_device1:5>,<thermalfoundation:material:515>,<ore:gearSignalum>],
    <thermalexpansion:machine:10> : [<forestry:centrifuge>,<contenttweaker:iron_rotor>,<ore:gearConstantan>], // Centrifugal Seperator
    <thermalexpansion:machine:11> : [<forestry:worktable>,<opencomputers:material:7>,<ore:gearCopper>],
    <thermalexpansion:machine:12> : [<botania:brewery>,<xreliquary:angelheart_vial>,<ore:gearConstantan>], // Alchemical Imbuer
    <thermalexpansion:machine:13> : [<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}),<ore:blockEnchantedMetal>,<ore:gearConstantan>], // Arcane Ensorcellator
    <thermalexpansion:machine:14> : [<botania:rune:7>,<torchmaster:frozen_pearl>,<ore:gearInvar>], // Glacial Precipitator
    <thermalexpansion:machine:15> : [<ic2:ic2upgrades:30>,<tp:cobblegen_block>,<ore:gearInvar>], // Igneous Extruder
};

for machine, items in mapMachine {
    var top as IIngredient = items[0];
    var side as IIngredient = items[1];
    var gear as IIngredient = items[2];

    recipes.remove(machine);
    recipes.addShaped(machine, [
        [gear,top,gear],
        [side,<thermalexpansion:frame>,side],
        [<immersiveengineering:metal_decoration0:5>,<thermalfoundation:material:513>,<immersiveengineering:metal_decoration0:5>]
    ]);
}

var mapDevice as IIngredient[][IItemStack] = {
    <thermalexpansion:device> : [<thermalfoundation:material:512>,<botania:rune>,<ore:gearTin>],
    <thermalexpansion:device:3> : [<immersiveengineering:metal_device1:6>,<ic2:itemtreetap>,<ore:gearCopper>],
    <thermalexpansion:device:12> : [<actuallyadditions:block_ranged_collector>,<minecraft:ender_pearl>,<ore:gearTin>],
    <thermalexpansion:device:11> : [<minecraft:dispenser>,<thermalexpansion:morb>,<ore:gearConstantan>],
    <thermalexpansion:device:10> : [<immersiveengineering:mold:6>,<minecraft:crafting_table>,<ore:gearLead>],
    <thermalexpansion:device:9> : [<immersiveengineering:chemthrower>,<thermalfoundation:material:512>,<ore:gearSilver>],
    <thermalexpansion:device:8> : [<thermalfoundation:tome_experience>,<ore:ingotEnchantedMetal>,<ore:gearGold>],
    <thermalexpansion:device:7> : [<thermalfoundation:tome_lexicon>,<ore:ingotEnchantedMetal>,<ore:gearLead>],
    <thermalexpansion:device:6> : [<contenttweaker:module_transfer>,<thermalfoundation:material:512>,<ore:gearCopper>],
    // <thermalexpansion:device:5> : [<contenttweaker:module_transfer>,<metalchests:metal_chest>,<ore:gearTin>],
    <thermalexpansion:device:5> : [<contenttweaker:module_transfer>,<ore:chest>,<ore:gearTin>],
    <thermalexpansion:device:4> : [<harvestcraft:watertrap>,<minecraft:fishing_rod>,<ore:gearIron>],
    <thermalexpansion:device:2> : [<thermalexpansion:tank>,<thermaldynamics:duct_16:2>,<ore:gearInvar>],
    <thermalexpansion:device:1> : [<extrautils2:trashcan>,<botania:rune:1>,<ore:gearInvar>],
};

for device, items in mapDevice {
    var top as IIngredient = items[0];
    var side as IIngredient = items[1];
    var gear as IIngredient = items[2];

    recipes.remove(device);
    recipes.addShaped(device, [
        [gear,top,gear],
        [side,<thermalexpansion:frame:64>,side],
        [<immersiveengineering:metal_decoration0:4>,<contenttweaker:storage_module>,<immersiveengineering:metal_decoration0:4>]
    ]);
}

var mapRemoveCentrifuge as IItemStack[] = [
    <thermalfoundation:material:1025>,
    <thermalfoundation:material:103>,
    <thermalfoundation:material:102>,
    <thermalfoundation:material:1026>,
    <thermalfoundation:material:101>,
    <thermalfoundation:material:1027>,
    <thermalfoundation:material:1024>,
    <minecraft:concrete_powder>,
    <minecraft:concrete_powder:1>,
    <minecraft:concrete_powder:2>,
    <minecraft:concrete_powder:3>,
    <minecraft:concrete_powder:4>,
    <minecraft:concrete_powder:5>,
    <minecraft:concrete_powder:6>,
    <minecraft:concrete_powder:7>,
    <minecraft:concrete_powder:8>,
    <minecraft:concrete_powder:9>,
    <minecraft:concrete_powder:10>,
    <minecraft:concrete_powder:11>,
    <minecraft:concrete_powder:12>,
    <minecraft:concrete_powder:13>,
    <minecraft:concrete_powder:14>,
    <minecraft:concrete_powder:15>,
];

for item in mapRemoveCentrifuge {
    Centrifuge.removeRecipe(item);
}

SliceNSplice.addRecipe(<thermalexpansion:frame>, [
    <forestry:impregnated_casing>, <contenttweaker:energy_module>, <embers:winding_gears>,
    <ore:ingotLiquifiedCoralium>,<ore:ingotElectricalSteel>,<contenttweaker:weakeneddiamond>
], 10000);
