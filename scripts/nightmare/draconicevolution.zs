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

import moretweaker.draconicevolution.FusionCrafting;

import scripts.functions.calc_scientific;

import scripts.mod_functions.betterCharging;

var plateDraconium as IItemStack = <tconstruct:large_plate>.withTag({Material: "draconium"});
var plateWyvern as IItemStack = <tconstruct:large_plate>.withTag({Material: "wyvern_metal"});
var plateDraconic as IItemStack = <tconstruct:large_plate>.withTag({Material: "draconic_metal"});

recipes.remove(<draconicevolution:diss_enchanter>);
RuneAltar.addRecipe(<draconicevolution:diss_enchanter>, [
    <minecraft:enchanting_table>,
    <actuallyadditions:block_crystal_empowered:4>,
    <minecraft:bookshelf>,
    <randomthings:imbue:2>,
    <evilcraft:purifier>
], 10000);

betterCharging(<draconicevolution:draconium_block:1>,<draconicevolution:draconium_block>,10000000);

FusionCrafting.remove(<draconicevolution:crafting_injector>);
FusionCrafting.remove(<draconicevolution:crafting_injector:1>);
FusionCrafting.remove(<draconicevolution:crafting_injector:2>);

calc_scientific(<draconicevolution:dislocator_receptacle>,<draconicevolution:infused_obsidian>,<contenttweaker:warp_module>);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <draconicevolution:draconic_core> : [
        [
            [<draconicevolution:draconium_block:1>,<quantumflux:craftingpiece:1>,<draconicevolution:draconium_block:1>],
            [<quantumflux:craftingpiece:1>,<actuallyadditions:item_misc:19>,<quantumflux:craftingpiece:1>],
            [<draconicevolution:draconium_block:1>,<quantumflux:craftingpiece:1>,<draconicevolution:draconium_block:1>]
        ]
    ],
    <draconicevolution:wyvern_energy_core> : [
        [
            [<rftoolspower:cell3>,<draconicevolution:draconic_core>,<rftoolspower:cell3>],
            [<draconicevolution:draconic_core>,<fluxnetworks:gargantuanfluxstorage>,<draconicevolution:draconic_core>],
            [<rftoolspower:cell3>,<draconicevolution:draconic_core>,<rftoolspower:cell3>]
        ]
    ],
    <draconicevolution:crafting_injector> : [
        [
            [<ore:ingotStellarAlloy>,<draconicevolution:draconic_core>,<ore:ingotStellarAlloy>],
            [<contenttweaker:slate_ethereal>,<contenttweaker:calculator_locator_on_2>,<contenttweaker:slate_ethereal>],
            [<quantumflux:quibitcluster:5>,<enderio:item_material:66>,<quantumflux:quibitcluster:5>]
        ]
    ],
    <draconicevolution:crafting_injector:1> : [
        [
            [<enderio:item_material:17>,<draconicevolution:wyvern_core>,<enderio:item_material:17>],
            [plateDraconium,<draconicevolution:crafting_injector>,plateDraconium],
            [<draconicevolution:wyvern_energy_core>,<contenttweaker:circuit8>,<draconicevolution:wyvern_energy_core>]
        ]
    ],
    <draconicevolution:crafting_injector:2> : [
        [
            [<enderio:item_material:17>,<draconicevolution:awakened_core>,<enderio:item_material:17>],
            [plateWyvern,<draconicevolution:crafting_injector:1>,plateWyvern],
            [<draconicevolution:draconic_energy_core>,<contenttweaker:neuro_processor>,<draconicevolution:draconic_energy_core>]
        ]
    ],
    <draconicevolution:crafting_injector:3> : [
        [
            [<enderio:item_material:17>,<draconicevolution:chaotic_core>,<enderio:item_material:17>],
            [plateDraconic, <draconicevolution:crafting_injector:2>,plateDraconic],
            [<draconicadditions:chaotic_energy_core>,<contenttweaker:wetware_assembly>,<draconicadditions:chaotic_energy_core>]
        ]
    ],
    <draconicevolution:reactor_part:4> : [
        [
            [<extrautils2:opinium:2>,<extrautils2:opinium:2>,<extrautils2:opinium:2>],
            [<extrautils2:opinium:2>,<draconicevolution:awakened_core>,<extrautils2:opinium:2>],
            [<extrautils2:opinium:2>,<extrautils2:opinium:2>,<extrautils2:opinium:2>]
        ]
    ],
    <draconicevolution:reactor_part:3> : [
        [
            [<draconicevolution:reactor_part:2>,<draconicevolution:reactor_part:1>,<draconicevolution:reactor_part:2>],
            [<bigreactors:blockludicrite>,<ic2:itemreflectors:2>,<environmentaltech:lightning_rod_insulated>],
            [<draconicevolution:reactor_part:2>,<draconicevolution:reactor_part:1>,<draconicevolution:reactor_part:2>]
        ]
    ],
    <draconicevolution:reactor_part:2> : [
        [
            [<ore:nuggetWyvernMetal>,<ore:nuggetWyvernMetal>,<ore:nuggetWyvernMetal>],
            [<advancedsolars:irradiantreinforcedplate>,<ic2:itemmisc:264>,<advancedsolars:irradiantreinforcedplate>],
            [<ore:nuggetWyvernMetal>,<ore:nuggetWyvernMetal>,<ore:nuggetWyvernMetal>]
        ]
    ],
    <draconicevolution:reactor_part:1> : [
        [
            [<ore:nuggetDraconicMetal>,<ore:nuggetDraconicMetal>,<ore:nuggetDraconicMetal>],
            [<advancedsolars:irradiantreinforcedplate>,<ic2:itemmisc:264>,<advancedsolars:irradiantreinforcedplate>],
            [<ore:nuggetDraconicMetal>,<ore:nuggetDraconicMetal>,<ore:nuggetDraconicMetal>]
        ]
    ],
    <draconicevolution:reactor_part> : [
        [
            [<ore:plateWyvernMetal>,<environmentaltech:laser_core>,<ore:plateWyvernMetal>],
            [<contenttweaker:wetware_assembly>,<draconicadditions:chaos_heart>,<contenttweaker:wetware_assembly>],
            [<ore:plateWyvernMetal>,<enderio:item_material:66>,<ore:plateWyvernMetal>]
        ]
    ],
    <draconicevolution:energy_infuser> : [
        [
            [<ore:ingotDraconium>,<draconicevolution:particle_generator>,<ore:ingotDraconium>],
            [<draconicevolution:wyvern_core>,<thermalexpansion:machine:9>,<draconicevolution:wyvern_core>],
            [<ore:ingotDraconium>,<enderio:item_material:66>,<ore:ingotDraconium>]
        ]
    ],
    <draconicevolution:celestial_manipulator> : [
        [
            [<rs_ctr:clock>,<randomthings:timeinabottle>,<rs_ctr:clock>],
            [<ore:gearDraconicMetal>,<draconicevolution:ender_energy_manipulator>,<ore:gearDraconicMetal>],
            [<openmodularturrets:intermediate_tiered:14>,<draconicadditions:chaotic_energy_core>,<openmodularturrets:intermediate_tiered:14>]
        ]
    ],
    <draconicevolution:grinder> : [
        [
            [<enderio:item_material:68>,<draconicevolution:draconic_core>,<enderio:item_material:68>],
            [<draconicevolution:wyvern_sword>,<enderio:block_killer_joe>,<draconicevolution:wyvern_sword>],
            [<enderio:item_material:68>,<contenttweaker:block_machine_hv>,<enderio:item_material:68>]
        ]
    ],
    <draconicevolution:flow_gate> : [
        [
            [<ore:plateTungsten>,<draconicevolution:potentiometer>,<ore:plateTungsten>],
            [<thermaldynamics:duct_0:4>,<energycontrol:item_component:2>,<thermaldynamics:duct_0:4>],
            [<ore:plateTungsten>,<immersiveengineering:material:27>,<ore:plateTungsten>]
        ]
    ],
    <draconicevolution:flow_gate:8> : [
        [
            [<ore:plateTungsten>,<draconicevolution:potentiometer>,<ore:plateTungsten>],
            [<thermaldynamics:duct_16:6>,<energycontrol:item_component:2>,<thermaldynamics:duct_16:6>],
            [<ore:plateTungsten>,<immersiveengineering:material:27>,<ore:plateTungsten>]
        ]
    ],
    <draconicevolution:entity_detector> : [
        [
            [<ore:dustRedstone>,<minecraft:ender_eye>,<ore:dustRedstone>],
            [<immersiveengineering:material:27>,<enderio:item_material:40>,<immersiveengineering:material:27>],
            [<ore:plateTungsten>,<energycontrol:item_component:2>,<ore:plateTungsten>]
        ]
    ],
};

for key, value in recipeMapShaped {
	var index as int = 0;    
    recipes.remove(key);

    for recipe in value {
        var name as string = "ct_"+toString(key)+"_"+index;
        recipes.addShaped(name, key, recipe);
        index += 1;
    }
}

var mapWyvern as IItemStack[IItemStack] = {
    <draconicevolution:wyvern_helm> : <ic2:itemarmorquantumhelmet>,
    <draconicevolution:wyvern_chest> : <ic2:itemarmorquantumchestplate>,
    <draconicevolution:wyvern_legs> : <ic2:itemarmorquantumlegs>,
    <draconicevolution:wyvern_boots> : <ic2:itemarmorquantumboots>,
    <draconicevolution:wyvern_pick> : <gravisuit:advanceddrill>,
    <draconicevolution:wyvern_axe> : <gravisuit:advancedchainsaw>,
    <draconicevolution:wyvern_sword> : <extrautils2:lawsword>,
    <draconicevolution:wyvern_shovel> : <ic2:itemdrills:1>,
    <draconicevolution:wyvern_bow> : <extrautils2:compoundbow>
};

for item, main in mapWyvern {
    recipes.remove(item);
    recipes.addShaped(item, [
        [<draconicevolution:draconium_block:1>,<draconicevolution:wyvern_core>,<draconicevolution:draconium_block:1>],
        [<ic2:itemmisc:264>,main,<ic2:itemmisc:264>],
        [<draconicevolution:draconium_block:1>,<draconicevolution:wyvern_energy_core>,<draconicevolution:draconium_block:1>]
    ]);
}

recipes.remove(<draconicevolution:energy_pylon>);
Empowerer.addRecipe(<draconicevolution:energy_pylon>, <draconicevolution:draconium_block:1>, <draconicevolution:wyvern_core>, <botania:pylon:2>, <contenttweaker:flux_module>, <thermaldynamics:duct_0:5>, 100000, 500, [0.8, 0.0, 0.8]);

FusionCrafting.remove(<draconicevolution:awakened_core>);
FusionCrafting.add(<draconicevolution:reactor_component:1>, <randomthings:spectreenergyinjector>, FusionCrafting.CHAOTIC, 640000000, [
    <actuallyadditions:block_laser_relay_extreme>,
    <actuallyadditions:block_laser_relay_extreme>,
    <contenttweaker:flux_module>,
    <contenttweaker:flux_module>,
    <contenttweaker:flux_module>,
    <contenttweaker:flux_module>,
    <actuallyadditions:block_laser_relay_extreme>,
    <actuallyadditions:block_laser_relay_extreme>
]);

FusionCrafting.remove(<draconicevolution:reactor_part>);
FusionCrafting.add(<draconicevolution:reactor_component>, <draconicevolution:reactor_part>, FusionCrafting.CHAOTIC, 720000000, [
    <draconicevolution:awakened_core>,
    <draconicevolution:awakened_core>,
    <draconicevolution:draconic_energy_core>,
    <draconicevolution:draconic_energy_core>,
    <draconicevolution:chaotic_core>,
    <draconicevolution:reactor_part:4>,
    <draconicevolution:chaotic_core>,
    <draconicevolution:reactor_part:3>,
    <draconicevolution:draconic_energy_core>,
    <draconicevolution:draconic_energy_core>,
    <draconicevolution:awakened_core>,
    <draconicevolution:awakened_core>
]);

FusionCrafting.add(<draconicevolution:reactor_core>, <contenttweaker:omega_core>, FusionCrafting.CHAOTIC, 1000000000, [
    <draconicadditions:chaos_crystal_stable>,
    <draconicadditions:chaos_crystal_stable>,
    <draconicadditions:chaos_crystal_stable>,
    <draconicadditions:chaos_crystal_stable>,
    <draconicadditions:chaotic_energy_core>,
    <draconicadditions:chaotic_energy_core>,
    <draconicadditions:chaos_heart>,
    <draconicadditions:chaos_heart>,
    <draconicadditions:chaotic_energy_core>,
    <draconicadditions:chaotic_energy_core>,
    <draconicadditions:chaos_crystal_stable>,
    <draconicadditions:chaos_crystal_stable>,
    <draconicadditions:chaos_crystal_stable>,
    <draconicadditions:chaos_crystal_stable>
]);

FusionCrafting.remove(<minecraft:emerald_block>);
FusionCrafting.add(<draconicevolution:wyvern_core>, <extrautils2:decorativesolid:8>, FusionCrafting.BASIC, 9000000, [
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>
]);

FusionCrafting.remove(<draconicevolution:draconium_block>);
FusionCrafting.add(<draconicevolution:draconic_block> * 9, <tconevo:metal_block>, FusionCrafting.WYVERN, 1000000000, [
    <draconicevolution:draconium_block:1>,
    <draconicevolution:draconium_block:1>,
    <draconicevolution:draconium_block:1>,
    <draconicevolution:draconium_block:1>,
    <draconicevolution:dragon_heart>,
    <draconicevolution:dragon_heart>,
    <draconicevolution:draconium_block:1>,
    <draconicevolution:draconium_block:1>,
    <draconicevolution:draconium_block:1>,
    <draconicevolution:draconium_block:1>
]);

FusionCrafting.remove(<minecraft:nether_star>);
FusionCrafting.add(<draconicevolution:awakened_core>, <tconevo:metal:4>, FusionCrafting.WYVERN, 10000000000, [
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:draconic_ingot>,
    <draconicevolution:draconic_ingot>,
    <draconicevolution:draconic_ingot>,
    <draconicevolution:draconic_ingot>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_core>
]);

FusionCrafting.remove(<minecraft:obsidian>);
FusionCrafting.add(<draconicevolution:infused_obsidian>, <contenttweaker:purifiedobsidian>, FusionCrafting.WYVERN, 1000000, [
    <tconevo:metal:7>,
    <tconevo:metal:7>,
    <contenttweaker:enddiamond>,
    <contenttweaker:enddiamond>,
    <draconicevolution:draconium_block:1>,
    <draconicevolution:draconium_block:1>,
    <contenttweaker:enddiamond>,
    <contenttweaker:enddiamond>,
    <tconevo:metal:7>,
    <tconevo:metal:7>
]);

FusionCrafting.remove(<draconicevolution:chaos_shard>);
FusionCrafting.add(<draconicevolution:chaotic_core>, <tconevo:metal:9>, FusionCrafting.DRACONIC, 100000000000, [
    <draconicevolution:awakened_core>,
    <draconicevolution:awakened_core>,
    <draconicevolution:chaos_shard>,
    <draconicevolution:chaos_shard>,
    <draconicevolution:chaos_shard>,
    <draconicevolution:chaos_shard>,
    <draconicevolution:awakened_core>,
    <draconicevolution:awakened_core>
]);

FusionCrafting.remove(<draconicevolution:wyvern_energy_core>);
FusionCrafting.add(<draconicevolution:draconic_energy_core>, <draconicevolution:awakened_core>, FusionCrafting.DRACONIC, 100000000, [
    <draconicevolution:draconic_ingot>,
    <draconicevolution:draconic_ingot>,
    <ic2:itempesd>,
    <ic2:itempesd>,
    <draconicevolution:wyvern_energy_core>,
    <draconicevolution:wyvern_energy_core>,
    <ic2:itempesd>,
    <ic2:itempesd>,
    <draconicevolution:draconic_ingot>,
    <draconicevolution:draconic_ingot>
]);

FusionCrafting.remove(<draconicevolution:particle_generator>);
FusionCrafting.add(<draconicevolution:particle_generator:2>, <draconicevolution:particle_generator>, FusionCrafting.WYVERN, 250000000, [
    <actuallyadditions:block_crystal_empowered:2>,
    <actuallyadditions:block_crystal_empowered:2>,
    <tconevo:metal:3>,
    <tconevo:metal:3>,
    <tconevo:metal:3>,
    <tconevo:metal:3>,
    <actuallyadditions:block_crystal_empowered:2>,
    <actuallyadditions:block_crystal_empowered:2>
]);

FusionCrafting.remove(<minecraft:chest>);
FusionCrafting.add(<draconicevolution:draconium_chest>, <projecte:alchemical_chest>, FusionCrafting.WYVERN, 100000000, [
    <ic2:blockmachinemv:1>,
    <draconicevolution:wyvern_energy_core>,
    <ic2:blockmachinemv:1>,
    <draconicevolution:wyvern_energy_core>,
    <ic2:blockmachinemv:1>,
    <enderio:block_inventory_chest_warehouse13>,
    <ic2:blockmachinemv:1>,
    <enderio:block_inventory_chest_warehouse13>,
    <ic2:blockmachinemv:1>,
    <enderio:block_inventory_chest_warehouse13>
]);

recipes.remove(<draconicevolution:particle_generator>);
Altar.addConstellationAltarRecipe("particle_generator", <draconicevolution:particle_generator>, 800, 200, [
    <ic2:itemmisc:58>,
    <ic2:itemmisc:58>,
    <ic2:itemmisc:58>,
    <ic2:itemmisc:58>,
    <draconicevolution:draconic_core>,
    <ic2:itemmisc:58>,
    <ic2:itemmisc:58>,
    <ic2:itemmisc:58>,
    <ic2:itemmisc:58>,
    <actuallyadditions:block_crystal_empowered>,
    <actuallyadditions:block_crystal_empowered>,
    <actuallyadditions:block_crystal_empowered>,
    <actuallyadditions:block_crystal_empowered>,
    <advancedsolars:sunnariumalloy>,
    <advancedsolars:sunnariumalloy>,
    <advancedsolars:sunnariumalloy>,
    <advancedsolars:sunnariumalloy>,
    <advancedsolars:sunnariumalloy>,
    <advancedsolars:sunnariumalloy>,
    <advancedsolars:sunnariumalloy>,
    <advancedsolars:sunnariumalloy>
]);

recipes.remove(<draconicevolution:fusion_crafting_core>);
Altar.addTraitAltarRecipe("fusion_crafting_core", <draconicevolution:fusion_crafting_core>, 4500, 100, [
    <advancedsolars:irradiantglasspane>,
    <advancedsolars:irradiantglasspane>,
    <advancedsolars:irradiantglasspane>,
    <advancedsolars:irradiantglasspane>,
    <enderio:item_material:66>,
    <advancedsolars:irradiantglasspane>,
    <advancedsolars:irradiantglasspane>,
    <advancedsolars:irradiantglasspane>,
    <advancedsolars:irradiantglasspane>,
    <contenttweaker:tanzanite_block>,
	<contenttweaker:tanzanite_block>,
    <contenttweaker:tanzanite_block>,
    <contenttweaker:tanzanite_block>,
    <contenttweaker:flawless_assembly>,
    <contenttweaker:flawless_assembly>,
    <contenttweaker:flawless_assembly>,
    <contenttweaker:flawless_assembly>,
    <contenttweaker:flawless_assembly>,
    <contenttweaker:flawless_assembly>,
    <contenttweaker:flawless_assembly>,
    <contenttweaker:flawless_assembly>,
    <environmentaltech:structure_frame_6>,
    <environmentaltech:structure_frame_6>,
    <environmentaltech:structure_frame_6>,
    <environmentaltech:structure_frame_6>,
	//Outer Items, indices 25+
    <draconicevolution:draconic_core>,
    <ic2:itemreflectors:2>,
    <draconicevolution:draconic_core>,
    <ic2:itemreflectors:2>,
    <draconicevolution:draconic_core>,
    <ic2:itemreflectors:2>,
    <draconicevolution:draconic_core>,
    <ic2:itemreflectors:2>,
], "astralsorcery.constellation.fornax");
