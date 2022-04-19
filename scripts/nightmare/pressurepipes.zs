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

import scripts.functions.calc_basic;
import scripts.functions.calc_atomic;

calc_basic(<pressure:pipe>, <thermaldynamics:duct_16:6>|<thermaldynamics:duct_16:7>, <ore:plateTungsten>);
calc_basic(<pressure:tank_indicator>, <pressure:tank_block>, <enderio:block_gauge>);

var calcMapAtomic as IIngredient[][IItemStack] = {
    <pressure:output> : [<pressure:interface>, <appliedenergistics2:part:261>, <actuallyadditions:block_misc:9>],
    <pressure:input> : [<pressure:interface>, <appliedenergistics2:part:241>, <actuallyadditions:block_misc:9>],
    <pressure:router> : [<pressure:interface>, <appliedenergistics2:fluid_interface>, <actuallyadditions:block_misc:8>],
    <pressure:pump> : [<pressure:interface>, <immersiveengineering:metal_device0:5>, <actuallyadditions:block_misc:9>],
    <pressure:drain> : [<pressure:interface>, <immersiveengineering:metal_device0:6>, <actuallyadditions:block_misc:9>],
    <pressure:sluice> : [<pressure:interface>, <minecraft:iron_bars>, <actuallyadditions:block_misc:9>],
    <pressure:check_valve> : [<pressure:interface>, <pressure:pipe>, <immersivetech:valve>],
    <pressure:pipe_sensor> : [<pressure:interface>, <pressure:pipe>, <minecraft:observer>],
};

for item, recipe in calcMapAtomic {
    calc_atomic(item, recipe[0], recipe[1], recipe[2]);
}

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <pressure:tank_block> * 4 : [
        [
            [<pressure:tank_wall>,<ore:plateTungsten>,<pressure:tank_wall>],
            [<ore:plateTungsten>,<thermalfoundation:material:512>,<ore:plateTungsten>],
            [<pressure:tank_wall>,<ore:plateTungsten>,<pressure:tank_wall>]
        ]
    ],
    <pressure:tank_controller> : [
        [
            [<pressure:tank_wall>,<ic2:itemmisc:452>,<pressure:tank_wall>],
            [<ore:plateTungsten>,<thermalexpansion:frame:64>,<ore:plateTungsten>],
            [<pressure:tank_wall>,<ore:plateTungsten>,<pressure:tank_wall>]
        ]
    ],
    <pressure:tank_fluid_input> : [
        [
            [<pressure:fluid_interface>],
            [<pressure:tank_block>]
        ],
        [
            [<pressure:tank_fluid_output>]
        ]
    ],
    <pressure:tank_fluid_output> : [
        [
            [<pressure:tank_block>],
            [<pressure:fluid_interface>]
        ],
        [
            [<pressure:tank_fluid_input>]
        ]
    ],
    <pressure:water_source> : [
        [
            [<ore:plateTungsten>,<botania:rune>,<ore:plateTungsten>],
            [<botania:elfglass>,<enderio:block_reservoir>,<botania:elfglass>],
            [<ore:plateTungsten>,<pressure:fluid_interface>,<ore:plateTungsten>]
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

Carpenter.addRecipe(<pressure:interface>, [
    [<ore:plateSteel>,<contenttweaker:iron_rotor>,<ore:plateSteel>],
    [<thermalfoundation:material:512>,<enderutilities:enderpart:15>,<thermalfoundation:material:512>],
    [<ore:plateSteel>,<contenttweaker:electric_motor>,<ore:plateSteel>]
], 20, <liquid:lubricant> * 1000);

Carpenter.addRecipe(<pressure:fluid_interface>, [
    [<ore:plateSteel>,<contenttweaker:iron_rotor>,<ore:plateSteel>],
    [<thermalfoundation:material:512>,<minecraft:bucket>,<thermalfoundation:material:512>],
    [<ore:plateSteel>,<contenttweaker:iron_rotor>,<ore:plateSteel>]
], 20, <liquid:lubricant> * 1000);
