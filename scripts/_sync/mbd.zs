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

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <multiblocked:item_input> : [
        [
            [<ic2:ic2upgrades:6>],
            [<energycontrol:item_component:2>],
            [<contenttweaker:module_transfer>]
        ]
    ],
    <multiblocked:item_output> : [
        [
            [<ic2:ic2upgrades:8>],
            [<energycontrol:item_component:2>],
            [<contenttweaker:module_transfer>]
        ]
    ],
    <multiblocked:fluid_input> : [
        [
            [<ic2:ic2upgrades:22>],
            [<energycontrol:item_component:2>],
            [<thermalfoundation:material:512>]
        ]
    ],
    <multiblocked:fluid_output> : [
        [
            [<ic2:ic2upgrades:24>],
            [<energycontrol:item_component:2>],
            [<thermalfoundation:material:512>]
        ]
    ],
    <multiblocked:energy_input> : [
        [
            [<thermalfoundation:material:513>],
            [<energycontrol:item_component:2>],
            [<contenttweaker:energy_flow_circuit>]
        ]
    ],
    <multiblocked:energy_output> : [
        [
            [<thermalfoundation:material:514>],
            [<energycontrol:item_component:2>],
            [<contenttweaker:energy_flow_circuit>]
        ]
    ],
    <multiblocked:entity> : [
        [
            [<integrateddynamics:part_entity_reader_item>],
            [<energycontrol:item_component:2>],
            [<enderio:item_soul_vial>]
        ]
    ],
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
