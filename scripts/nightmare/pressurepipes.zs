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

var calcMapBasic as IIngredient[][IItemStack] = {
    <pressure:pipe> : [<thermaldynamics:duct_16:6>|<thermaldynamics:duct_16:7>, <ore:plateTungsten>],
    <pressure:tank_indicator> : [<pressure:tank_block>, <enderio:block_gauge>],
    <pressure:tank_filter> : [<pressure:tank_block>, <extrautils2:filterfluids>],
    <pressure:tank_interface> : [<pressure:tank_block>, <thermalfoundation:material:512>],
    <pressure:tank_data_port> : [<pressure:tank_block>, <opencomputers:card:6>],
    <pressure:tank_sensor> : [<pressure:tank_block>, <ic2:ic2upgrades:3>],
    <pressure:configurator> : [<thermalfoundation:wrench>, <extrautils2:filterfluids>]
};

for item, recipe in calcMapBasic {
    calc_basic(item, recipe[0], recipe[1]);
}

var calcMapAtomic as IIngredient[][IItemStack] = {
    <pressure:output> : [<pressure:interface>, <appliedenergistics2:part:261>, <actuallyadditions:block_misc:9>],
    <pressure:input> : [<pressure:interface>, <appliedenergistics2:part:241>, <actuallyadditions:block_misc:9>],
    <pressure:router> : [<pressure:interface>, <appliedenergistics2:fluid_interface>, <actuallyadditions:block_misc:8>],
    <pressure:pump> : [<pressure:interface>, <immersiveengineering:metal_device0:5>, <actuallyadditions:block_misc:9>],
    <pressure:drain> : [<pressure:interface>, <immersiveengineering:metal_device0:6>, <actuallyadditions:block_misc:9>],
    <pressure:sluice> : [<pressure:interface>, <minecraft:iron_bars>, <actuallyadditions:block_misc:9>],
    <pressure:check_valve> : [<pressure:interface>, <pressure:pipe>, <immersivetech:valve>],
    <pressure:pipe_sensor> : [<pressure:interface>, <pressure:pipe>, <minecraft:observer>],
    <pressure:tank_pressure_output> : [<pressure:interface>, <appliedenergistics2:part:261>, <pressure:tank_block>],
    <pressure:tank_pressure_input> : [<pressure:interface>, <appliedenergistics2:part:241>, <pressure:tank_block>],
    <pressure:tank_fluid_access> : [<pressure:fluid_interface>, <appliedenergistics2:fluid_interface>, <pressure:tank_block>],
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
    ],
    <pressure:hand_pump> : [
        [
            [null,null,<immersiveengineering:toolupgrade>],
            [null,<forestry:pipette>,null],
            [<immersiveengineering:toolupgrade:7>,null,null]
        ]
    ],
    <pressure:canister> : [
        [
            [null,<ore:plateTungsten>,<ore:plateTungsten>],
            [<ore:plateTungsten>,<immersiveengineering:jerrycan>,<immersiveengineering:jerrycan>],
            [<ore:plateTungsten>,<immersiveengineering:jerrycan>,<immersiveengineering:jerrycan>]
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
