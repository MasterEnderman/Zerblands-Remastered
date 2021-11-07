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

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <rftoolspower:power_core1> : [
        [
            [<enderio:item_power_conduit>,<actuallyadditions:item_battery>,<enderio:item_power_conduit>],
            [<actuallyadditions:item_battery>,<enderio:block_cap_bank:1>,<actuallyadditions:item_battery>],
            [<enderio:item_power_conduit>,<actuallyadditions:item_battery>,<enderio:item_power_conduit>]
        ]
    ],
    <rftoolspower:power_core2> : [
        [
            [<enderio:item_power_conduit:1>,<actuallyadditions:item_battery_triple>,<enderio:item_power_conduit:1>],
            [<actuallyadditions:item_battery_triple>,<enderio:block_cap_bank:2>,<actuallyadditions:item_battery_triple>],
            [<enderio:item_power_conduit:1>,<actuallyadditions:item_battery_triple>,<enderio:item_power_conduit:1>]
        ]
    ],
    <rftoolspower:power_core3> : [
        [
            [<enderio:item_power_conduit:2>,<actuallyadditions:item_battery_quintuple>,<enderio:item_power_conduit:2>],
            [<actuallyadditions:item_battery_quintuple>,<enderio:block_cap_bank:3>,<actuallyadditions:item_battery_quintuple>],
            [<enderio:item_power_conduit:2>,<actuallyadditions:item_battery_quintuple>,<enderio:item_power_conduit:2>]
        ]
    ],
    <rftoolspower:cell1> : [
        [
            [<actuallyadditions:item_misc:7>,<rftoolspower:power_core1>,<actuallyadditions:item_misc:7>],
            [<rftoolspower:power_core1>,<rftools:machine_frame>,<rftoolspower:power_core1>],
            [<actuallyadditions:item_misc:7>,<rftoolspower:power_core1>,<actuallyadditions:item_misc:7>]
        ]
    ],
    <rftoolspower:cell2> : [
        [
            [<actuallyadditions:item_misc:8>,<rftoolspower:power_core2>,<actuallyadditions:item_misc:8>],
            [<rftoolspower:power_core2>,<rftoolspower:cell1>,<rftoolspower:power_core2>],
            [<actuallyadditions:item_misc:8>,<rftoolspower:power_core2>,<actuallyadditions:item_misc:8>]
        ]
    ],
    <rftoolspower:cell3> : [
        [
            [<thermalfoundation:material:515>,<rftoolspower:power_core3>,<thermalfoundation:material:515>],
            [<rftoolspower:power_core3>,<rftoolspower:cell2>,<rftoolspower:power_core3>],
            [<thermalfoundation:material:515>,<rftoolspower:power_core3>,<thermalfoundation:material:515>]
        ]
    ],
    <rftoolspower:information_screen> : [
        [
            [<extrautils2:screen>,<extrautils2:screen>,<extrautils2:screen>],
            [<ore:gearSignalum>,<rftools:machine_base>,<ore:gearSignalum>]
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
