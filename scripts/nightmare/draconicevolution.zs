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

import moretweaker.draconicevolution.FusionCrafting;

import scripts.mod_functions.betterCharging;

var plateDraconium as IItemStack = <tconstruct:large_plate>.withTag({Material: "draconium"});
var plateWyvern as IItemStack = <tconstruct:large_plate>.withTag({Material: "wyvern_metal"});
var plateDraconic as IItemStack = <tconstruct:large_plate>.withTag({Material: "draconic_metal"});

betterCharging(<draconicevolution:draconium_block:1>,<draconicevolution:draconium_block>,10000000);

FusionCrafting.remove(<draconicevolution:crafting_injector>);
FusionCrafting.remove(<draconicevolution:crafting_injector:1>);
FusionCrafting.remove(<draconicevolution:crafting_injector:2>);

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

FusionCrafting.remove(<minecraft:emerald_block>);
FusionCrafting.add(<draconicevolution:wyvern_core>, <extrautils2:decorativesolid:8>, FusionCrafting.BASIC, 9000000, [
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconium_block:1>,
    <draconicevolution:draconium_block:1>,
    <draconicevolution:draconium_block:1>,
    <draconicevolution:draconium_block:1>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>
]);

FusionCrafting.remove(<draconicevolution:draconium_block>);
FusionCrafting.add(<draconicevolution:draconic_block> * 4, <draconicevolution:dragon_heart>, FusionCrafting.WYVERN, 1000000000, [
    <tconevo:metal_block>,
    <tconevo:metal_block>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <tconevo:metal_block>,
    <tconevo:metal_block>
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
