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

import mods.enderio.SliceNSplice;
import mods.jei.JEI;

import scripts.functions.calc_basic;
import scripts.functions.calc_scientific;

var mapBasic as IIngredient[][IItemStack] = {
    <storagedrawers:drawer_key> : [<enderutilities:enderpart:80>,<storagedrawers:upgrade_template>],
    <storagedrawers:shroud_key> : [<storagedrawers:drawer_key>,<minecraft:ender_eye>],
    <storagedrawers:personal_key> : [<storagedrawers:drawer_key>,<minecraft:name_tag>],
    <storagedrawers:quantify_key> : [<storagedrawers:drawer_key>,<minecraft:writable_book>],
    <storagedrawers:keybutton> : [<contenttweaker:stone_board>,<storagedrawers:drawer_key>],
    <storagedrawers:keybutton:1> : [<contenttweaker:stone_board>,<storagedrawers:shroud_key>],
    <storagedrawers:keybutton:2> : [<contenttweaker:stone_board>,<storagedrawers:personal_key>],
    <storagedrawers:keybutton:3> : [<contenttweaker:stone_board>,<storagedrawers:quantify_key>],
};

for item, recipe in mapBasic {
    var one as IIngredient = recipe[0];
    var two as IIngredient = recipe[1];

    recipes.remove(item);
    calc_basic(item, one, two);
}

var mapScientific as IIngredient[IItemStack] = {
    <storagedrawers:upgrade_one_stack> : <minecraft:flint>,
    <storagedrawers:upgrade_storage> : <actuallyadditions:item_crystal:3>,
    <storagedrawers:upgrade_storage:1> : <actuallyadditions:item_crystal:5>,
    <storagedrawers:upgrade_storage:2> : <contenttweaker:enrichedgold_ingot>,
    <storagedrawers:upgrade_storage:3> : <actuallyadditions:item_crystal:2>,
    <storagedrawers:upgrade_storage:4> : <actuallyadditions:item_crystal:4>,
    <storagedrawers:upgrade_status> : <minecraft:redstone_torch>,
    <storagedrawers:upgrade_status:1> : <minecraft:comparator>,
    <storagedrawers:upgrade_void> : <actuallyadditions:item_crystal_empowered:3>,
    <storagedrawers:upgrade_conversion> : <actuallyadditions:item_crystal:1>,
    <storagedrawers:upgrade_redstone> : <actuallyadditions:item_crystal>,
};

for item, template in mapScientific {
    recipes.remove(item);
    calc_scientific(item, <storagedrawers:upgrade_template>, template);
}

recipes.remove(<storagedrawers:upgrade_redstone:1>);
calc_scientific(<storagedrawers:upgrade_redstone:1>, <storagedrawers:upgrade_redstone>, <minecraft:redstone_torch>);

recipes.remove(<storagedrawers:upgrade_redstone:2>);
calc_scientific(<storagedrawers:upgrade_redstone:2>, <storagedrawers:upgrade_redstone>, <minecraft:redstone>);

recipes.remove(<storagedrawers:controller>);
SliceNSplice.addRecipe(<storagedrawers:controller>,[
    <contenttweaker:storage_module>,<enderio:item_material:42>,<contenttweaker:storage_module>,
    <enderio:item_data_conduit>,<storagedrawers:controllerslave>,<enderio:item_data_conduit>
],10000);

var crate as IItemStack = <abyssalcraft:crate>;

var recipeMapShaped as IIngredient[][][][int][IItemStack] = {
    <storagedrawers:customdrawers> : {
        1 : [
            [
                [<bibliocraft:framingboard>,<bibliocraft:framingsheet>,<bibliocraft:framingboard>],
                [<bibliocraft:framingsheet>,crate,<bibliocraft:framingsheet>],
                [<bibliocraft:framingboard>,<bibliocraft:framingsheet>,<bibliocraft:framingboard>]
            ]
        ]
    },
    <storagedrawers:customdrawers:1> : {
        2 : [
            [
                [<bibliocraft:framingboard>,crate,<bibliocraft:framingboard>],
                [<bibliocraft:framingboard>,<bibliocraft:framingsheet>,<bibliocraft:framingboard>],
                [<bibliocraft:framingboard>,crate,<bibliocraft:framingboard>]
            ]
        ]
    },
    <storagedrawers:customdrawers:2> : {
        4 : [
            [
                [crate,<bibliocraft:framingboard>,crate],
                [<bibliocraft:framingboard>,<bibliocraft:framingsheet>,<bibliocraft:framingboard>],
                [crate,<bibliocraft:framingboard>,crate]
            ]
        ]
    },
    <storagedrawers:customdrawers:3> : {
        2 : [
            [
                [<bibliocraft:framingboard>,crate,<bibliocraft:framingboard>],
                [<bibliocraft:framingboard>,<bibliocraft:framingboard>,<bibliocraft:framingboard>],
                [<bibliocraft:framingboard>,crate,<bibliocraft:framingboard>]
            ]
        ]
    },
    <storagedrawers:customdrawers:4> : {
        4 : [
            [
                [crate,<bibliocraft:framingboard>,crate],
                [<bibliocraft:framingboard>,<bibliocraft:framingboard>,<bibliocraft:framingboard>],
                [crate,<bibliocraft:framingboard>,crate]
            ]
        ]
    },
    <storagedrawers:customtrim> : {
        1 : [
            [
                [<bibliocraft:framingboard>,<bibliocraft:framingsheet>,<bibliocraft:framingboard>],
                [<bibliocraft:framingsheet>,<bibliocraft:framingboard>,<bibliocraft:framingsheet>],
                [<bibliocraft:framingboard>,<bibliocraft:framingsheet>,<bibliocraft:framingboard>]
            ]
        ]
    },
    <storagedrawers:framingtable> : {
        1 : [
            [
                [<bibliocraft:framingsheet>,<bibliocraft:framingsheet>,<bibliocraft:framingsheet>],
                [<bibliocraft:framingboard>,<bibliocraft:furniturepaneler:6>,<bibliocraft:framingboard>]
            ]
        ]
    },
    <storagedrawers:upgrade_template> : {
        1 : [
            [
                [<bibliocraft:framingboard>,<bibliocraft:framingsheet>,<bibliocraft:framingboard>],
                [<bibliocraft:framingsheet>,<enderio:item_dark_steel_upgrade>,<bibliocraft:framingsheet>],
                [<bibliocraft:framingboard>,<bibliocraft:framingsheet>,<bibliocraft:framingboard>]
            ]
        ]
    },
    <storagedrawers:controllerslave> : {
        1 : [
            [
                [<contenttweaker:stone_board>,<ore:plateInvar>,<contenttweaker:stone_board>],
                [<ore:plateInvar>,<storagedrawers:customtrim>,<ore:plateInvar>],
                [<contenttweaker:stone_board>,<ore:plateInvar>,<contenttweaker:stone_board>]
            ]
        ]
    },
    <storagedrawers:compdrawers> : {
        1 : [
            [
                [<contenttweaker:stone_board>,<contenttweaker:storage_module>,<contenttweaker:stone_board>],
                [<ore:plateInvar>,<thermalexpansion:device:10>,<ore:plateInvar>],
                [<contenttweaker:stone_board>,<contenttweaker:electric_motor>,<contenttweaker:stone_board>]
            ]
        ]
    },
};

for key, value in recipeMapShaped {
	var index as int = 0;    
    recipes.remove(key);
    for amount, entry in value {
        for recipe in entry {
            var name as string = "ct_"+toString(key)+"_"+index;
            recipes.addShaped(name, key * amount, recipe);
            index += 1;
        }
    }
}

