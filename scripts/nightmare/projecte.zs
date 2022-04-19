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
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;

recipes.remove(<projecte:condenser_mk1>);
calc_basic(<projecte:condenser_mk1>,<projecte:alchemical_chest>,<projecte:transmutation_table>);

Transposer.addFillRecipe(<projecte:item.pe_fuel>, <contenttweaker:controlled_fuel>,  <liquid:alchemical_redstone> * 1296, 2000);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <projecte:item.pe_klein_star> : [
        [
            [<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>],
            [<projecte:item.pe_fuel:2>,<ore:gearWyvernMetal>,<projecte:item.pe_fuel:2>],
            [<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>]
        ]
    ],
    <projecte:item.pe_klein_star:1> : [
        [
            [<projecte:item.pe_klein_star>,<projecte:item.pe_klein_star>,<projecte:item.pe_klein_star>],
            [<projecte:item.pe_klein_star>,<ore:gearWyvernMetal>,<projecte:item.pe_klein_star>],
            [<projecte:item.pe_klein_star>,<projecte:item.pe_klein_star>,<projecte:item.pe_klein_star>]
        ]
    ],
    <projecte:item.pe_klein_star:2> : [
        [
            [<projecte:item.pe_klein_star:1>,<projecte:item.pe_klein_star:1>,<projecte:item.pe_klein_star:1>],
            [<projecte:item.pe_klein_star:1>,<ore:gearDraconicMetal>,<projecte:item.pe_klein_star:1>],
            [<projecte:item.pe_klein_star:1>,<projecte:item.pe_klein_star:1>,<projecte:item.pe_klein_star:1>]
        ]
    ],
    <projecte:item.pe_klein_star:3> : [
        [
            [<projecte:item.pe_klein_star:2>,<projecte:item.pe_klein_star:2>,<projecte:item.pe_klein_star:2>],
            [<projecte:item.pe_klein_star:2>,<ore:gearDraconicMetal>,<projecte:item.pe_klein_star:2>],
            [<projecte:item.pe_klein_star:2>,<projecte:item.pe_klein_star:2>,<projecte:item.pe_klein_star:2>]
        ]
    ],
    <projecte:item.pe_klein_star:4> : [
        [
            [<projecte:item.pe_klein_star:3>,<projecte:item.pe_klein_star:3>,<projecte:item.pe_klein_star:3>],
            [<projecte:item.pe_klein_star:3>,<ore:gearChaoticMetal>,<projecte:item.pe_klein_star:3>],
            [<projecte:item.pe_klein_star:3>,<projecte:item.pe_klein_star:3>,<projecte:item.pe_klein_star:3>]
        ]
    ],
    <projecte:item.pe_klein_star:5> : [
        [
            [<projecte:item.pe_klein_star:4>,<projecte:item.pe_klein_star:4>,<projecte:item.pe_klein_star:4>],
            [<projecte:item.pe_klein_star:4>,<ore:gearChaoticMetal>,<projecte:item.pe_klein_star:4>],
            [<projecte:item.pe_klein_star:4>,<projecte:item.pe_klein_star:4>,<projecte:item.pe_klein_star:4>]
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

recipes.remove(<projecte:item.pe_philosophers_stone>);
Altar.addTraitAltarRecipe("philo_stone_nightmare",<projecte:item.pe_philosophers_stone>, 4500, 12000, [
    <bloodmagic:decorative_brick:2>,
    <bloodmagic:decorative_brick:2>,
    <bloodmagic:decorative_brick:2>,
    <bloodmagic:decorative_brick:2>,
    <randomthings:rezstone>,
    <bloodmagic:decorative_brick:2>,
    <bloodmagic:decorative_brick:2>,
    <bloodmagic:decorative_brick:2>,
    <bloodmagic:decorative_brick:2>,
    <avaritiatweaks:gaia_block>,
    <avaritiatweaks:gaia_block>,
    <avaritiatweaks:gaia_block>,
    <avaritiatweaks:gaia_block>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <tconevo:metal_block:2>,
    <abyssalcraft:abyssalnomicon>,
    <bloodmagic:teleposition_focus:3>,
    <bloodmagic:teleposition_focus:3>,
    <xreliquary:alkahestry_tome:1001>,
    // Outer Items
    <abyssalcraft:statue>,
    <botania:rune:9>,
    <abyssalcraft:statue:1>,
    <botania:rune:10>,
    <abyssalcraft:statue:2>,
    <botania:rune:11>,
    <abyssalcraft:statue:3>,
    <botania:rune:12>,
    <abyssalcraft:statue:4>,
    <botania:rune:13>,
    <abyssalcraft:statue:5>,
    <botania:rune:14>,
    <abyssalcraft:statue:6>,
    <botania:rune:15>
], "astralsorcery.constellation.mineralis");
