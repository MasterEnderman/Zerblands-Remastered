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
import mods.embers.Alchemy;
import mods.embers.Mixer;
import mods.enderio.AlloySmelter;
import mods.extrautils2.Resonator;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.MetalPress;
import mods.jei.JEI;
import mods.thermalexpansion.Crucible;

import scripts.functions.calc_basic;

JEI.removeAndHide(<embers:breaker>);
JEI.removeAndHide(<embers:vacuum>);

Crucible.addRecipe(<liquid:oil_soul> * 100, <minecraft:soul_sand>, 2000);

recipes.remove(<embers:ember_detector>);
calc_basic(<embers:ember_detector>, <minecraft:compass>, <embers:crystal_ember>);
calc_basic(<embers:golems_eye>, <minecraft:ender_eye>, <embers:archaic_brick>);

recipes.remove(<embers:item_pipe>);
calc_basic(<embers:item_pipe>*4,<immersiveengineering:material:8>,<ore:plateLead>);

recipes.remove(<embers:item_pump>);
Resonator.add(<embers:item_pump>, <embers:item_pipe>, 800, false);

recipes.remove(<embers:pipe>);
calc_basic(<embers:pipe>*4,<immersiveengineering:material:8>,<ore:plateIron>);

recipes.remove(<embers:pump>);
Resonator.add(<embers:pump>, <embers:pipe>, 800, false);

recipes.remove(<embers:mech_accessor>);
calc_basic(<embers:mech_accessor>, <embers:stairs_caminite_brick>, <immersiveengineering:material:8>);

Alchemy.remove(<embers:winding_gears>);
Alchemy.add(<embers:winding_gears>, [<contenttweaker:runic_gear>, <ore:gearBronze>, <ore:gearBronze>, <ore:gearBronze>, <ore:gearBronze>], {"copper": 32 to 64, "iron": 32 to 128});

Alchemy.remove(<embers:inflictor_gem>);
Alchemy.add(<embers:inflictor_gem>, [<contenttweaker:flawless_diamond_shard>, <actuallyadditions:item_crystal:3>, <ore:plateDawnstone>, <actuallyadditions:item_crystal:3>, <ore:plateDawnstone>], {"dawnstone": 48 to 96, "lead": 32 to 64});

Alchemy.add(<embers:seed_dawnstone>, [<ore:gemQuartz>, <ore:ingotDawnstone>, <ore:ingotDawnstone>, <embers:shard_ember>, <embers:shard_ember>], {"dawnstone": 48 to 96, "iron": 48 to 96});

recipes.remove(<embers:blend_caminite>);
recipes.addShapeless("blend_caminite", <embers:blend_caminite> * 4, [
    <minecraft:clay_ball>,
    <ore:dustAsh>,
    <earthworks:item_quicklime>,
    <earthworks:item_sand>
]);

recipes.remove(<embers:alchemy_tablet>);
Altar.addDiscoveryAltarRecipe("alchemy_tablet", <embers:alchemy_tablet>, 200, 200, [
    <ore:plateDawnstone>,<avaritia:compressed_crafting_table>,<ore:plateDawnstone>,
    <embers:stairs_caminite_brick>,<embers:spark_plug>,<embers:stairs_caminite_brick>,
    <embers:block_caminite_brick>,<embers:golems_eye>,<embers:block_caminite_brick>
]);

recipes.remove(<embers:alchemy_pedestal>);
Altar.addDiscoveryAltarRecipe("alchemy_pedestal", <embers:alchemy_pedestal>, 200, 200, [
    <ore:ingotDawnstone>,<minecraft:cauldron>,<ore:ingotDawnstone>,
    <embers:wall_caminite_brick>,<tconstruct:firewood:1>,<embers:wall_caminite_brick>,
    <embers:stairs_caminite_brick>,<tconstruct:firewood:1>,<embers:stairs_caminite_brick>
]);

recipes.remove(<embers:geo_separator>);
Altar.addDiscoveryAltarRecipe("geo_separator", <embers:geo_separator>, 200, 200, [
    null,null,<embers:pipe>,
    <embers:block_caminite_brick_slab>,<bloodmagic:cutting_fluid>,<ore:blockNickel>,
    <embers:block_caminite_brick>,<embers:block_tank>,<embers:block_caminite_brick>
]);

recipes.remove(<embers:ember_bore>);
Blueprint.addRecipe("machinery", <embers:ember_bore:0>, [
    <immersiveengineering:drillhead:1>,
    <embers:mech_core:0>,
    <embers:block_caminite_brick:0> * 4,
    <embers:stairs_caminite_brick:0> * 4,
    <contenttweaker:material_part:24> * 2,
    <contenttweaker:cutting_head:0> * 2,
]);

MetalPress.addRecipe(<embers:ingot_dawnstone>, <embers:plate_dawnstone>, <contenttweaker:mold_ingot>, 2048);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <embers:mech_core> : [
        [
            [<ore:ingotLead>,<ore:stickIron>,<ore:ingotLead>],
            [<ore:stickIron>,<immersiveengineering:material:8>,<ore:stickIron>],
            [<ore:ingotLead>,<ore:stickIron>,<ore:ingotLead>]
        ]
    ],
    <embers:block_furnace> : [
        [
            [<embers:brick_caminite>,<embers:plate_caminite>,<embers:brick_caminite>],
            [<embers:brick_caminite>,<tconstruct:firewood:1>,<embers:brick_caminite>],
            [<contenttweaker:reinforcediron_ingot>,<tconstruct:smeltery_controller>,<contenttweaker:reinforcediron_ingot>]
        ]
    ],
    <embers:mixer> : [
        [
            [<ore:plateIron>,<tconstruct:smeltery_io>,<ore:plateIron>],
            [<tconstruct:smeltery_io>,<extrautils2:drum:1>,<tconstruct:smeltery_io>],
            [<embers:block_caminite_brick>,<embers:mech_core>,<embers:block_caminite_brick>]
        ]
    ],
    <embers:ember_activator> : [
        [
            [<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>],
            [<contenttweaker:reinforcediron_ingot>,<embers:mech_core>,<contenttweaker:reinforcediron_ingot>],
            [<embers:block_caminite_brick>,<tconstruct:seared_furnace_controller>,<embers:block_caminite_brick>]
        ]
    ],
    <embers:stamper_base> : [
        [
            [<contenttweaker:reinforcediron_ingot>,null,<contenttweaker:reinforcediron_ingot>],
            [<embers:block_caminite_brick>,<minecraft:cauldron>,<embers:block_caminite_brick>]
        ]
    ],
    <embers:stamper> : [
        [
            [<immersiveengineering:material:8>,<ore:ingotCopper>,<immersiveengineering:material:8>],
            [<embers:block_caminite_brick>,<contenttweaker:reinforced_iron_block>,<embers:block_caminite_brick>],
            [<embers:block_caminite_brick>,null,<embers:block_caminite_brick>]
        ]
    ],
    <embers:ember_ring> : [
        [
            [<embers:ember_cluster>,<ore:ingotDawnstone>,null],
            [<ore:ingotDawnstone>,<actuallyadditions:item_misc:6>,<ore:ingotDawnstone>],
            [null,<ore:ingotDawnstone>,null]
        ]
    ],
    <embers:beam_cannon> : [
        [
            [<embers:crystal_ember>,<astralsorcery:itemcraftingcomponent:3>,<embers:crystal_ember>],
            [<ore:plateDawnstone>,<openmodularturrets:potato_cannon_turret>,<ore:plateDawnstone>],
            [<embers:block_caminite_brick>,<openmodularturrets:intermediate_tiered>,<embers:block_caminite_brick>]
        ]
    ],
    <embers:boiler> : [
        [
            [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],
            [<contenttweaker:heating_coil>,<ore:plateDawnstone>,<contenttweaker:heating_coil>],
            [<ore:plateCopper>,<embers:ember_activator>,<ore:plateCopper>]
        ]
    ],
    <embers:tinker_hammer> : [
        [
            [<ore:ingotIron>,<ore:plateLead>,<ore:ingotIron>],
            [<ore:ingotIron>,<ore:stickTreatedWood>,<ore:ingotIron>],
            [null,<ore:stickTreatedWood>,null]
        ]
    ],
    <embers:archaic_circuit> : [
        [
            [<immersiveengineering:wirecoil>,<embers:archaic_brick>,<immersiveengineering:wirecoil>],
            [<embers:archaic_brick>,<contenttweaker:stone_board>,<embers:archaic_brick>],
            [<immersiveengineering:wirecoil>,<embers:archaic_brick>,<immersiveengineering:wirecoil>]
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

Mixer.remove(<liquid:dawnstone> * 8);
Mixer.add(<liquid:dawnstone> * 12, [
    <liquid:bronze> * 4,
    <liquid:constantan> * 4,
    <liquid:alubrass> * 4
]);

AlloySmelter.addRecipe(<embers:ashen_cloth>, [<ore:blockRockwool>,<ore:dustAsh>,<ore:string>], 25000);
AlloySmelter.addRecipe(<embers:ingot_dawnstone>, [<ore:ingotBronze>,<ore:ingotConstantan>,<ore:ingotAlubrass>], 25000);
AlloySmelter.addRecipe(<embers:archaic_brick> * 3, [<embers:archaic_brick>,<minecraft:soul_sand>,<minecraft:clay_ball>], 25000);
