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

import mods.embers.Alchemy;
import mods.embers.Mixer;
import mods.enderio.AlloySmelter;
import mods.immersiveengineering.Blueprint;
import mods.jei.JEI;
import mods.thermalexpansion.Crucible;

JEI.removeAndHide(<embers:breaker>);
JEI.removeAndHide(<embers:vacuum>);

Crucible.addRecipe(<liquid:oil_soul> * 100, <minecraft:soul_sand>, 2000);

Alchemy.remove(<embers:winding_gears>);
Alchemy.add(<embers:winding_gears>, [<blood_dynamo:ingredient:2>, <ore:gearBronze>, <ore:gearBronze>, <ore:gearBronze>, <ore:gearBronze>], {"copper": 32 to 64, "iron": 32 to 128});

recipes.remove(<embers:blend_caminite>);
recipes.addShapeless("blend_caminite", <embers:blend_caminite> * 4, [
    <minecraft:clay_ball>,
    <ore:dustAsh>,
    <earthworks:item_quicklime>,
    <earthworks:item_sand>
]);

recipes.remove(<embers:ember_bore>);
Blueprint.addRecipe("machinery", <embers:ember_bore>, [
    <immersiveengineering:drillhead:1>,
    <embers:mech_core>,
    <embers:block_caminite_brick> * 4,
    <embers:stairs_caminite_brick> * 4,
    <contenttweaker:material_part:24> * 2,
    <contenttweaker:cutting_head> * 2,
]);

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

AlloySmelter.addRecipe(<embers:ashen_cloth>, [<ore:wool>,<ore:dustAsh>,<ore:string>], 25000);
AlloySmelter.addRecipe(<embers:ingot_dawnstone>, [<ore:ingotBronze>,<ore:ingotConstantan>,<ore:ingotAluminumBrass>], 25000);
