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

static mapWorkbench as IIngredient[][IItemStack][string] = {
    "components" : {
        <actuallyadditions:item_misc:16> : [
            <contenttweaker:electric_motor>,
            <thermalfoundation:material:640>,
            <forestry:thermionic_tubes:6> * 2,
            <ic2:itemcable:15> * 2
        ],
        <contenttweaker:electric_motor> : [
            <immersiveengineering:material:8>,
            <contenttweaker:heating_coil>,
            <actuallyadditions:item_misc:7>,
            <ic2:itemcable> * 4
        ],
        <actuallyadditions:item_battery:0> : [
            <ic2:itembatre:0>,
            <actuallyadditions:item_misc:8>,
            <actuallyadditions:item_crystal:0>,
            <actuallyadditions:item_crystal:5> * 2
        ],
        <actuallyadditions:item_battery_double:0> : [
            <actuallyadditions:item_battery:0>,
            <actuallyadditions:item_misc:8>,
            <actuallyadditions:item_crystal_empowered:5> * 2
        ],
        <actuallyadditions:item_battery_triple:0> : [
            <actuallyadditions:item_battery_double:0>,
            <actuallyadditions:item_misc:8>,
            <actuallyadditions:item_crystal_empowered:0> * 2
        ],
        <actuallyadditions:item_battery_quadruple:0> : [
            <actuallyadditions:item_battery_triple:0>,
            <actuallyadditions:item_misc:8>,
            <actuallyadditions:item_crystal:2> * 2
        ],
        <actuallyadditions:item_battery_quintuple:0> : [
            <actuallyadditions:item_battery_quadruple:0>,
            <actuallyadditions:item_misc:8>,
            <actuallyadditions:item_crystal_empowered:2> * 2
        ],
        <contenttweaker:iron_rotor:0> : [
            <ore:gearIron> * 1,
            <contenttweaker:iron_rotor_blade:0> * 4
        ],
        <contenttweaker:iron_rotor_blade:0> :  [
            <ore:stickIron> * 3,
            <ore:plateIron> * 2
        ],
        <immersiveengineering:material:8> : [
            <ore:stickIron> * 4,
            <ore:plateCopper> * 2,
            <ore:gearLead> * 1
        ],
        <immersiveengineering:material:9> : [
            <ore:stickSteel> * 4,
            <ore:plateBronze> * 2,
            <ore:gearElectrum> * 1
        ],
        <immersiveengineering:material:27> : [
            <immersiveengineering:stone_decoration:8> * 1,
            <ore:plateAluminum> * 1,
            <appliedenergistics2:light_detector:0> * 1,
            <immersiveengineering:material:26> * 1,
            <embers:shard_ember:0> * 1,
            <ic2:itemcable:0> * 4
        ],
        <immersiveengineering:material:11> : [
            <immersiveengineering:material:0> * 6,
            <immersiveengineering:treated_wood:0> * 3,
            <bibliocraft:framingsheet:0> * 2,
            <minecraft:iron_nugget:0> * 6,
            <bibliocraft:framingboard:0> * 4
        ],
        <immersiveengineering:material:10> : [
            <immersiveengineering:material:0> * 4,
            <immersiveengineering:treated_wood:0> * 2,
            <bibliocraft:framingsheet:0> * 2,
            <ore:nuggetSteel> * 6,
            <bibliocraft:framingboard:0> * 2
        ],
        <immersiveengineering:drillhead:1> : [
            <ore:blockIron> * 2,
            <ore:ingotRefinedIron> * 8
        ],
        <immersiveengineering:drillhead:0> : [
            <ore:blockSteel> * 2,
            <ore:ingotDarkSteel> * 8
        ],
        <immersiveengineering:material:12> : [
            <immersiveengineering:material:5> * 6,
            <bibliocraft:framingboard:0> * 6,
            <ore:nuggetSteel> * 3
        ],
        <ic2:itemmisc:304> : [
            <ore:gearSteel> * 1,
            <contenttweaker:iron_rotor_blade:0> * 8
        ],
        <immersiveengineering:material:26> : [
            <ore:blockGlass>,
            <ore:plateNickel>,
            <ore:wireCopper>,
            <ore:dustRedstone>
        ]
    },
    "electrode" : {
        <immersiveengineering:graphite_electrode> : [
            <immersiveengineering:material:19> * 4
        ]
    },
    "machinery" : {
        <immersiveengineering:metal_device1:1> : [
            <embers:blasting_core:0> * 1,
            <contenttweaker:heating_coil:0> * 1,
            <immersiveengineering:metal_decoration0:0> * 1,
            <immersiveengineering:sheetmetal:9> * 2,
        ],
        <actuallyadditions:block_ranged_collector:0> : [
            <actuallyadditions:block_misc:9>,
            <tieredmagnets:magnet_energy_leadstone:0>,
            <actuallyadditions:item_crystal:3> * 2
        ],
        <actuallyadditions:block_breaker:0> : [
            <actuallyadditions:block_misc:9>,
            <actuallyadditions:item_misc:7>,
            <actuallyadditions:item_crystal:3>
        ],
        <actuallyadditions:block_placer:0> : [
            <actuallyadditions:block_misc:9>,
            <actuallyadditions:item_misc:7>,
            <actuallyadditions:item_crystal:1>
        ],
        <actuallyadditions:block_dropper:0> : [
            <actuallyadditions:block_misc:9>,
            <actuallyadditions:item_misc:8>,
            <randomthings:irondropper:0>
        ],
        <actuallyadditions:block_fluid_placer:0> : [
            <actuallyadditions:block_placer:0>,
            <thermalexpansion:tank:0>,
            <immersiveengineering:metal_device1:6> * 2
        ],
        <actuallyadditions:block_fluid_collector:0> : [
            <actuallyadditions:block_breaker:0>,
            <thermalexpansion:tank:0>,
            <immersiveengineering:metal_device1:6> * 2
        ],
        <actuallyadditions:block_phantom_booster:0> : [
            <actuallyadditions:block_misc:8>,
            <actuallyadditions:item_crystal_empowered:0>,
            <botanicadds:rune_tp:0>
        ],
        <actuallyadditions:block_directional_breaker:0> : [
            <actuallyadditions:block_breaker:0> * 3,
            <actuallyadditions:item_crystal_empowered:3>,
            <actuallyadditions:item_misc:8>
        ],
        <actuallyadditions:block_heat_collector:0> : [
            <actuallyadditions:block_misc:9>,
            <actuallyadditions:item_crystal:5>,
            <randomthings:imbue:0>,
            <contenttweaker:heat_conductor:0>
        ],
        <actuallyadditions:block_miner:0> : [
            <actuallyadditions:block_crystal_empowered:3>,
            <thermalexpansion:frame:0>,
            <actuallyadditions:item_drill:*>,
            <actuallyadditions:item_drill_upgrade_speed_iii:0>
        ],
        <immersivepetroleum:metal_device:0> : [
            <ore:blockGlassColorless> * 3,
            <ore:plankTreatedWood> * 2,
            <immersiveengineering:metal_device1:6> * 2,
            <immersiveengineering:material:8>
        ],
        <immersivepetroleum:metal_device:1> : [
            <immersiveengineering:metal_device0:0>,
            <immersiveengineering:metal_decoration0:6>,
            <immersiveengineering:metal_device1:6> * 4
        ],
        <embers:ember_bore:0> : [
            <immersiveengineering:drillhead:1>,
            <embers:mech_core:0>,
            <embers:block_caminite_brick:0> * 4,
            <embers:stairs_caminite_brick:0> * 4,
            <contenttweaker:material_part:24> * 2,
            <contenttweaker:cutting_head:0> * 2
        ],
        <tieredmagnets:magnetic_projector:0> : [
            <extrautils2:machine:0>,
            <minecraft:hopper:0>,
            <ore:ingotRedAlloy>,
            <minecraft:glass_pane:0> * 4
        ],
        <tieredmagnets:magnetic_insulator:0> : [
            <extrautils2:machine:0>,
            <ore:ingotRedAlloy>,
            <minecraft:ender_pearl:0> * 2
        ]
    },
    "rails" : {
        <minecraft:golden_rail:0> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_standard>*6,<contenttweaker:rail_speed>*6,<ore:dustRedstone>*8],
        <minecraft:detector_rail:0> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_standard>*6,<ore:dustRedstone>*4,<minecraft:stone_pressure_plate>*16],
        <minecraft:rail:0> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_standard>*6],
        <minecraft:activator_rail:0> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_standard>*6,<ore:dustRedstone>*8,<minecraft:redstone_torch>*4],
        <tconstruct:wood_rail:0> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_wood>*6],
        <tconstruct:wood_rail_trapdoor:0> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_wood>*6,<minecraft:trapdoor>*4],
        <enderio:block_exit_rail:0> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_standard>*6,<minecraft:piston>*4,<minecraft:stone_pressure_plate>*16],
        <botania:ghostrail:0> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_standard>*6,<botania:platform:1>*4],
        <contenttweaker:rail_wood:0> : [<contenttweaker:tie_wood:0>,<ore:ingotIron>],
        <contenttweaker:rail_standard:0> * 6 : [<ore:plateIron> * 3],
        <contenttweaker:rail_speed:0> * 6 : [<ore:plateGold> * 3],
    },
    "bullet" : {
        <xreliquary:bullet:1> : [
            <ore:bulletEmpty> * 8,
            <ore:nuggetGold> * 2,
            <minecraft:flint:0>,
            <minecraft:gunpowder:0>
        ],
        <xreliquary:bullet:2> : [
            <xreliquary:bullet:1> * 8,
            <xreliquary:mob_ingredient:6>
        ],
        <xreliquary:bullet:3> : [
            <ore:bulletEmpty> * 8,
            <ore:nuggetGold> * 2,
            <minecraft:blaze_rod:0>,
            <minecraft:blaze_powder:0>
        ],
        <xreliquary:bullet:4> : [
            <xreliquary:bullet:7> * 8,
            <xreliquary:mob_ingredient:11>
        ],
        <xreliquary:bullet:5> : [
            <ore:bulletEmpty> * 8,
            <ore:nuggetGold> * 2,
            <ore:slimeball>,
            <minecraft:gunpowder:0>
        ],
        <xreliquary:bullet:6> : [
            <xreliquary:bullet:5> * 8,
            <xreliquary:mob_ingredient:3>
        ],
        <xreliquary:bullet:7> : [
            <ore:bulletEmpty> * 8,
            <ore:nuggetGold> * 2,
            <ore:gemLapis>,
            <minecraft:gunpowder:0>
        ],
        <xreliquary:bullet:8> : [
            <ore:bulletEmpty> * 8,
            <ore:nuggetGold>,
            <ore:slimeball>,
            <ore:sandstone>,
            <minecraft:gunpowder:0>
        ],
        <xreliquary:bullet:9> : [
            <ore:bulletEmpty> * 8,
            <ore:nuggetGold> * 2,
            <xreliquary:mob_ingredient:3> * 2,
            <minecraft:gunpowder:0>
        ]
    }
};
