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

import mods.enderio.AlloySmelter;
import mods.forestry.Carpenter;
import mods.forestry.ThermionicFabricator;
import mods.jei.JEI;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;
import scripts.functions.calc_scientific;

import scripts.mod_functions.betterCharging;

JEI.removeAndHide(<quantumflux:magnet>);

recipes.removeByRecipeName("quantumflux:ender_pearl");

betterCharging(<quantumflux:exciterupgrade>,<quantumflux:craftingpiece:4>,10000000);

recipes.remove(<quantumflux:linkingcard>);
calc_basic(<quantumflux:linkingcard>,<quantumflux:craftingpiece:5>,<quantumflux:craftingpiece:3>);

recipes.remove(<quantumflux:voidbucket>);
calc_scientific(<quantumflux:voidbucket>, <minecraft:bucket>, <actuallyadditions:item_crystal_empowered:3>);

recipes.remove(<quantumflux:darkstone:1>);
Transposer.addFillRecipe(<quantumflux:darkstone:1>, <quantumflux:darkstone>, <liquid:glowstone> * 500, 2000);

var listQuibit as IItemStack[][] = [
    [<quantumflux:quibitcluster:1>,<thermalexpansion:capacitor>],
    [<quantumflux:quibitcluster:2>,<thermalexpansion:capacitor:1>],
    [<quantumflux:quibitcluster:3>,<thermalexpansion:capacitor:2>],
    [<quantumflux:quibitcluster:4>,<thermalexpansion:capacitor:3>],
    [<quantumflux:quibitcluster:5>,<thermalexpansion:capacitor:4>],
];

var index as int = 1;

while index < 5 {
    recipes.remove(listQuibit[index][0]);
    recipes.addShaped(listQuibit[index][0], [
        [listQuibit[index - 1][0],listQuibit[index][1],listQuibit[index - 1][0]],
        [listQuibit[index][1],<quantumflux:craftingpiece:2>,listQuibit[index][1]],
        [listQuibit[index - 1][0],listQuibit[index][1],listQuibit[index - 1][0]]
    ]);
    index += 1;
}

recipes.remove(<quantumflux:craftingpiece:3>);
InductionSmelter.addRecipe(<quantumflux:craftingpiece:3>, <botania:quartz:1>, <botania:manaresource:1>, 2500);

recipes.remove(<quantumflux:craftingpiece>);
ThermionicFabricator.addCast(<quantumflux:craftingpiece>, [
    [null,<quantumflux:craftingpiece:3>,null],
    [<quantumflux:craftingpiece:3>,<ic2:itembatcrystal>,<quantumflux:craftingpiece:3>],
    [<embers:plate_dawnstone>,<embers:archaic_circuit>,<embers:plate_dawnstone>]
], <liquid:glass> * 500);

recipes.remove(<quantumflux:craftingpiece:5>);
Carpenter.addRecipe(<quantumflux:craftingpiece:5>, [
    [null,<quantumflux:craftingpiece>,null],
    [<quantumflux:craftingpiece:3>,<quantumflux:craftingpiece:6>,<quantumflux:craftingpiece:3>],
    [<ore:platePlatinum>,<opencomputers:material:3>,<ore:platePlatinum>]
], 10, <liquid:iron_chloride> * 200);

recipes.remove(<quantumflux:craftingpiece:2>);
AlloySmelter.addRecipe(<quantumflux:craftingpiece:2>, [<enderio:item_material:18>,<contenttweaker:antispider_eye>,<botania:lens:17>], 5000);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <quantumflux:craftingpiece:4> : [
        [
            [null,<quantumflux:craftingpiece:5>,null],
            [<quantumflux:craftingpiece:2>,<opencomputers:material:12>,<quantumflux:craftingpiece:2>],
            [<quantumflux:darkstone>,<rftools:machine_base>,<quantumflux:darkstone>]
        ]
    ],
    <quantumflux:craftingpiece:1> : [
        [
            [<ore:plateTungsten>,<forestry:thermionic_tubes:4>,<ore:plateTungsten>],
            [<forestry:thermionic_tubes:4>,<contenttweaker:red_core>,<forestry:thermionic_tubes:4>],
            [<ore:plateTungsten>,<forestry:thermionic_tubes:4>,<ore:plateTungsten>]
        ]
    ],
    <quantumflux:telepad> : [
        [
            [<quantumflux:rfexciter>],
            [<enderio:block_tele_pad>]
        ]
    ],
    <quantumflux:quibitcluster:1> : [
        [
            [<quantumflux:craftingpiece>,<quantumflux:craftingpiece:1>,<quantumflux:craftingpiece>],
            [<quantumflux:craftingpiece:1>,<quantumflux:craftingpiece>,<quantumflux:craftingpiece:1>],
            [<ore:plateTungsten>,<actuallyadditions:block_misc:9>,<ore:plateTungsten>]
        ]
    ],
    <quantumflux:rfexciter> : [
        [
            [<quantumflux:craftingpiece>,<enderutilities:enderpart:16>,<quantumflux:craftingpiece>],
            [<quantumflux:craftingpiece:1>,<actuallyadditions:block_laser_relay>,<quantumflux:craftingpiece:1>]
        ]
    ],
    <quantumflux:zeropointextractor> : [
        [
            [<quantumflux:craftingpiece>,<quantumflux:craftingpiece:5>,<quantumflux:craftingpiece>],
            [<actuallyadditions:item_crystal_empowered:3>,<extrautils2:machine>,<actuallyadditions:item_crystal_empowered:3>],
            [<quantumflux:craftingpiece:1>,<quantumflux:craftingpiece:1>,<quantumflux:craftingpiece:1>]
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
