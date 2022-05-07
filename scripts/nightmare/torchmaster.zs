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
import mods.inworldcrafting.FireCrafting;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_atomic;

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <torchmaster:terrain_lighter> : [
        [
            [<actuallyadditions:block_tiny_torch>,<minecraft:torch>,<actuallyadditions:block_tiny_torch>],
            [<contenttweaker:runestone>,<contenttweaker:crystal_prism>,<contenttweaker:runestone>],
            [<contenttweaker:runic_gear>,<actuallyadditions:block_misc:9>,<contenttweaker:runic_gear>]
        ]
    ],
    <torchmaster:dread_lamp> : [
        [
            [<contenttweaker:reinforced_obsidian_ingot>,<extrautils2:ingredients:5>,<contenttweaker:reinforced_obsidian_ingot>],
            [<extrautils2:decorativeglass:4>,<embers:glimmer_shard>,<extrautils2:decorativeglass:4>],
            [<contenttweaker:reinforced_obsidian_ingot>,<embers:eldritch_insignia>,<contenttweaker:reinforced_obsidian_ingot>]
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

recipes.remove(<torchmaster:frozen_pearl>);
Transposer.addFillRecipe(<torchmaster:frozen_pearl>, <botania:manaresource:1>, <liquid:cryotheum> * 250, 4000);

recipes.remove(<torchmaster:feral_flare_lantern>);
calc_atomic(<torchmaster:feral_flare_lantern>, <astralsorcery:blockworldilluminator>, <immersiveengineering:metal_decoration2:4>, <randomthings:spectreilluminator>);

recipes.remove(<torchmaster:mega_torch>);
FireCrafting.addRecipe(<torchmaster:mega_torch>, <torchmaster:mega_torch:1>, 200);
Altar.addAttunementAltarRecipe("mega_torch", <torchmaster:mega_torch:1>, 500, 800, [
    <evilcraft:burning_gem_stone>,
    <contenttweaker:flawless_fire_block>,
    <evilcraft:burning_gem_stone>,
    <contenttweaker:alfsteel_ingot>,
    <botanicadds:elvenwood_log>,
    <contenttweaker:alfsteel_ingot>,
    <botanicadds:elvenwood_log>,
    <forestry:impregnated_casing>,
    <botanicadds:elvenwood_log>,
    <botania:rune:1>,
    <botania:rune:1>,
    <botania:rune:1>,
    <botania:rune:1>,
]);
