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
import mods.astralsorcery.StarlightInfusion;
import mods.avaritia.ExtremeCrafting;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;

recipes.remove(<projecte:condenser_mk1>);
calc_basic(<projecte:condenser_mk1>,<projecte:alchemical_chest>,<projecte:transmutation_table>);

recipes.remove(<projecte:interdiction_torch>);
calc_basic(<projecte:interdiction_torch>,<xreliquary:interdiction_torch>,<contenttweaker:flawless_diamond_shard>);

Transposer.addFillRecipe(<projecte:item.pe_fuel>, <contenttweaker:controlled_fuel>,  <liquid:alchemical_redstone> * 1296, 2000);

var mapDust as IItemStack[IItemStack] = {
    <projecte:item.pe_covalence_dust> : <enderio:item_material:51>,
    <projecte:item.pe_covalence_dust:1> : <enderio:item_material:52>,
    <projecte:item.pe_covalence_dust:2> : <enderio:item_material:67>,
};

for output, input in mapDust {
    recipes.remove(output);
    StarlightInfusion.addInfusion(input, output, false, 0.9, 100);
}

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <projecte:item.pe_klein_star> : [
        [
            [<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>],
            [<projecte:item.pe_fuel:2>,<ore:gearWyvernMetal>,<projecte:item.pe_fuel:2>],
            [<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>]
        ]
    ],
    <projecte:item.pe_klein_star:1> : [
        [
            [<projecte:item.pe_klein_star>,<projecte:item.pe_klein_star>,<projecte:item.pe_klein_star>],
            [<projecte:item.pe_klein_star>,<ore:gearWyvernMetal>,<projecte:item.pe_klein_star>],
            [<projecte:item.pe_klein_star>,<projecte:item.pe_klein_star>,<projecte:item.pe_klein_star>]
        ]
    ],
    <projecte:item.pe_klein_star:2> : [
        [
            [<projecte:item.pe_klein_star:1>,<projecte:item.pe_klein_star:1>,<projecte:item.pe_klein_star:1>],
            [<projecte:item.pe_klein_star:1>,<ore:gearDraconicMetal>,<projecte:item.pe_klein_star:1>],
            [<projecte:item.pe_klein_star:1>,<projecte:item.pe_klein_star:1>,<projecte:item.pe_klein_star:1>]
        ]
    ],
    <projecte:item.pe_klein_star:3> : [
        [
            [<projecte:item.pe_klein_star:2>,<projecte:item.pe_klein_star:2>,<projecte:item.pe_klein_star:2>],
            [<projecte:item.pe_klein_star:2>,<ore:gearDraconicMetal>,<projecte:item.pe_klein_star:2>],
            [<projecte:item.pe_klein_star:2>,<projecte:item.pe_klein_star:2>,<projecte:item.pe_klein_star:2>]
        ]
    ],
    <projecte:item.pe_klein_star:4> : [
        [
            [<projecte:item.pe_klein_star:3>,<projecte:item.pe_klein_star:3>,<projecte:item.pe_klein_star:3>],
            [<projecte:item.pe_klein_star:3>,<ore:gearChaoticMetal>,<projecte:item.pe_klein_star:3>],
            [<projecte:item.pe_klein_star:3>,<projecte:item.pe_klein_star:3>,<projecte:item.pe_klein_star:3>]
        ]
    ],
    <projecte:item.pe_klein_star:5> : [
        [
            [<projecte:item.pe_klein_star:4>,<projecte:item.pe_klein_star:4>,<projecte:item.pe_klein_star:4>],
            [<projecte:item.pe_klein_star:4>,<ore:gearChaoticMetal>,<projecte:item.pe_klein_star:4>],
            [<projecte:item.pe_klein_star:4>,<projecte:item.pe_klein_star:4>,<projecte:item.pe_klein_star:4>]
        ]
    ],
    <projecte:rm_furnace> : [
        [
            [<projecte:matter_block:1>,<projecte:matter_block:1>,<projecte:matter_block:1>],
            [<projecte:matter_block:1>,<projecte:dm_furnace>,<projecte:matter_block:1>],
            [<projecte:matter_block:1>,<projecte:matter_block:1>,<projecte:matter_block:1>]
        ]
    ],
    <projecte:collector_mk1> : [
        [
            [<advancedsolars:sunnariumalloy>,<advancedsolars:irradiantglasspane>,<advancedsolars:sunnariumalloy>],
            [<advancedsolars:sunnariumalloy>,<contenttweaker:crystal_cluster_core>,<advancedsolars:sunnariumalloy>],
            [<advancedsolars:sunnariumalloy>,<actuallyadditions:block_heat_collector>,<advancedsolars:sunnariumalloy>]
        ]
    ],
    <projecte:collector_mk2> : [
        [
            [<advancedsolars:sunnariumalloy>,<projecte:item.pe_matter>,<advancedsolars:sunnariumalloy>],
            [<advancedsolars:sunnariumalloy>,<contenttweaker:crystal_cluster_core>,<advancedsolars:sunnariumalloy>],
            [<advancedsolars:sunnariumalloy>,<projecte:collector_mk1>,<advancedsolars:sunnariumalloy>]
        ]
    ],
    <projecte:collector_mk3> : [
        [
            [<advancedsolars:sunnariumalloy>,<projecte:item.pe_matter:1>,<advancedsolars:sunnariumalloy>],
            [<advancedsolars:sunnariumalloy>,<contenttweaker:crystal_cluster_core>,<advancedsolars:sunnariumalloy>],
            [<advancedsolars:sunnariumalloy>,<projecte:collector_mk2>,<advancedsolars:sunnariumalloy>]
        ]
    ],
    <projecte:relay_mk1> : [
        [
            [<contenttweaker:purifiedobsidian>,<advancedsolars:irradiantglasspane>,<contenttweaker:purifiedobsidian>],
            [<contenttweaker:purifiedobsidian>,<contenttweaker:crystal_cluster_core>,<contenttweaker:purifiedobsidian>],
            [<contenttweaker:purifiedobsidian>,<actuallyadditions:block_inputter_advanced>,<contenttweaker:purifiedobsidian>]
        ]
    ],
    <projecte:relay_mk2> : [
        [
            [<contenttweaker:purifiedobsidian>,<projecte:item.pe_matter>,<contenttweaker:purifiedobsidian>],
            [<contenttweaker:purifiedobsidian>,<contenttweaker:crystal_cluster_core>,<contenttweaker:purifiedobsidian>],
            [<contenttweaker:purifiedobsidian>,<projecte:relay_mk1>,<contenttweaker:purifiedobsidian>]
        ]
    ],
    <projecte:relay_mk3> : [
        [
            [<contenttweaker:purifiedobsidian>,<projecte:item.pe_matter:1>,<contenttweaker:purifiedobsidian>],
            [<contenttweaker:purifiedobsidian>,<contenttweaker:crystal_cluster_core>,<contenttweaker:purifiedobsidian>],
            [<contenttweaker:purifiedobsidian>,<projecte:relay_mk2>,<contenttweaker:purifiedobsidian>]
        ]
    ],
    <projecte:condenser_mk2> : [
        [
            [<extrautils2:poweroverload>,<ic2:ic2upgrades:32>,<extrautils2:poweroverload>],
            [<ic2:ic2upgrades:32>,<projecte:condenser_mk1>,<ic2:ic2upgrades:32>],
            [<extrautils2:poweroverload>,<projecte:rm_furnace>,<extrautils2:poweroverload>]
        ]
    ],
    <projecte:item.pe_ring_iron_band> : [
        [
            [<advancedsolars:reinforcediridiumironplate>,<advancedsolars:reinforcediridiumironplate>,<advancedsolars:reinforcediridiumironplate>],
            [<advancedsolars:irradiantreinforcedplate>,<contenttweaker:pearl_lattice>,<advancedsolars:irradiantreinforcedplate>],
            [<advancedsolars:reinforcediridiumironplate>,<advancedsolars:reinforcediridiumironplate>,<advancedsolars:reinforcediridiumironplate>]
        ]
    ],
    <projecte:alchemical_chest> : [
        [
            [<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:2>],
            [<ic2:itempesd>,<enderutilities:storage_0:6>,<ic2:itempesd>],
            [<contenttweaker:bedrockium_nugget>,<avaritia:endest_pearl>,<contenttweaker:bedrockium_nugget>]
        ]
    ],
    <projecte:transmutation_table> : [
        [
            [<contenttweaker:purifiedobsidian>,<ore:blockAethium>,<contenttweaker:purifiedobsidian>],
            [<ore:blockAethium>,<projecte:item.pe_transmutation_tablet>.reuse(),<ore:blockAethium>],
            [<contenttweaker:purifiedobsidian>,<ore:blockAethium>,<contenttweaker:purifiedobsidian>]
        ]
    ]
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

recipes.remove(<projecte:item.pe_philosophers_stone>);
Altar.addTraitAltarRecipe("philo_stone_nightmare",<projecte:item.pe_philosophers_stone>, 4500, 12000, [
    <bloodmagic:decorative_brick:2>,
    <bloodmagic:decorative_brick:2>,
    <bloodmagic:decorative_brick:2>,
    <bloodmagic:decorative_brick:2>,
    <randomthings:rezstone>,
    <bloodmagic:decorative_brick:2>,
    <bloodmagic:decorative_brick:2>,
    <bloodmagic:decorative_brick:2>,
    <bloodmagic:decorative_brick:2>,
    <avaritiatweaks:gaia_block>,
    <avaritiatweaks:gaia_block>,
    <avaritiatweaks:gaia_block>,
    <avaritiatweaks:gaia_block>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <abyssalcraft:abyssalnomicon>,
    <bloodmagic:teleposition_focus:3>,
    <bloodmagic:teleposition_focus:3>,
    <xreliquary:alkahestry_tome:1001>,
    // Outer Items
    <abyssalcraft:statue>,
    <botania:rune:9>,
    <abyssalcraft:statue:1>,
    <botania:rune:10>,
    <abyssalcraft:statue:2>,
    <botania:rune:11>,
    <abyssalcraft:statue:3>,
    <botania:rune:12>,
    <abyssalcraft:statue:4>,
    <botania:rune:13>,
    <abyssalcraft:statue:5>,
    <botania:rune:14>,
    <abyssalcraft:statue:6>,
    <botania:rune:15>
], "astralsorcery.constellation.mineralis");

recipes.remove(<projecte:item.pe_time_watch>);
ExtremeCrafting.addShaped("pe_time_watch",<projecte:item.pe_time_watch>, [
    [<ore:blockCosmicNeutronium>,null,<ore:blockCosmicNeutronium>,<ore:blockCosmicNeutronium>,<ore:blockCosmicNeutronium>,<ore:blockCosmicNeutronium>,<ore:blockCosmicNeutronium>,null,null],
    [null,<ore:blockCosmicNeutronium>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ore:blockCosmicNeutronium>,null],
    [<ore:blockCosmicNeutronium>,<ic2:itemmisc:258>,<projecte:matter_block>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ore:blockCosmicNeutronium>],
    [<ore:blockCosmicNeutronium>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<projecte:matter_block>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ore:blockCosmicNeutronium>],
    [<ore:blockCosmicNeutronium>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<randomthings:timeinabottle>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<ore:blockCosmicNeutronium>],
    [<ore:blockCosmicNeutronium>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ore:blockCosmicNeutronium>],
    [<ore:blockCosmicNeutronium>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ore:blockCosmicNeutronium>],
    [null,<ore:blockCosmicNeutronium>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ic2:itemmisc:258>,<ore:blockCosmicNeutronium>,null],
    [null,null,<ore:blockCosmicNeutronium>,<ore:blockCosmicNeutronium>,<ore:blockCosmicNeutronium>,<ore:blockCosmicNeutronium>,<ore:blockCosmicNeutronium>,null,null]
]);

recipes.remove(<projecte:dm_pedestal>);
ExtremeCrafting.addShaped("dm_pedestal",<projecte:dm_pedestal>, [
    [<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>],
    [null,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,null],
    [null,null,<projecte:matter_block>,<projecte:matter_block>,<contenttweaker:pearl_lattice>,<projecte:matter_block>,<projecte:matter_block>,null,null],
    [null,null,null,<projecte:matter_block>,<projecte:matter_block:1>,<projecte:matter_block>,null,null,null],
    [null,null,null,<projecte:matter_block>,<contenttweaker:omega_core>,<projecte:matter_block>,null,null,null],
    [null,null,null,<projecte:matter_block>,<projecte:matter_block:1>,<projecte:matter_block>,null,null,null],
    [null,null,<projecte:matter_block>,<projecte:matter_block>,<contenttweaker:pearl_lattice>,<projecte:matter_block>,<projecte:matter_block>,null,null],
    [null,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,null],
    [<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>]
]);

recipes.remove(<projecte:item.pe_transmutation_tablet>);
ExtremeCrafting.addShaped("pe_transmutation_tablet",<projecte:item.pe_transmutation_tablet>, [
    [<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>],
    [<projecte:matter_block>,<projecte:matter_block>,<ic2:blockpersonal:8>,<enderio:block_alloy_endergy:4>,<bloodmagic:decorative_brick:2>,<ic2:blockpersonal:8>,<bloodmagic:decorative_brick:2>,<projecte:matter_block>,<projecte:matter_block>],
    [<projecte:matter_block>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<ic2:blockpersonal:8>,<ic2:blockpersonal:8>,<enderio:block_alloy_endergy:4>,<bloodmagic:decorative_brick:2>,<ic2:blockpersonal:8>,<projecte:matter_block>],
    [<projecte:matter_block>,<ic2:blockpersonal:8>,<enderio:block_alloy_endergy:4>,<bloodmagic:decorative_brick:2>,<enderio:block_alloy_endergy:4>,<bloodmagic:decorative_brick:2>,<ic2:blockpersonal:8>,<enderio:block_alloy_endergy:4>,<projecte:matter_block>],
    [<projecte:matter_block>,<bloodmagic:decorative_brick:2>,<ic2:blockpersonal:8>,<enderio:block_alloy_endergy:4>,<bloodmagic:decorative_brick:2>,<enderio:block_alloy_endergy:4>,<ic2:blockpersonal:8>,<bloodmagic:decorative_brick:2>,<projecte:matter_block>],
    [<projecte:matter_block>,<enderio:block_alloy_endergy:4>,<ic2:blockpersonal:8>,<bloodmagic:decorative_brick:2>,<enderio:block_alloy_endergy:4>,<bloodmagic:decorative_brick:2>,<enderio:block_alloy_endergy:4>,<ic2:blockpersonal:8>,<projecte:matter_block>],
    [<projecte:matter_block>,<ic2:blockpersonal:8>,<bloodmagic:decorative_brick:2>,<enderio:block_alloy_endergy:4>,<ic2:blockpersonal:8>,<ic2:blockpersonal:8>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<projecte:matter_block>],
    [<projecte:matter_block>,<projecte:matter_block>,<bloodmagic:decorative_brick:2>,<ic2:blockpersonal:8>,<bloodmagic:decorative_brick:2>,<enderio:block_alloy_endergy:4>,<ic2:blockpersonal:8>,<projecte:matter_block>,<projecte:matter_block>],
    [<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>]
]);
