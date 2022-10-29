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

import scripts.functions.calc_basic;

var mapBasic as IIngredient[][IItemStack] = {
    <refinedrelocation:sorting_upgrade> : [<bibliocraft:framingsheet>,<minecraft:writable_book>],
    <refinedrelocation:stack_limiter> : [<bibliocraft:framingsheet>,<ore:nuggetGold>],
    <refinedrelocation:input_filter> : [<bibliocraft:framingsheet>,<ore:dustGlowstone>],
    <refinedrelocation:output_filter> : [<bibliocraft:framingsheet>,<ore:dustRedstone>],
    <refinedrelocation:slot_lock> : [<bibliocraft:framingsheet>,<ore:nuggetIron>],
    <refinedrelocation:sorting_chest> : [<minecraft:chest>,<minecraft:writable_book>],
    <refinedrelocation:fast_hopper> : [<minecraft:hopper>,<immersiveengineering:material:27>],
    <refinedrelocation:filtered_hopper> : [<refinedrelocation:fast_hopper>,<minecraft:writable_book>],
};

for item, recipe in mapBasic {
    var one as IIngredient = recipe[0];
    var two as IIngredient = recipe[1];

    recipes.remove(item);
    calc_basic(item, one, two);
}

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <refinedrelocation:block_extender> : [
        [
            [<ore:ingotTin>,<refinedrelocation:fast_hopper>,<ore:ingotTin>],
            [<ore:blockGlass>,<embers:mech_core>,<ore:blockGlass>],
            [<ore:ingotTin>,<embers:archaic_circuit>,<ore:ingotTin>]
        ]
    ],
    <refinedrelocation:sorting_interface> : [
        [
            [<ore:ingotTin>,<refinedrelocation:sorting_connector>,<ore:ingotTin>],
            [<refinedrelocation:input_filter>,<embers:mech_core>,<refinedrelocation:output_filter>],
            [<ore:ingotTin>,<rs_ctr:rs_port:2>,<ore:ingotTin>]
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

recipes.remove(<refinedrelocation:sorting_connector>);
recipes.addShaped(<refinedrelocation:sorting_connector> * 6, [
    [<ic2:itemcable:10>,<ic2:itemcable:13>,<ic2:itemcable:10>],
    [<rs_ctr:rs_port:2>,<ore:gearAluminum>,<rs_ctr:rs_port:2>],
    [<ic2:itemcable:10>,<ic2:itemcable:13>,<ic2:itemcable:10>]
]);
