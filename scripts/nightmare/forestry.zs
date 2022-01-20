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

import mods.forestry.Carpenter;
import mods.forestry.Centrifuge;
import mods.forestry.ThermionicFabricator;
import mods.ic2.Extractor;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Squeezer;
import mods.jei.JEI;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_scientific;

JEI.addItem(<forestry:thermionic_tubes:3>);
JEI.addItem(<forestry:thermionic_tubes:8>);
JEI.addItem(<forestry:bee_combs:1>);
JEI.addItem(<forestry:bee_combs:8>);
JEI.addItem(<forestry:bee_combs:9>);
JEI.addItem(<forestry:bee_combs:10>);
JEI.addItem(<forestry:bee_combs:11>);
JEI.addItem(<forestry:bee_combs:12>);
JEI.addItem(<forestry:bee_combs:13>);
JEI.addItem(<forestry:bee_combs:14>);
JEI.addItem(<forestry:bee_combs_0:1>);
JEI.addItem(<forestry:bee_combs_0:8>);
JEI.addItem(<forestry:bee_combs_0:9>);
JEI.addItem(<forestry:bee_combs_0:10>);
JEI.addItem(<forestry:bee_combs_0:11>);
JEI.addItem(<forestry:bee_combs_0:12>);
JEI.addItem(<forestry:bee_combs_0:13>);
JEI.addItem(<forestry:bee_combs_0:14>);
JEI.addItem(<forestry:crafting_material:5>);
JEI.addItem(<forestry:propolis:2>);
JEI.addItem(<forestry:honey_drop:1>);
JEI.addItem(<forestry:honey_drop:2>);

recipes.remove(<forestry:humus>);

recipes.remove(<forestry:ambrosia>);
Transposer.addFillRecipe(<forestry:ambrosia>, <forestry:capsule>, <liquid:ambrosia> * 1000, 200);
Mixer.addRecipe(<liquid:ambrosia> * 500,<liquid:for.honey> * 500,[
    <forestry:pollen>,
    <forestry:pollen:1>,
    <forestry:royal_jelly>,
    <forestry:honeydew>,
    <forestry:refractory_wax>,
    <contenttweaker:root_golden>
], 1024);

Crucible.addRecipe(<liquid:ice> * 500, <forestry:crafting_material:5>, 4000);

Crucible.addRecipe(<liquid:for.honey> * 100, <forestry:honey_drop>, 4000);
Crucible.addRecipe(<liquid:for.honey> * 100, <forestry:honeydew>, 4000);
Crucible.addRecipe(<liquid:for.honey> * 100, <harvestcraft:honeyitem>, 4000);
Squeezer.addRecipe(null, <liquid:for.honey> * 100, <harvestcraft:honeyitem>, 2048);

recipes.remove(<forestry:fertilizer_compound>);
calc_scientific(<forestry:fertilizer_compound> * 4, <ore:dustApatite>, <ore:dustAsh>);

Carpenter.removeRecipe(<forestry:impregnated_casing>);
Carpenter.addRecipe(<forestry:impregnated_casing>, [
    [<ore:scaffoldingTreatedWood>,<ore:fenceTreatedWood>,<ore:scaffoldingTreatedWood>],
    [<ore:fenceTreatedWood>,<actuallyadditions:block_misc:4>,<ore:fenceTreatedWood>],
    [<ore:scaffoldingTreatedWood>,<ore:fenceTreatedWood>,<ore:scaffoldingTreatedWood>]
], 60, <liquid:seed.oil> * 200, <thermalfoundation:material:22>);

Carpenter.removeRecipe(<forestry:hardened_machine>);
Carpenter.addRecipe(<forestry:hardened_machine>, [
    [<quantumflux:craftingpiece:6>,<ore:plateInvar>,<quantumflux:craftingpiece:6>],
    [<ore:plateInvar>,<forestry:sturdy_machine>,<ore:plateInvar>],
    [<quantumflux:craftingpiece:6>,<ore:plateInvar>,<quantumflux:craftingpiece:6>]
], 60, <liquid:soldering_alloy> * 288);

Carpenter.removeRecipe(<forestry:crafting_material:6>);
Carpenter.addRecipe(<forestry:crafting_material:6>, [
    [<forestry:beeswax>,<forestry:oak_stick>,<forestry:oak_stick>],
    [<forestry:oak_stick>,<botania:livingwood:5>,<forestry:oak_stick>],
    [<forestry:oak_stick>,<forestry:oak_stick>,<forestry:beeswax>]
], 60, <liquid:ambrosia> * 500, <morebees:framesweet>);

var woodPulp as IIngredient[][][int] = {
    2 : [
        [<ore:logWood>],
        [<ore:logWood>]
    ],
    3 : [
        [<ore:dustWood>,<ore:dustWood>],
        [<ore:dustWood>,<ore:dustWood>]
    ],
    1 : [
        [<ic2:itemmisc:350>],
        [<ic2:itemmisc:350>],
        [<ic2:itemmisc:350>]
    ]
};

Carpenter.removeRecipe(<forestry:wood_pulp>);

for amount, recipe in woodPulp {
    Carpenter.addRecipe(<forestry:wood_pulp>, recipe, 100, <liquid:water> * 250);
}

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <forestry:sturdy_machine> : [
        [
            [<ore:plateBronze>,<immersiveengineering:material:27>,<ore:plateBronze>],
            [<contenttweaker:redstone_ingot>,<contenttweaker:module_energy>,<contenttweaker:redstone_ingot>],
            [<ore:plateBronze>,<actuallyadditions:item_misc:8>,<ore:plateBronze>]
        ]
    ],
    <forestry:carpenter> : [
        [
            [<ore:plateBronze>,<contenttweaker:calculator_assembly>,<ore:plateBronze>],
            [<ore:gearConstantan>,<forestry:sturdy_machine>,<ore:gearConstantan>],
            [<ore:plateBronze>,<contenttweaker:electric_motor>,<ore:plateBronze>]
        ]
    ],
    <forestry:centrifuge>: [
        [
            [<ore:plateBronze>,<contenttweaker:iron_rotor>,<ore:plateBronze>],
            [<ore:gearConstantan>,<forestry:sturdy_machine>,<ore:gearConstantan>],
            [<ore:plateBronze>,<contenttweaker:electric_motor>,<ore:plateBronze>]
        ]
    ],
    <forestry:still>: [
        [
            [<ore:plateBronze>,<embers:mini_boiler>,<ore:plateBronze>],
            [<ore:gearConstantan>,<forestry:sturdy_machine>,<ore:gearConstantan>],
            [<ore:plateBronze>,<contenttweaker:electric_motor>,<ore:plateBronze>]
        ]
    ],
    <forestry:fermenter>: [
        [
            [<ore:plateBronze>,<contenttweaker:iron_rotor>,<ore:plateBronze>],
            [<ore:gearConstantan>,<forestry:sturdy_machine>,<ore:gearConstantan>],
            [<ore:plateBronze>,<contenttweaker:iron_rotor>,<ore:plateBronze>]
        ]
    ],
    <forestry:moistener>: [
        [
            [<ore:plateBronze>,<minecraft:water_bucket>,<ore:plateBronze>],
            [<ore:gearConstantan>,<forestry:sturdy_machine>,<ore:gearConstantan>],
            [<ore:plateBronze>,<contenttweaker:iron_rotor>,<ore:plateBronze>]
        ]
    ],
    <forestry:squeezer>: [
        [
            [<ore:plateTin>,<minecraft:piston>,<ore:plateTin>],
            [<ore:gearSilver>,<forestry:sturdy_machine>,<ore:gearSilver>],
            [<ore:plateTin>,<contenttweaker:electric_motor>,<ore:plateTin>]
        ]
    ],
    <forestry:fabricator> : [
        [
            [<ore:plateGold>,<contenttweaker:calculator>,<ore:plateGold>],
            [<contenttweaker:advanced_assembly>,<actuallyadditions:block_misc:9>,<contenttweaker:advanced_assembly>],
            [<contenttweaker:copper_coil>,<extrautils2:ingredients:13>,<contenttweaker:copper_coil>]
        ]
    ],
    <forestry:frame_untreated> : [
        [
            [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>],
            [<ore:stickTreatedWood>,<harvestcraft:wovencottonitem>,<ore:stickTreatedWood>],
            [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>]
        ],
        [
            [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>],
            [<ore:stickTreatedWood>,<simplyjetpacks:metaitemmods:39>,<ore:stickTreatedWood>],
            [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>]
        ]
    ],
    <forestry:frame_impregnated> : [
        [
            [<forestry:oak_stick>,<forestry:oak_stick>,<forestry:oak_stick>],
            [<forestry:oak_stick>,<forestry:crafting_material:3>,<forestry:oak_stick>],
            [<forestry:oak_stick>,<forestry:oak_stick>,<forestry:oak_stick>]
        ]
    ],
    <forestry:grafter> : [
        [
            [null,<ore:plateBronze>],
            [<forestry:oak_stick>,null]
        ]
    ],
    <forestry:scoop> : [
        [
            [<forestry:oak_stick>,<ore:wool>,<forestry:oak_stick>],
            [<forestry:oak_stick>,<forestry:oak_stick>,<forestry:oak_stick>],
            [null,<forestry:oak_stick>,null]
        ]
    ],
    <forestry:crafting_material> : [
        [
            [<forestry:propolis:2>,null,<forestry:propolis:2>],
            [null,<forestry:propolis:2>,null],
            [<forestry:propolis:2>,null,<forestry:propolis:2>]
        ]
    ],
    <forestry:crafting_material:1> : [
        [
            [<forestry:crafting_material>,null,<forestry:crafting_material>],
            [null,<forestry:crafting_material>,null],
            [<forestry:crafting_material>,null,<forestry:crafting_material>]
        ]
    ],
    <forestry:imprinter> : [
        [
            [<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>],
            [<contenttweaker:creative>,<gendustry:imprinter>,<contenttweaker:creative>],
            [<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>]
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

var tubes as IItemStack[string][IItemStack] = {
    <forestry:thermionic_tubes> : {
        "electrode" : <contenttweaker:electrode_copper>,
        "catalyst" : <ore:dustCopper>.firstItem
    },
    <forestry:thermionic_tubes:1> : {
        "electrode" : <contenttweaker:electrode_tin>,
        "catalyst" : <ore:dustTin>.firstItem
    },
    <forestry:thermionic_tubes:2> : {
        "electrode" : <contenttweaker:electrode_bronze>,
        "catalyst" : <ore:dustBronze>.firstItem
    },
    <forestry:thermionic_tubes:3> : {
        "electrode" : <contenttweaker:electrode_iron>,
        "catalyst" : <ore:dustIron>.firstItem
    },
    <forestry:thermionic_tubes:4> : {
        "electrode" : <contenttweaker:electrode_gold>,
        "catalyst" : <ore:dustGold>.firstItem
    },
    <forestry:thermionic_tubes:5> : {
        "electrode" : <contenttweaker:electrode_diamond>,
        "catalyst" : <ore:dustDiamond>.firstItem
    },
    <forestry:thermionic_tubes:6> : {
        "electrode" : <contenttweaker:electrode_obsidian>,
        "catalyst" : <ic2:itemmisc:9>
    },
    <forestry:thermionic_tubes:7> : {
        "electrode" : <contenttweaker:electrode_blaze>,
        "catalyst" : <minecraft:blaze_powder>
    },
    <forestry:thermionic_tubes:8> : {
        "electrode" : <contenttweaker:electrode_rubber>,
        "catalyst" : <ore:itemRubber>.firstItem
    },
    <forestry:thermionic_tubes:9> : {
        "electrode" : <contenttweaker:electrode_emerald>,
        "catalyst" : <ore:dustEmerald>.firstItem
    },
    <forestry:thermionic_tubes:10> : {
        "electrode" : <contenttweaker:electrode_apatite>,
        "catalyst" : <contenttweaker:small_tanzanite>
    },
    <forestry:thermionic_tubes:11> : {
        "electrode" : <contenttweaker:electrode_lapis>,
        "catalyst" : <ore:dustLapis>.firstItem
    },
    <forestry:thermionic_tubes:12> : {
        "electrode" : <contenttweaker:electrode_ender>,
        "catalyst" : <ore:dustEnder>.firstItem
    },
    <forestry:thermionic_tubes:13> : {
        "electrode" : <contenttweaker:electrode_orchid>,
        "catalyst" : <ore:dustRedstone>.firstItem
    },
};

for tube, data in tubes {
    ThermionicFabricator.addCast(data["electrode"] * 4, [
        [data["catalyst"],<contenttweaker:resistor>,data["catalyst"]],
        [<ic2:itemcable>,<contenttweaker:diode>,<ic2:itemcable>],
        [<rs_ctr:wire_e>,<ic2:itemcable:2>,<rs_ctr:wire_e>]
    ], <liquid:glass> * 200);

    ThermionicFabricator.removeCast(tube);
    ThermionicFabricator.addCast(tube, [
        [null,<contenttweaker:energium_dust>,null],
        [<appliedenergistics2:material:2>,data["electrode"],<appliedenergistics2:material:2>],
        [null,<thermalfoundation:material:97>,null]
    ], <liquid:glass> * 200);
}

ThermionicFabricator.removeCast(<forestry:flexible_casing>);
ThermionicFabricator.addCast(<forestry:flexible_casing>, [
    [<embers:plate_dawnstone>,<actuallyadditions:item_crystal:4>,<embers:plate_dawnstone>],
    [<embers:dust_metallurgic>,<forestry:hardened_machine>,<embers:dust_metallurgic>],
    [<embers:plate_dawnstone>,<actuallyadditions:item_crystal:4>,<embers:plate_dawnstone>]
], <liquid:glass> * 500);

var boards as IIngredient[][IItemStack] = {
    <forestry:chipsets> : [<ore:plateTin>,<ic2:itemcable:10>,<extrautils2:ingredients>],
    <forestry:chipsets:1> : [<ore:plateBronze>,<ic2:itemcable:13>,<cd4017be_lib:m:403>],
    <forestry:chipsets:2> : [<ore:plateSteel>,<ic2:itemcable:5>,<cd4017be_lib:m:404>],
    <forestry:chipsets:3> : [<ore:plateGold>,<ic2:itemcable:2>,<cd4017be_lib:m:405>],
};

for circuit, data in boards {
    var plate as IIngredient = data[0];
    var cable as IIngredient = data[1];
    var core as IIngredient = data[2];

    Carpenter.removeRecipe(circuit);
    Carpenter.addRecipe(circuit, [
        [cable,core,cable],
        [cable,plate,cable],
        [cable,<contenttweaker:stone_board>,cable]
    ], 40, <liquid:soldering_alloy> * 144);
}

Carpenter.addRecipe(<forestry:crafting_material:7>, [
    [<thermalfoundation:material:819>,<ic2:itemmisc:357>,<thermalfoundation:material:819>],
    [<ic2:itemmisc:357>,<earthworks:item_timber>,<ic2:itemmisc:357>],
    [<thermalfoundation:material:819>,<ic2:itemmisc:357>,<thermalfoundation:material:819>]
], 100, <liquid:biomass> * 250);

Centrifuge.removeRecipe(<forestry:bee_combs:9>);
Centrifuge.addRecipe([<ic2:itemmisc:181> % 60, <forestry:honey_drop> % 40], <forestry:bee_combs:9>, 100);

Centrifuge.addRecipe([<forestry:honey_drop:1> % 100], <forestry:bee_combs:12>, 100);
Centrifuge.addRecipe([<forestry:honey_drop:1> % 100, <forestry:honey_drop:1> % 100], <forestry:bee_combs:11>, 100);

Centrifuge.addRecipe([<forestry:honey_drop:2> % 100], <forestry:bee_combs:13>, 100);

Carpenter.removeRecipe(<forestry:oak_stick>);
Carpenter.addRecipe(<forestry:oak_stick>, [
    [<earthworks:item_timber>],
    [<earthworks:item_timber>]
], 80, <liquid:seed.oil> * 100);

recipes.remove(<forestry:apiary>);
Carpenter.addRecipe(<forestry:apiary>, [
    [<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
    [<ore:plankWood>,<harvestcraft:apiary>,<ore:plankWood>],
    [<ore:plankWood>,<forestry:impregnated_casing>,<ore:plankWood>]
], 100, <liquid:for.honey> * 100);

recipes.remove(<forestry:can>);
MetalPress.addRecipe(<forestry:can>, <ore:ingotTin>, <immersiveengineering:mold:3>, 512);
Extractor.addRecipe(<forestry:can>, <ore:ingotTin>);

var mapFarmBlock as IItemStack[IItemStack] = {
    <forestry:ffarm>.withTag({FarmBlock: 0}) : <minecraft:stonebrick>,
    <forestry:ffarm>.withTag({FarmBlock: 1}) : <minecraft:stonebrick:1>,
    <forestry:ffarm>.withTag({FarmBlock: 2}) : <minecraft:stonebrick:2>,
    <forestry:ffarm>.withTag({FarmBlock: 3}) : <minecraft:brick_block>,
    <forestry:ffarm>.withTag({FarmBlock: 4}) : <minecraft:sandstone:2>,
    <forestry:ffarm>.withTag({FarmBlock: 5}) : <minecraft:sandstone:1>,
    <forestry:ffarm>.withTag({FarmBlock: 6}) : <minecraft:nether_brick>,
    <forestry:ffarm>.withTag({FarmBlock: 7}) : <minecraft:stonebrick:3>,
    <forestry:ffarm>.withTag({FarmBlock: 8}) : <minecraft:quartz_block>,
    <forestry:ffarm>.withTag({FarmBlock: 9}) : <minecraft:quartz_block:1>,
    <forestry:ffarm>.withTag({FarmBlock: 10}) : <minecraft:quartz_block:2>,
};

for farmblock, block in mapFarmBlock {
    recipes.remove(farmblock);
    recipes.addShaped(farmblock, [
        [<enderio:item_material:69>,<ore:plateRedAlloy>,<enderio:item_material:69>],
        [<ore:ingotCopper>,block,<ore:ingotCopper>],
        [<ore:plankTreatedWood>,<forestry:thermionic_tubes:1>,<ore:plankTreatedWood>]
    ]);
}

var mapDynamo as string[IItemStack] = {
    <forestry:engine_clockwork> : "gold",
    <forestry:engine_biogas> : "bronze",
    <forestry:engine_peat> : "copper",
};

for dynamo, metal in mapDynamo {
    var gear as IIngredient = getOreDict("gear",metal);

    recipes.remove(dynamo);
    recipes.addShaped(dynamo, [
        [null,<thermalfoundation:material:514>,null],
        [gear,<contenttweaker:electric_motor>,gear],
        [<immersiveengineering:metal_decoration0:4>,<immersiveengineering:metal_decoration0:3>,<immersiveengineering:metal_decoration0:4>]
    ]);
}
