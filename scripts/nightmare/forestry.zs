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
import mods.forestry.ThermionicFabricator;
import mods.jei.JEI;

JEI.removeAndHide(<forestry:bottler>);

JEI.addItem(<forestry:thermionic_tubes:3>);
JEI.addItem(<forestry:thermionic_tubes:8>);

recipes.remove(<forestry:humus>);

recipes.remove(<forestry:ash_stairs>);
recipes.addShaped(<forestry:ash_stairs> * 4, [
    [<forestry:ash_brick>,null,null],
    [<forestry:ash_brick>,<forestry:ash_brick>,null],
    [<forestry:ash_brick>,<forestry:ash_brick>,<forestry:ash_brick>]
]);

Carpenter.removeRecipe(<forestry:impregnated_casing>);
Carpenter.addRecipe(<forestry:impregnated_casing>, [
    [<ore:scaffoldingTreatedWood>,<ore:fenceTreatedWood>,<ore:scaffoldingTreatedWood>],
    [<ore:fenceTreatedWood>,<actuallyadditions:block_misc:4>,<ore:fenceTreatedWood>],
    [<ore:scaffoldingTreatedWood>,<ore:fenceTreatedWood>,<ore:scaffoldingTreatedWood>]
], 60, <liquid:seed.oil> * 200, <thermalfoundation:material:22>);

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
            [<ore:stickTreatedWood>,<ore:string>,<ore:stickTreatedWood>],
            [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>]
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
    ThermionicFabricator.addCast(data["electrode"], [
        [data["catalyst"],<contenttweaker:resistor>,data["catalyst"]],
        [<ic2:itemcable>,<contenttweaker:diode>,<ic2:itemcable>],
        [<rs_ctr:wire_e>,<ic2:itemcable:2>,<rs_ctr:wire_e>]
    ], <liquid: glass> * 200);

    ThermionicFabricator.removeCast(tube);
    ThermionicFabricator.addCast(tube, [
        [null,<contenttweaker:energium_dust>,null],
        [<appliedenergistics2:material:2>,data["electrode"],<appliedenergistics2:material:2>],
        [null,<thermalfoundation:material:97>,null]
    ], <liquid: glass> * 200);
}

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
