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

import mods.jei.JEI;

import scripts.functions.calc_basic;

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
    }
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

