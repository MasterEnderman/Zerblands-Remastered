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

import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;
import scripts.functions.calc_atomic;

var mapBasic as IIngredient[][IItemStack] = {
    <conarm:travel_belt_base> : [<embers:ember_belt>, <minecraft:rabbit_hide>],
    <conarm:travel_goggles_base> : [<embers:ashen_cloak_head>, <minecraft:rabbit_hide>],
    <conarm:travel_cloak> : [<embers:ashen_cloak_chest>, <minecraft:rabbit_hide>],
    <conarm:travel_sack> : [<toolbelt:pouch>, <minecraft:rabbit_hide>],
    <conarm:gauntlet_mat> : [<embers:ignition_cannon>, <ore:blockIron>],
};

for item, recipe in mapBasic {
    var one as IIngredient = recipe[0];
    var two as IIngredient = recipe[1];

    recipes.remove(item);
    calc_basic(item, one, two);
}

var mapAtomic as IIngredient[][IItemStack] = {
    <conarm:resist_mat> : [<tconstruct:cast>,<contenttweaker:reinforced_obsidian_ingot>,<botania:rune:4>],
    <conarm:resist_mat_fire> : [<tconstruct:cast>,<contenttweaker:reinforced_obsidian_ingot>,<botania:rune:5>],
    <conarm:resist_mat_proj> : [<tconstruct:cast>,<contenttweaker:reinforced_obsidian_ingot>,<botania:rune:7>],
    <conarm:resist_mat_blast> : [<tconstruct:cast>,<contenttweaker:reinforced_obsidian_ingot>,<botania:rune:6>],
    <conarm:travel_belt> : [<conarm:travel_belt_base>,<toolbelt:pouch>,<toolbelt:pouch>],
    <conarm:travel_potion> : [<conarm:travel_belt_base>,<minecraft:brewing_stand>,<randomthings:imbue:2>],
    <conarm:travel_goggles> : [<conarm:travel_goggles_base>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>],
    <conarm:travel_night> : [<conarm:travel_goggles_base>,<rftools:nightvision_module>,<minecraft:golden_carrot>],
    <conarm:travel_soul> : [<conarm:travel_goggles_base>,<minecraft:ghast_tear>,<randomthings:spectreilluminator>],
    <conarm:travel_sneak> : [<conarm:travel_cloak>,<botania:invisibilitycloak>,<conarm:invisible_ink>],
    <conarm:travel_slowfall> : [<conarm:travel_cloak>,<rftools:featherfallingplus_module>,<xreliquary:angelic_feather>],
};

for item, recipe in mapAtomic {
    var one as IIngredient = recipe[0];
    var two as IIngredient = recipe[1];
    var three as IIngredient = recipe[2];

    recipes.remove(item);
    calc_atomic(item, one, two, three);
}

recipes.remove(<conarm:gauntlet_mat_speed>);
Transposer.addFillRecipe(<conarm:gauntlet_mat_speed>, <conarm:gauntlet_mat>, <liquid:redstone> * 10000, 20000);

recipes.remove(<conarm:gauntlet_mat_attack>);
Transposer.addFillRecipe(<conarm:gauntlet_mat_attack>, <conarm:gauntlet_mat>, <liquid:glowstone> * 10000, 20000);

recipes.remove(<conarm:gauntlet_mat_reach>);
Transposer.addFillRecipe(<conarm:gauntlet_mat_reach>, <conarm:gauntlet_mat>, <liquid:ender> * 10000, 20000);

recipes.remove(<conarm:frosty_soles>);
Transposer.addFillRecipe(<conarm:frosty_soles>, <tconstruct:slime_boots:0>, <liquid:ice> * 10000, 20000);
Transposer.addFillRecipe(<conarm:frosty_soles>, <tconstruct:slime_boots:1>, <liquid:ice> * 10000, 20000);
Transposer.addFillRecipe(<conarm:frosty_soles>, <tconstruct:slime_boots:2>, <liquid:ice> * 10000, 20000);
Transposer.addFillRecipe(<conarm:frosty_soles>, <tconstruct:slime_boots:3>, <liquid:ice> * 10000, 20000);
Transposer.addFillRecipe(<conarm:frosty_soles>, <tconstruct:slime_boots:4>, <liquid:ice> * 10000, 20000);
