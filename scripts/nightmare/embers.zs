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

import mods.embers.Mixer;

<embers:archaic_brick>.addTooltip(format.green("Drops from Ancient Golem."));

recipes.remove(<embers:blend_caminite>);
recipes.addShapeless("blend_caminite", <embers:blend_caminite> * 4, [
    <minecraft:clay_ball>,
    <ore:dustAsh>,
    <earthworks:item_quicklime>,
    <earthworks:item_sand>
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
            [<calculator:reinforcedironingot>,<tconstruct:smeltery_controller>,<calculator:reinforcedironingot>]
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
            [<calculator:reinforcedironingot>,<embers:mech_core>,<calculator:reinforcedironingot>],
            [<embers:block_caminite_brick>,<tconstruct:seared_furnace_controller>,<embers:block_caminite_brick>]
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
