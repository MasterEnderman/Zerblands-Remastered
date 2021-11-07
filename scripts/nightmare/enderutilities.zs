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

import mods.enderio.AlloySmelter;
import mods.extrautils2.Resonator;

import scripts.functions.calc_atomic;

recipes.remove(<enderutilities:enderpart>);
AlloySmelter.addRecipe(<enderutilities:enderpart> * 2, [<contenttweaker:ender_ingot>,<contenttweaker:reinforcediron_ingot>,<contenttweaker:enrichedgold_ingot>], 15000);

recipes.remove(<enderutilities:enderpart:1>);
AlloySmelter.addRecipe(<enderutilities:enderpart:1> * 2, [<enderutilities:enderpart>,<ore:ingotEnderium>,<quantumflux:craftingpiece:3>], 15000);

recipes.remove(<enderutilities:enderpart:2>);
AlloySmelter.addRecipe(<enderutilities:enderpart:2> * 2, [<enderutilities:enderpart:1>,<ore:ingotEndSteel>,<ic2:itemmisc:59>], 15000);

recipes.remove(<enderutilities:enderbucket>);
calc_atomic(<enderutilities:enderbucket>, <randomthings:reinforcedenderbucket>, <enderutilities:enderpart:10>, <enderutilities:enderpart>);

Resonator.add(<enderutilities:enderpart:15>, <enderutilities:enderpart:10>, 12800, false);
Resonator.add(<enderutilities:enderpart:16>, <enderutilities:enderpart:11>, 25600, false);
Resonator.add(<enderutilities:enderpart:17>, <enderutilities:enderpart:12>, 51200, false);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <enderutilities:enderpart:10> : [
        [
            [<contenttweaker:reinforced_obsidian_ingot>,<enderutilities:enderpart>,<contenttweaker:reinforced_obsidian_ingot>],
            [<enderutilities:enderpart>,<extrautils2:ingredients:2>,<enderutilities:enderpart>],
            [<contenttweaker:reinforced_obsidian_ingot>,<enderutilities:enderpart>,<contenttweaker:reinforced_obsidian_ingot>]
        ]
    ],
    <enderutilities:enderpart:11> : [
        [
            [<contenttweaker:reinforced_obsidian_ingot>,<enderutilities:enderpart:1>,<contenttweaker:reinforced_obsidian_ingot>],
            [<enderutilities:enderpart:1>,<enderutilities:enderpart:10>,<enderutilities:enderpart:1>],
            [<contenttweaker:reinforced_obsidian_ingot>,<enderutilities:enderpart:1>,<contenttweaker:reinforced_obsidian_ingot>]
        ]
    ],
    <enderutilities:enderpart:12> : [
        [
            [<contenttweaker:reinforced_obsidian_ingot>,<enderutilities:enderpart:2>,<contenttweaker:reinforced_obsidian_ingot>],
            [<enderutilities:enderpart:2>,<enderutilities:enderpart:11>,<enderutilities:enderpart:2>],
            [<contenttweaker:reinforced_obsidian_ingot>,<enderutilities:enderpart:2>,<contenttweaker:reinforced_obsidian_ingot>]
        ]
    ],
    <enderutilities:enderpart:20> : [
        [
            [null,null,<evilcraft:dark_stick>],
            [null,<enderutilities:enderpart>,null],
            [<evilcraft:dark_stick>,null,null]
        ]
    ],
    <enderutilities:enderpart:21> : [
        [
            [<contenttweaker:cordage_fiber>,<forestry:crafting_material:3>,<contenttweaker:cordage_fiber>],
            [<forestry:crafting_material:1>,<enderutilities:enderpart:10>,<forestry:crafting_material:1>],
            [<contenttweaker:cordage_fiber>,<forestry:crafting_material:3>,<contenttweaker:cordage_fiber>]
        ]
    ],
    <enderutilities:enderpart:40> : [
        [
            [<enderutilities:enderpart:2>,<minecraft:end_crystal>,<enderutilities:enderpart:2>],
            [<minecraft:end_crystal>,<contenttweaker:ender_star>,<minecraft:end_crystal>],
            [<enderutilities:enderpart:2>,<minecraft:end_crystal>,<enderutilities:enderpart:2>]
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
