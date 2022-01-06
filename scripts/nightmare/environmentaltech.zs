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
import mods.enderio.AlloySmelter;
import mods.forestry.Carpenter;
import mods.ic2.Extractor;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_atomic;

recipes.remove(<environmentaltech:lightning_rod>);
Extractor.addRecipe(<environmentaltech:lightning_rod>,<minecraft:iron_block>);

recipes.remove(<environmentaltech:lightning_rod_insulated>);
calc_atomic(<environmentaltech:lightning_rod_insulated>,<environmentaltech:lightning_rod>,<enderio:block_industrial_insulation>,<immersiveengineering:stone_decoration:8>);

var recipeMapShaped as IIngredient[][][][int][IItemStack] = {
    <valkyrielib:modifier_component> : {
        4 : [
            [
                [<enderio:item_material:2>,<extrautils2:decorativesolid:7>,<enderio:item_material:2>],
                [<quantumflux:craftingpiece>,<ic2:itemcondensators>,<quantumflux:craftingpiece>],
                [<enderio:item_material:2>,<extrautils2:decorativesolid:7>,<enderio:item_material:2>]
            ]
        ]
    },
    <valkyrielib:modifier_speed> : {
        1 : [
            [
                [<rftools:speedplus_module>,<ic2:ic2upgrades>,<rftools:speedplus_module>],
                [<ic2:ic2upgrades>,<valkyrielib:modifier_component>,<ic2:ic2upgrades>],
                [<rftools:speedplus_module>,<ic2:ic2upgrades>,<rftools:speedplus_module>]
            ]
        ]
    },
    <environmentaltech:connector> : {
        4 : [
            [
                [<contenttweaker:hdpe_sheet>,<contenttweaker:firediamond>,<contenttweaker:hdpe_sheet>],
                [<contenttweaker:firediamond>,<abyssalcraft:dreadcloth>,<contenttweaker:firediamond>],
                [<contenttweaker:hdpe_sheet>,<contenttweaker:firediamond>,<contenttweaker:hdpe_sheet>]
            ]
        ]
    },
    <environmentaltech:interconnect> : {
        1 : [
            [
                [<immersivepetroleum:stone_decoration>,<valkyrielib:modifier_component>,<immersivepetroleum:stone_decoration>],
                [<environmentaltech:connector>,<openmodularturrets:turret_base:1>,<environmentaltech:connector>],
                [<immersivepetroleum:stone_decoration>,<valkyrielib:modifier_component>,<immersivepetroleum:stone_decoration>]
            ]
        ]
    },
    <environmentaltech:litherite_crystal> : {
        9 : [
            [
                [<environmentaltech:litherite>]
            ]
        ]
    },
    <environmentaltech:laser_lens> : {
        1 : [
            [
                [<ore:etLaserLensColored>]
            ],
            [
                [<ic2:blockutility:3>,<astralsorcery:itemcraftingcomponent:3>,<ic2:blockutility:3>],
                [<ic2:blockutility:3>,<contenttweaker:crystal_prism>,<ic2:blockutility:3>],
                [<ic2:blockutility:3>,<astralsorcery:itemcraftingcomponent:3>,<ic2:blockutility:3>]
            ]
        ]
    },
    <environmentaltech:structure_panel> : {
        1 : [
            [
                [<buildinggadgets:constructionpaste>,<ic2:blockutility:2>,<buildinggadgets:constructionpaste>],
                [<ic2:blockutility:2>,<environmentaltech:connector>,<ic2:blockutility:2>],
                [<buildinggadgets:constructionpaste>,<ic2:blockutility:2>,<buildinggadgets:constructionpaste>]
            ]
        ]
    },
    <environmentaltech:structure_panel_clear> : {
        1 : [
            [
                [<buildinggadgets:constructionpaste>,<ic2:blockutility:3>,<buildinggadgets:constructionpaste>],
                [<ic2:blockutility:3>,<environmentaltech:connector>,<ic2:blockutility:3>],
                [<buildinggadgets:constructionpaste>,<ic2:blockutility:3>,<buildinggadgets:constructionpaste>]
            ]
        ]
    },
    <environmentaltech:laser_core> : {
        1 : [
            [
                [<advancedsolars:enrichedsunnarium>,<ic2:itemtoolmininglaser>,<advancedsolars:enrichedsunnarium>],
                [<environmentaltech:connector>,<embers:focal_lens>,<environmentaltech:connector>],
                [<advancedsolars:irradiantglasspane>,<ore:etLaserLens>,<advancedsolars:irradiantglasspane>]
            ]
        ]
    }
};

for key, value in recipeMapShaped {
	var index as int = 0;    
    recipes.remove(key);
    for amount, entry in value {
        for recipe in entry {
            var name as string = "ct_"+toString(key)+"_"+index;
            recipes.addShaped(name, key * amount, recipe);
            index += 1;
        }
    }
}

recipes.remove(<environmentaltech:photovoltaic_cell>);
AlloySmelter.addRecipe(<environmentaltech:photovoltaic_cell>, [<enderio:item_material:3>, <extrautils2:ingredients:3>, <ore:nuggetCobalt> * 3], 5000);

recipes.remove(<environmentaltech:diode>);
Altar.addAttunementAltarRecipe("et_diode", <environmentaltech:diode>, 500, 800, [
    <enderio:item_material:56>,
    <opencomputers:geolyzer>,
    <enderio:item_material:56>,
    <enderio:item_material:42>,
    <opencomputers:component:1>,
    <enderio:item_material:42>,
    <enderio:item_material:56>,
    <enderio:item_material:42>,
    <enderio:item_material:56>,
    <quantumflux:craftingpiece:2>,
    <quantumflux:craftingpiece:2>,
    <quantumflux:craftingpiece:2>,
    <quantumflux:craftingpiece:2>
]);

Transposer.addFillRecipe(<environmentaltech:litherite_crystal>, <abyssalcraft:eldritchscale>,  <liquid:mutagen> * 500, 4000);

recipes.remove(<environmentaltech:modifier_null>);
Carpenter.addRecipe(<environmentaltech:modifier_null>, [
    [<environmentaltech:lonsdaleite>,<environmentaltech:mica>,<environmentaltech:lonsdaleite>],
    [<environmentaltech:mica>,<environmentaltech:interconnect>,<environmentaltech:mica>],
    [<environmentaltech:lonsdaleite>,<environmentaltech:mica>,<environmentaltech:lonsdaleite>]
], 250, <liquid:mana> * 500, <enderio:item_dark_steel_upgrade>);

var tiers as IItemStack[string][int] = {
    1 : {
        "crystal" : <environmentaltech:litherite_crystal>,
        "crystalBlock" : <environmentaltech:litherite>,
        "diamond" : <contenttweaker:weakeneddiamond>,
        "diamondBlock" : <contenttweaker:weakened_diamond_block>,
        "slate" : <bloodmagic:slate>,
        "processor" : <appliedenergistics2:material:22>
    },
    2 : {
        "crystal" : <environmentaltech:erodium_crystal>,
        "crystalBlock" : <environmentaltech:erodium>,
        "diamond" : <minecraft:diamond>,
        "diamondBlock" : <minecraft:diamond_block>,
        "slate" : <bloodmagic:slate:1>,
        "processor" : <appliedenergistics2:material:23>
    },
    3 : {
        "crystal" : <environmentaltech:kyronite_crystal>,
        "crystalBlock" : <environmentaltech:kyronite>,
        "diamond" : <contenttweaker:flawlessdiamond>,
        "diamondBlock" : <contenttweaker:flawless_block>,
        "slate" : <bloodmagic:slate:2>,
        "processor" : <appliedenergistics2:material:24>
    },
    4 : {
        "crystal" : <environmentaltech:pladium_crystal>,
        "crystalBlock" : <environmentaltech:pladium>,
        "diamond" : <contenttweaker:firediamond>,
        "diamondBlock" : <contenttweaker:flawless_fire_block>,
        "slate" : <bloodmagic:slate:3>,
        "processor" : <contenttweaker:elementiumprocessor>
    },
    5 : {
        "crystal" : <environmentaltech:ionite_crystal>,
        "crystalBlock" : <environmentaltech:ionite>,
        "diamond" : <contenttweaker:electricdiamondanimate>,
        "diamondBlock" : <contenttweaker:electric_diamond_block>,
        "slate" : <bloodmagic:slate:4>,
        "processor" : <contenttweaker:terrasteelprocessor>
    },
    6 : {
        "crystal" : <environmentaltech:aethium_crystal>,
        "crystalBlock" : <environmentaltech:aethium>,
        "diamond" : <contenttweaker:enddiamond>,
        "diamondBlock" : <contenttweaker:end_diamond_block>,
        "slate" : <contenttweaker:eternalslate>,
        "processor" : <threng:material:6>
    },
};

var machines as IItemStack[][string] = {
    "lightning_rod" : [
        <environmentaltech:lightning_rod_insulated>,
        <environmentaltech:lightning_cont_1>,
        <environmentaltech:lightning_cont_2>,
        <environmentaltech:lightning_cont_3>,
        <environmentaltech:lightning_cont_4>,
        <environmentaltech:lightning_cont_5>,
        <environmentaltech:lightning_cont_6>,
    ],
    "solar_array" : [
        <ic2:blockgenerator:3>,
        <environmentaltech:solar_cont_1>,
        <environmentaltech:solar_cont_2>,
        <environmentaltech:solar_cont_3>,
        <environmentaltech:solar_cont_4>,
        <environmentaltech:solar_cont_5>,
        <environmentaltech:solar_cont_6>,
    ],
    "solar_panel" : [
        <actuallyadditions:block_furnace_solar>,
        <environmentaltech:solar_cell_litherite>,
        <environmentaltech:solar_cell_erodium>,
        <environmentaltech:solar_cell_kyronite>,
        <environmentaltech:solar_cell_pladium>,
        <environmentaltech:solar_cell_ionite>,
        <environmentaltech:solar_cell_aethium>,
    ],
    "ore_miner" : [
        <extrautils2:quarry>,
        <environmentaltech:void_ore_miner_cont_1>,
        <environmentaltech:void_ore_miner_cont_2>,
        <environmentaltech:void_ore_miner_cont_3>,
        <environmentaltech:void_ore_miner_cont_4>,
        <environmentaltech:void_ore_miner_cont_5>,
        <environmentaltech:void_ore_miner_cont_6>,
    ],
    "resource_miner" : [
        <actuallyadditions:block_miner>,
        <environmentaltech:void_res_miner_cont_1>,
        <environmentaltech:void_res_miner_cont_2>,
        <environmentaltech:void_res_miner_cont_3>,
        <environmentaltech:void_res_miner_cont_4>,
        <environmentaltech:void_res_miner_cont_5>,
        <environmentaltech:void_res_miner_cont_6>,
    ],
    "personal_beacon" : [
        <randomthings:spectreenergyinjector>,
        <environmentaltech:nano_cont_personal_1>,
        <environmentaltech:nano_cont_personal_2>,
        <environmentaltech:nano_cont_personal_3>,
        <environmentaltech:nano_cont_personal_4>,
        <environmentaltech:nano_cont_personal_5>,
        <environmentaltech:nano_cont_personal_6>,
    ],
    "environmental_beacon" : [
        <rftools:environmental_controller>,
        <environmentaltech:nano_cont_ranged_1>,
        <environmentaltech:nano_cont_ranged_2>,
        <environmentaltech:nano_cont_ranged_3>,
        <environmentaltech:nano_cont_ranged_4>,
        <environmentaltech:nano_cont_ranged_5>,
        <environmentaltech:nano_cont_ranged_6>,
    ],
    "structure_frame" : [
        <environmentaltech:interconnect>,
        <environmentaltech:structure_frame_1>,
        <environmentaltech:structure_frame_2>,
        <environmentaltech:structure_frame_3>,
        <environmentaltech:structure_frame_4>,
        <environmentaltech:structure_frame_5>,
        <environmentaltech:structure_frame_6>,
    ]
};

var index as int = 1;

while index <= 6 {
    var lr_prev_machine as IItemStack = machines["lightning_rod"][index - 1];
    var lr_machine as IItemStack = machines["lightning_rod"][index];
    var sa_prev_machine as IItemStack = machines["solar_array"][index - 1];
    var sa_machine as IItemStack = machines["solar_array"][index];
    var sp_prev_machine as IItemStack = machines["solar_panel"][index - 1];
    var sp_machine as IItemStack = machines["solar_panel"][index];
    var om_prev_machine as IItemStack = machines["ore_miner"][index - 1];
    var om_machine as IItemStack = machines["ore_miner"][index];
    var rm_prev_machine as IItemStack = machines["resource_miner"][index - 1];
    var rm_machine as IItemStack = machines["resource_miner"][index];
    var pb_prev_machine as IItemStack = machines["personal_beacon"][index - 1];
    var pb_machine as IItemStack = machines["personal_beacon"][index];
    var eb_prev_machine as IItemStack = machines["environmental_beacon"][index - 1];
    var eb_machine as IItemStack = machines["environmental_beacon"][index];
    var sf_prev_machine as IItemStack = machines["structure_frame"][index - 1];
    var sf_machine as IItemStack = machines["structure_frame"][index];
    var crystal as IItemStack = tiers[index]["crystal"];
    var crystalBlock as IItemStack = tiers[index]["crystalBlock"];
    var diamond as IItemStack = tiers[index]["diamond"];
    var diamondBlock as IItemStack = tiers[index]["diamondBlock"];
    var slate as IItemStack = tiers[index]["slate"];
    var processor as IItemStack = tiers[index]["processor"];
    
    recipes.remove(lr_machine);
    recipes.addShaped(lr_machine, [
        [crystalBlock,diamondBlock,crystalBlock],
        [slate,lr_prev_machine,slate],
        [crystalBlock,<environmentaltech:lightning_rod_insulated>,crystalBlock]
    ]);

    recipes.remove(sa_machine);
    recipes.addShaped(sa_machine, [
        [crystalBlock,crystalBlock,crystalBlock],
        [sa_prev_machine,processor,sa_prev_machine],
        [slate,diamondBlock,slate]
    ]);

    recipes.remove(sp_machine);
    recipes.addShaped(sp_machine * 3, [
        [crystal,crystal,crystal],
        [sp_prev_machine,sp_prev_machine,sp_prev_machine],
        [slate,diamondBlock,slate]
    ]);

    recipes.remove(om_machine);
    recipes.addShaped(om_machine, [
        [om_prev_machine,diamondBlock,om_prev_machine],
        [slate,<environmentaltech:diode>,slate],
        [crystalBlock,<actuallyadditions:item_misc:16>,crystalBlock]
    ]);

    recipes.remove(rm_machine);
    recipes.addShaped(rm_machine, [
        [rm_prev_machine,diamondBlock,rm_prev_machine],
        [slate,<environmentaltech:diode>,slate],
        [crystalBlock,<actuallyadditions:item_misc:16>,crystalBlock]
    ]);

    recipes.remove(pb_machine);
    recipes.addShaped(pb_machine, [
        [crystalBlock,diamondBlock,crystalBlock],
        [slate,pb_prev_machine,slate],
        [crystalBlock,<environmentaltech:modifier_null>,crystalBlock]
    ]);

    recipes.remove(eb_machine);
    recipes.addShaped(eb_machine, [
        [crystalBlock,diamondBlock,crystalBlock],
        [slate,eb_prev_machine,slate],
        [crystalBlock,<environmentaltech:modifier_null>,crystalBlock]
    ]);

    recipes.remove(sf_machine);
    recipes.addShaped(sf_machine, [
        [<ore:ingotConstructionAlloy>,processor,<ore:ingotConstructionAlloy>],
        [crystal,sf_prev_machine,crystal],
        [<ore:ingotConstructionAlloy>,slate,<ore:ingotConstructionAlloy>]
    ]);

    index += 1;
}
