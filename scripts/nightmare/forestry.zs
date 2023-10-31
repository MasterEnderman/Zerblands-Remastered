#packmode nightmare

import crafttweaker.data.IData;
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
import mods.forestry.Carpenter;
import mods.forestry.ThermionicFabricator;
import mods.ic2.Extractor;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Squeezer;
import mods.immersivetechnology.MeltingCrucible;
import mods.jei.JEI;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_scientific;

JEI.addItem(<forestry:thermionic_tubes:3>);
JEI.addItem(<forestry:thermionic_tubes:8>);

recipes.remove(<forestry:humus>);
recipes.remove(<forestry:letters>);
recipes.remove(<forestry:raintank>);

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

MeltingCrucible.addRecipe(<liquid:for.honey> * 100, <forestry:honey_drop>, 9600, 160);
MeltingCrucible.addRecipe(<liquid:for.honey> * 100, <forestry:honeydew>, 9600, 160);
MeltingCrucible.addRecipe(<liquid:for.honey> * 100, <harvestcraft:honeyitem>, 9600, 160);
MeltingCrucible.addRecipe(<liquid:ice> * 500, <forestry:crafting_material:5>, 9600, 160);

Squeezer.addRecipe(null, <liquid:for.honey> * 100, <harvestcraft:honeyitem>, 2048);

var mapSeed as int[IIngredient] = {
    <ore:listAllseed> : 5,
    <ore:listAllnut> : 75,
    <ore:cropChestnut> : 220,
    <ore:cropCherry> : 50,
    <ore:cropWalnut> : 180,
    <ore:seedRice> : 5,
    <ore:seedCoffee> : 5,
    <ore:seedCanola> : 5,
    <ore:seedFlax> : 5,
    <ic2:itemmisc:158> : 50
};

Squeezer.removeFluidRecipe(<liquid:plantoil>);
Squeezer.addRecipe(null, <liquid:plantoil> * 120, <immersiveengineering:seed>, 2048);

for input, amount in mapSeed {
    for item in input.items {
        Squeezer.addRecipe(null, <liquid:seed.oil> * amount, item, 2048);
    }
}

recipes.remove(<forestry:fertilizer_compound>);
calc_scientific(<forestry:fertilizer_compound> * 4, <ore:dustApatite>, <ore:dustAsh>);

Carpenter.removeRecipe(<forestry:portable_alyzer>);
calc_scientific(<forestry:portable_alyzer>,<thermalfoundation:material:640>,<harvestcraft:grubitem>);

Carpenter.removeRecipe(<forestry:habitat_screen>);
calc_scientific(<forestry:habitat_screen>,<thermalfoundation:material:640>,<forestry:habitat_locator>);

Carpenter.removeRecipe(<forestry:impregnated_casing>);
Carpenter.addRecipe(<forestry:impregnated_casing>, [
    [<ore:scaffoldingTreatedWood>,<ore:fenceTreatedWood>,<ore:scaffoldingTreatedWood>],
    [<ore:fenceTreatedWood>,<actuallyadditions:block_misc:4>,<ore:fenceTreatedWood>],
    [<ore:scaffoldingTreatedWood>,<ore:fenceTreatedWood>,<ore:scaffoldingTreatedWood>]
], 10, <liquid:seed.oil> * 200, <thermalfoundation:material:22>);

Carpenter.removeRecipe(<forestry:hardened_machine>);
Carpenter.addRecipe(<forestry:hardened_machine>, [
    [<quantumflux:craftingpiece:6>,<ore:plateInvar>,<quantumflux:craftingpiece:6>],
    [<ore:plateInvar>,<forestry:sturdy_machine>,<ore:plateInvar>],
    [<quantumflux:craftingpiece:6>,<ore:plateInvar>,<quantumflux:craftingpiece:6>]
], 10, <liquid:soldering_alloy> * 288);

Carpenter.removeRecipe(<forestry:crafting_material:6>);
Carpenter.addRecipe(<forestry:crafting_material:6> * 4, [
    [<forestry:beeswax>,<forestry:oak_stick>,<forestry:oak_stick>],
    [<forestry:oak_stick>,<botania:livingwood:5>,<forestry:oak_stick>],
    [<forestry:oak_stick>,<forestry:oak_stick>,<forestry:beeswax>]
], 10, <liquid:ambrosia> * 100, <morebees:framesweet>);

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
    Carpenter.addRecipe(<forestry:wood_pulp>, recipe, 10, <liquid:water> * 250);
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
            [<ic2:itemcable:4>,<contenttweaker:calculator>,<ic2:itemcable:4>],
            [<contenttweaker:advanced_assembly>,<actuallyadditions:block_misc:9>,<contenttweaker:advanced_assembly>],
            [<contenttweaker:copper_coil>,<contenttweaker:heating_coil>,<contenttweaker:copper_coil>]
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
    ],
    <forestry:worktable> : [
        [
            [<ore:ingotIron>,<minecraft:book>,<ore:ingotIron>],
            [<contenttweaker:calculator_assembly>,<minecraft:crafting_table>,<contenttweaker:calculator_assembly>],
            [<ore:plankTreatedWood>,<minecraft:chest>,<ore:plankTreatedWood>]
        ]
    ],
    <forestry:analyzer> : [
        [
            [<ore:ingotSilver>,<forestry:portable_alyzer>,<ore:ingotSilver>],
            [<botania:managlass>,<forestry:sturdy_machine>,<botania:managlass>],
            [<ore:ingotSilver>,<botania:managlass>,<ore:ingotSilver>]
        ]
    ],
    <forestry:habitat_former> : [
        [
            [<forestry:thermionic_tubes:3>,<ore:plateRedAlloy>,<forestry:thermionic_tubes:3>],
            [<energycontrol:item_component:1>,<forestry:sturdy_machine>,<energycontrol:item_component:1>],
            [<ore:gearBronze>,<forestry:chipsets>,<ore:gearBronze>]
        ]
    ],
    <forestry:bee_house> : [
        [
            [<ore:slabTreatedWood>,<ore:slabTreatedWood>,<ore:slabTreatedWood>],
            [<ore:plankTreatedWood>,<harvestcraft:apiary>,<ore:plankTreatedWood>],
            [<ore:plankTreatedWood>,<ore:plankTreatedWood>,<ore:plankTreatedWood>]
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
        "catalyst" : <enderio:item_material:32>
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
    ], 10, <liquid:soldering_alloy> * 144);
    Carpenter.addRecipe(circuit * 2, [
        [cable,core,cable],
        [cable,plate,cable],
        [cable,<energycontrol:item_component:1>,cable]
    ], 10, <liquid:soldering_alloy> * 144);
    Carpenter.addRecipe(circuit * 3, [
        [cable,core,cable],
        [cable,plate,cable],
        [cable,<energycontrol:item_component>,cable]
    ], 10, <liquid:soldering_alloy> * 144);
}

Carpenter.addRecipe(<forestry:crafting_material:7>, [
    [<thermalfoundation:material:819>,<earthworks:item_timber>,<thermalfoundation:material:819>],
    [<earthworks:item_timber>,<ic2:itemmisc:357>,<earthworks:item_timber>],
    [<thermalfoundation:material:819>,<earthworks:item_timber>,<thermalfoundation:material:819>]
], 10, <liquid:biomass> * 250);

Carpenter.removeRecipe(<forestry:oak_stick>);
Carpenter.addRecipe(<forestry:oak_stick>, [
    [<earthworks:item_timber>],
    [<earthworks:item_timber>]
], 10, <liquid:seed.oil> * 100);

recipes.remove(<forestry:apiary>);
Carpenter.addRecipe(<forestry:apiary>, [
    [<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
    [<ore:plankWood>,<harvestcraft:apiary>,<ore:plankWood>],
    [<ore:plankWood>,<forestry:impregnated_casing>,<ore:plankWood>]
], 10, <liquid:for.honey> * 100);

recipes.remove(<forestry:can>);
MetalPress.addRecipe(<forestry:can>, <ore:ingotTin>, <immersiveengineering:mold:3>, 512);
Extractor.addRecipe(<forestry:can>, <ore:ingotTin>);

var mapFarmBlock as IItemStack[string][IItemStack] = {
    <minecraft:stonebrick> : {
        "block" : <forestry:ffarm>.withTag({FarmBlock: 0}),
        "gearbox" : <forestry:ffarm:2>.withTag({FarmBlock: 0}),
        "hatch" : <forestry:ffarm:3>.withTag({FarmBlock: 0}),
        "valve" : <forestry:ffarm:4>.withTag({FarmBlock: 0}),
        "control" : <forestry:ffarm:5>.withTag({FarmBlock: 0})
    },
    <minecraft:stonebrick:1> : {
        "block" : <forestry:ffarm>.withTag({FarmBlock: 1}),
        "gearbox" : <forestry:ffarm:2>.withTag({FarmBlock: 1}),
        "hatch" : <forestry:ffarm:3>.withTag({FarmBlock: 1}),
        "valve" : <forestry:ffarm:4>.withTag({FarmBlock: 1}),
        "control" : <forestry:ffarm:5>.withTag({FarmBlock: 1})
    },
    <minecraft:stonebrick:2> : {
        "block" : <forestry:ffarm>.withTag({FarmBlock: 2}),
        "gearbox" : <forestry:ffarm:2>.withTag({FarmBlock: 2}),
        "hatch" : <forestry:ffarm:3>.withTag({FarmBlock: 2}),
        "valve" : <forestry:ffarm:4>.withTag({FarmBlock: 2}),
        "control" : <forestry:ffarm:5>.withTag({FarmBlock: 2})
    },
    <minecraft:brick_block> : {
        "block" : <forestry:ffarm>.withTag({FarmBlock: 3}),
        "gearbox" : <forestry:ffarm:2>.withTag({FarmBlock: 3}),
        "hatch" : <forestry:ffarm:3>.withTag({FarmBlock: 3}),
        "valve" : <forestry:ffarm:4>.withTag({FarmBlock: 3}),
        "control" : <forestry:ffarm:5>.withTag({FarmBlock: 3})
    },
    <minecraft:sandstone:2> : {
        "block" : <forestry:ffarm>.withTag({FarmBlock: 4}),
        "gearbox" : <forestry:ffarm:2>.withTag({FarmBlock: 4}),
        "hatch" : <forestry:ffarm:3>.withTag({FarmBlock: 4}),
        "valve" : <forestry:ffarm:4>.withTag({FarmBlock: 4}),
        "control" : <forestry:ffarm:5>.withTag({FarmBlock: 4})
    },
    <minecraft:sandstone:1> : {
        "block" : <forestry:ffarm>.withTag({FarmBlock: 5}),
        "gearbox" : <forestry:ffarm:2>.withTag({FarmBlock: 5}),
        "hatch" : <forestry:ffarm:3>.withTag({FarmBlock: 5}),
        "valve" : <forestry:ffarm:4>.withTag({FarmBlock: 5}),
        "control" : <forestry:ffarm:5>.withTag({FarmBlock: 5})
    },
    <minecraft:nether_brick> : {
        "block" : <forestry:ffarm>.withTag({FarmBlock: 6}),
        "gearbox" : <forestry:ffarm:2>.withTag({FarmBlock: 6}),
        "hatch" : <forestry:ffarm:3>.withTag({FarmBlock: 6}),
        "valve" : <forestry:ffarm:4>.withTag({FarmBlock: 6}),
        "control" : <forestry:ffarm:5>.withTag({FarmBlock: 6})
    },
    <minecraft:stonebrick:3> : {
        "block" : <forestry:ffarm>.withTag({FarmBlock: 7}),
        "gearbox" : <forestry:ffarm:2>.withTag({FarmBlock: 7}),
        "hatch" : <forestry:ffarm:3>.withTag({FarmBlock: 7}),
        "valve" : <forestry:ffarm:4>.withTag({FarmBlock: 7}),
        "control" : <forestry:ffarm:5>.withTag({FarmBlock: 7})
    },
    <minecraft:quartz_block> : {
        "block" : <forestry:ffarm>.withTag({FarmBlock: 8}),
        "gearbox" : <forestry:ffarm:2>.withTag({FarmBlock: 8}),
        "hatch" : <forestry:ffarm:3>.withTag({FarmBlock: 8}),
        "valve" : <forestry:ffarm:4>.withTag({FarmBlock: 8}),
        "control" : <forestry:ffarm:5>.withTag({FarmBlock: 8})
    },
    <minecraft:quartz_block:1> : {
        "block" : <forestry:ffarm>.withTag({FarmBlock: 9}),
        "gearbox" : <forestry:ffarm:2>.withTag({FarmBlock: 9}),
        "hatch" : <forestry:ffarm:3>.withTag({FarmBlock: 9}),
        "valve" : <forestry:ffarm:4>.withTag({FarmBlock: 9}),
        "control" : <forestry:ffarm:5>.withTag({FarmBlock: 9})
    },
    <minecraft:quartz_block:2> : {
        "block" : <forestry:ffarm>.withTag({FarmBlock: 10}),
        "gearbox" : <forestry:ffarm:2>.withTag({FarmBlock: 10}),
        "hatch" : <forestry:ffarm:3>.withTag({FarmBlock: 10}),
        "valve" : <forestry:ffarm:4>.withTag({FarmBlock: 10}),
        "control" : <forestry:ffarm:5>.withTag({FarmBlock: 10})
    },
};

for type, data in mapFarmBlock {

    var block as IItemStack = data["block"];
    var gearbox as IItemStack = data["gearbox"];
    var hatch as IItemStack = data["hatch"];
    var valve as IItemStack = data["valve"];
    var control as IItemStack = data["control"];

    recipes.remove(block);
    recipes.addShaped(block, [
        [<enderio:item_material:69>,<ore:plateRedAlloy>,<enderio:item_material:69>],
        [<ore:ingotCopper>,type,<ore:ingotCopper>],
        [<ore:plankTreatedWood>,<forestry:thermionic_tubes:1>,<ore:plankTreatedWood>]
    ]);

    recipes.remove(gearbox);
    recipes.addShaped(gearbox, [
        [<hammercore:iron_bordered_cobblestone>,<forestry:thermionic_tubes:2>,<hammercore:iron_bordered_cobblestone>],
        [<ore:gearTin>,block,<ore:gearTin>],
        [<hammercore:iron_bordered_cobblestone>,<forestry:thermionic_tubes:2>,<hammercore:iron_bordered_cobblestone>]
    ]);

    recipes.remove(hatch);
    recipes.addShaped(hatch, [
        [<ore:plateRedAlloy>,<contenttweaker:module_transfer>,<ore:plateRedAlloy>],
        [<embers:mech_accessor>,block,<embers:mech_accessor>],
        [<ore:trapdoorWood>,<embers:mech_core>,<ore:trapdoorWood>]
    ]);

    recipes.remove(valve);
    recipes.addShaped(valve, [
        [null,<embers:stone_valve>,null],
        [<immersivetech:valve>,block,<immersivetech:valve>],
        [<ore:gearIron>,<thermalfoundation:material:512>,<ore:gearIron>]
    ]);

    recipes.remove(control);
    recipes.addShaped(control, [
        [<ore:plateRedAlloy>,<cd4017be_lib:m:400>,<ore:plateRedAlloy>],
        [<forestry:thermionic_tubes:4>,block,<forestry:thermionic_tubes:4>],
        [<ore:plateRedAlloy>,<forestry:thermionic_tubes:4>,<ore:plateRedAlloy>]
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

// Bee Pristinification
recipes.addShapeless("bee_pristinification",<forestry:bee_princess_ge>.withLore(["This will pristinify the Princess."]), [
    <forestry:bee_princess_ge>.marked("princess"), <forestry:royal_jelly>, <woot:shard:3>
], function(out, ins, cInfo) {
    // if (ins.princess.tag has "NA") {
        return out.withTag(ins.princess.tag - "NA");
    // }
    // return ins.princess;
},null);

// Hive Crafting

var mapMarker as IItemStack[IItemStack] = {
    <forestry:beehives> : <evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:forest"}),
    <forestry:beehives:1> : <evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:plains"}),
    <forestry:beehives:2> : <evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:desert"}),
    <forestry:beehives:3> : <evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:jungle"}),
    <forestry:beehives:4> : <evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:sky"}),
    <forestry:beehives:5> : <evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:taiga"}),
    <forestry:beehives:6> : <evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:swampland"}),
    <morebees:hive> : <evilcraft:biome_extract:1>.withTag({biomeKey: "minecraft:hell"})
};

for hive, biome in mapMarker {
    Empowerer.addRecipe(hive, <harvestcraft:queenbeeitem>, biome, <harvestcraft:honey>, <forestry:wax_cast>, <forestry:ambrosia>, 500000, 100, [0.1, 0.1, 0.1]);
}
