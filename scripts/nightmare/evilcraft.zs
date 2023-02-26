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

import mods.abyssalcraft.InfusionRitual;
import mods.actuallyadditions.Empowerer;
import mods.astralsorcery.Altar;
import mods.astralsorcery.Lightwell;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.AlchemyArray;
import mods.evilcraft.BloodInfuser;
import mods.forestry.ThermionicFabricator;
import mods.ic2.Macerator;
import mods.jei.JEI;
import mods.tconstruct.Casting;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;
import scripts.functions.calc_scientific;
import scripts.functions.calc_atomic;

JEI.removeAndHide(<evilcraft:entangled_chalice>);

// BloodInfuser.removeRecipesWithOutput(<evilcraft:blood_waxed_coal>);
// BloodInfuser.addRecipe(<contenttweaker:purified_coal>, <liquid:evilcraftblood> * 375, 1, <evilcraft:blood_waxed_coal>, 100, 2);

recipes.remove(<evilcraft:exalted_crafter>);
calc_basic(<evilcraft:exalted_crafter>, <actuallyadditions:item_crafter_on_a_stick>, <minecraft:ender_chest>);

recipes.remove(<evilcraft:exalted_crafter:1>);
calc_basic(<evilcraft:exalted_crafter:1>, <actuallyadditions:item_crafter_on_a_stick>, <minecraft:chest>);

recipes.remove(<evilcraft:effortless_ring>);
calc_atomic(<evilcraft:effortless_ring>, <evilcraft:vengeance_ring>, <evilcraft:promise:4>, <evilcraft:promise:3>);

recipes.remove(<evilcraft:vengeance_ring>);
calc_scientific(<evilcraft:vengeance_ring>,<embers:ember_ring>,<evilcraft:bowl_of_promises>);

<ore:stickWood>.remove(<evilcraft:dark_stick>);
recipes.remove(<evilcraft:dark_stick>);
calc_basic(<evilcraft:dark_stick>, <ore:stickWood>, <ore:gemDarkCrushed>);

recipes.remove(<evilcraft:sanguinary_pedestal>);
calc_basic(<evilcraft:sanguinary_pedestal>,<xreliquary:pedestal>,<evilcraft:dark_block>);

Casting.addTableRecipe(<evilcraft:dark_power_gem>, <evilcraft:dark_gem>, <liquid:evilcraftblood>, 5000, true, 20);
Casting.addTableRecipe(<evilcraft:dark_power_gem>, <evilcraft:dark_gem>, <liquid:blood>, 5000, true, 20);

Casting.addBasinRecipe(<evilcraft:hardened_blood>, null, <liquid:blood>, 1000, true, 100);

Macerator.addRecipe(<evilcraft:dark_gem_crushed>, <evilcraft:dark_gem>);

recipes.remove(<evilcraft:eternal_water_block>);
AlchemyArray.addRecipe(<evilcraft:eternal_water_block>, <bloodmagic:component>, <evilcraft:dark_block>, bloodmagicAlchemyArray["watersigil"]);

recipes.remove(<evilcraft:bucket_eternal_water>);
AlchemyArray.addRecipe(<evilcraft:bucket_eternal_water>, <bloodmagic:component>, <quantumflux:voidbucket>, bloodmagicAlchemyArray["watersigil"]);

BloodInfuser.removeRecipesWithOutput(<evilcraft:bound_blood_drop>);
AlchemyArray.addRecipe(<evilcraft:bound_blood_drop>, <bloodmagic:component:8>, <tconstruct:edible:33>, bloodmagicAlchemyArray["bindinglightningarray"]);

recipes.remove(<evilcraft:golden_string>);
Transposer.addFillRecipe(<evilcraft:golden_string>, <botania:manaresource:16>, <liquid:gold> * 144, 4096);

Transposer.addFillRecipe(<evilcraft:weather_container:1>, <evilcraft:weather_container>,  <liquid:liquid_sunshine> * 2000, 10000);
Transposer.addFillRecipe(<evilcraft:weather_container:2>, <evilcraft:weather_container>,  <liquid:cloud_seed> * 500, 2500);
Transposer.addFillRecipe(<evilcraft:weather_container:3>, <evilcraft:weather_container>,  <liquid:cloud_seed_concentrated> * 1000, 5000);

recipes.remove(<evilcraft:sanguinary_pedestal:1>);
BloodAltar.addRecipe(<evilcraft:sanguinary_pedestal:1>, <evilcraft:sanguinary_pedestal>, 2, 10000,50,50);

Empowerer.addRecipe(<evilcraft:environmental_accumulation_core>, <evilcraft:blood_orb:1>, <environmentaltech:lonsdaleite_crystal>, <minecraft:compass>, <environmentaltech:lonsdaleite_crystal>, <ic2:itemmetascanners>, 320000, 100, [0.1, 0.1, 0.1]);

recipes.remove(<evilcraft:blood_infuser>);
Altar.addDiscoveryAltarRecipe("blood_infuser", <evilcraft:blood_infuser>, 200, 200, [
    <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>,
    <astralsorcery:blockblackmarble>, <evilcraft:blood_infusion_core>, <astralsorcery:blockblackmarble>,
    <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>
]);

recipes.remove(<evilcraft:blood_chest>);
Altar.addDiscoveryAltarRecipe("blood_chest", <evilcraft:blood_chest>, 200, 200, [
    <bloodarsenal:blood_infused_wooden_planks>, <bloodarsenal:blood_infused_wooden_planks>, <bloodarsenal:blood_infused_wooden_planks>,
    <bloodarsenal:blood_infused_wooden_planks>, <evilcraft:blood_infusion_core>, <bloodarsenal:blood_infused_wooden_planks>,
    <bloodarsenal:blood_infused_wooden_planks>, <bloodarsenal:blood_infused_wooden_planks>, <bloodarsenal:blood_infused_wooden_planks>
]);

recipes.remove(<evilcraft:bowl_of_promises:1>);
Altar.addDiscoveryAltarRecipe("bowl_of_promises",<evilcraft:bowl_of_promises:1>, 200, 200, [
    null, <evilcraft:dark_power_gem>, null,
    <evilcraft:dark_power_gem>, <botania:altar>, <evilcraft:dark_power_gem>,
    null, <evilcraft:dark_power_gem>, null
]);

recipes.remove(<evilcraft:bowl_of_promises>);
Altar.addDiscoveryAltarRecipe("filled_bowl_of_promises",<evilcraft:bowl_of_promises>, 200, 200, [
    <astralsorcery:itemusabledust>, <evilcraft:dark_gem_crushed>, <astralsorcery:itemusabledust:1>,
    <evilcraft:dark_gem_crushed>, <evilcraft:bowl_of_promises:1>, <evilcraft:dark_gem_crushed>,
    <astralsorcery:itemusabledust:1>, <evilcraft:dark_gem_crushed>, <astralsorcery:itemusabledust>
]);

recipes.remove(<evilcraft:blood_extractor>);
Altar.addDiscoveryAltarRecipe("blood_extractor",<evilcraft:blood_extractor>, 200, 200, [
    <evilcraft:dark_spike>, <evilcraft:dark_spike>, <evilcraft:dark_spike>,
    <evilcraft:dark_spike>, <rftools:syringe>, <evilcraft:dark_spike>,
    <evilcraft:dark_spike>, <evilcraft:dark_power_gem>, <evilcraft:dark_spike>
]);

recipes.remove(<evilcraft:colossal_blood_chest>);
Altar.addAttunementAltarRecipe("colossal_blood_chest", <evilcraft:colossal_blood_chest>, 500, 800, [
    <evilcraft:reinforced_undead_plank>,
    <evilcraft:blood_infusion_core>,
    <evilcraft:reinforced_undead_plank>,
    <evilcraft:blood_infusion_core>,
    <enderutilities:enderpart:16>,
    <evilcraft:blood_infusion_core>,
    <evilcraft:reinforced_undead_plank>,
    <evilcraft:blood_infusion_core>,
    <evilcraft:reinforced_undead_plank>,
    <evilcraft:blood_chest>,
    <evilcraft:blood_chest>,
    <evilcraft:blood_chest>,
    <evilcraft:blood_chest>
]);

var mapBlood as float[IItemStack] = {
    <minecraft:porkchop> : 0.3,
    <minecraft:beef> : 0.3,
    <minecraft:chicken> : 0.3,
    <minecraft:rabbit> : 0.3,
    <minecraft:mutton> : 0.3,
    <harvestcraft:turkeyrawitem> : 0.3,
    <harvestcraft:venisonrawitem> : 0.3,
    <harvestcraft:duckrawitem> : 0.3,
    <minecraft:rotten_flesh> : 0.2,
    <harvestcraft:grubitem> : 0.3,
    <cannibalism:playerflesh> : 0.5,
    <cannibalism:villagerflesh> : 0.7,
    <cannibalism:witchflesh> : 0.9
};

for item, mult in mapBlood {
    Lightwell.addLiquefaction(item, <liquid:evilcraftblood>, 1, mult, 0);
}

recipes.remove(<evilcraft:promise>);
InfusionRitual.addRitual("promise_of_tenacity_i", 0, 0, 1000, false, <evilcraft:promise>, <evilcraft:promise_acceptor>, [
    <minecraft:spider_eye>,
    <astralsorcery:itemusabledust:1>,
    <contenttweaker:blood_infused_stone>,
    <astralsorcery:itemusabledust:1>,
    <ore:materialBowlOfPromises0>,
    <astralsorcery:itemusabledust:1>,
    <contenttweaker:blood_infused_stone>,
    <astralsorcery:itemusabledust:1>
]);
game.setLocalization("ac.ritual.promise_of_tenacity_i", "Promise of Tenacity I");
game.setLocalization("ac.ritual.promise_of_tenacity_i.desc", "Custom Recipe made for Nightmare Mode.");

recipes.remove(<evilcraft:promise:1>);
InfusionRitual.addRitual("promise_of_tenacity_ii", 1, 50, 2000, false, <evilcraft:promise:1>, <evilcraft:promise_acceptor:1>, [
    <minecraft:ender_eye>,
    <astralsorcery:itemusabledust:1>,
    <contenttweaker:blood_infused_stone>,
    <astralsorcery:itemusabledust:1>,
    <ore:materialBowlOfPromises1>,
    <astralsorcery:itemusabledust:1>,
    <contenttweaker:blood_infused_stone>,
    <astralsorcery:itemusabledust:1>
]);
game.setLocalization("ac.ritual.promise_of_tenacity_ii", "Promise of Tenacity II");
game.setLocalization("ac.ritual.promise_of_tenacity_ii.desc", "Custom Recipe made for Nightmare Mode.");

recipes.remove(<evilcraft:promise:2>);
InfusionRitual.addRitual("promise_of_tenacity_iii", 2, 51, 3000, false, <evilcraft:promise:2>, <evilcraft:promise_acceptor:2>, [
    <xreliquary:salamander_eye>,
    <astralsorcery:itemusabledust:1>,
    <contenttweaker:blood_infused_stone>,
    <astralsorcery:itemusabledust:1>,
    <ore:materialBowlOfPromises2>,
    <astralsorcery:itemusabledust:1>,
    <contenttweaker:blood_infused_stone>,
    <astralsorcery:itemusabledust:1>
]);
game.setLocalization("ac.ritual.promise_of_tenacity_iii", "Promise of Tenacity III");
game.setLocalization("ac.ritual.promise_of_tenacity_iii.desc", "Custom Recipe made for Nightmare Mode.");



recipes.remove(<evilcraft:promise:3>);
InfusionRitual.addRitual("promise_of_velocity", 0, 0, 1000, false, <evilcraft:promise:3>, <evilcraft:promise_acceptor>, [
    <minecraft:redstone_block>,
    <astralsorcery:itemusabledust:1>,
    <contenttweaker:blood_infused_stone>,
    <astralsorcery:itemusabledust:1>,
    <ore:materialBowlOfPromises0>,
    <astralsorcery:itemusabledust:1>,
    <contenttweaker:blood_infused_stone>,
    <astralsorcery:itemusabledust:1>
]);
game.setLocalization("ac.ritual.promise_of_velocity", "Promise of Velocity");
game.setLocalization("ac.ritual.promise_of_velocity.desc", "Custom Recipe made for Nightmare Mode.");

recipes.remove(<evilcraft:promise:4>);
InfusionRitual.addRitual("promise_of_productivity", 0, 0, 1000, false, <evilcraft:promise:4>, <evilcraft:promise_acceptor>, [
    <minecraft:lapis_block>,
    <astralsorcery:itemusabledust:1>,
    <contenttweaker:blood_infused_stone>,
    <astralsorcery:itemusabledust:1>,
    <ore:materialBowlOfPromises0>,
    <astralsorcery:itemusabledust:1>,
    <contenttweaker:blood_infused_stone>,
    <astralsorcery:itemusabledust:1>
]);
game.setLocalization("ac.ritual.promise_of_productivity", "Promise of Productivity");
game.setLocalization("ac.ritual.promise_of_productivity.desc", "Custom Recipe made for Nightmare Mode.");

recipes.remove(<evilcraft:vengeance_focus>);
InfusionRitual.addRitual("vengeance_focus", 2, 0, 5000, false, <evilcraft:vengeance_focus>, <evilcraft:vengeance_ring>, [
    <embers:focal_lens>,
    <evilcraft:dark_gem_crushed>,
    <contenttweaker:crystal_prism>,
    <evilcraft:dark_gem_crushed>,
    <botania:lens:7>,
    <evilcraft:dark_gem_crushed>,
    <contenttweaker:crystal_prism>,
    <evilcraft:dark_gem_crushed>
]);
game.setLocalization("ac.ritual.vengeance_focus", "Vengance Focus");
game.setLocalization("ac.ritual.vengeance_focus.desc", "Custom Recipe made for Nightmare Mode.");

recipes.remove(<evilcraft:piercing_vengeance_focus>);
InfusionRitual.addRitual("piercing_vengeance_focus", 3, 0, 40000, true, <evilcraft:piercing_vengeance_focus>, <evilcraft:vengeance_focus>, [
    <ic2:itemtoolmininglaser>,
    <actuallyadditions:item_more_damage_lens>,
    <minecraft:end_crystal>,
    <actuallyadditions:item_more_damage_lens>,
    <botanicadds:gaiasteel_ingot>,
    <actuallyadditions:item_more_damage_lens>,
    <minecraft:end_crystal>,
    <actuallyadditions:item_more_damage_lens>
]);
game.setLocalization("ac.ritual.piercing_vengeance_focus", "Piercing Vengance Focus");
game.setLocalization("ac.ritual.piercing_vengeance_focus.desc", "Custom Recipe made for Nightmare Mode.");

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <evilcraft:spiked_plate> : [
        [
            [<evilcraft:dark_spike>,<bloodarsenal:glass_shards>,<evilcraft:dark_spike>],
            [<extrautils2:spike_stone>,<minecraft:heavy_weighted_pressure_plate>,<extrautils2:spike_stone>]
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

recipes.remove(<forge:bucketfilled>.withTag({FluidName: "evilcraftpoison", Amount: 1000}));
Transposer.addExtractRecipe(<liquid:evilcraftpoison> * 250, <randomthings:imbue:1>, 400, <minecraft:glass_bottle> % 100);

ThermionicFabricator.addCast(<evilcraft:vengeance_essence>, [
    [null,<ore:gemDarkCrushed>,null],
    [<ore:gemDarkCrushed>,<woot:soulsanddust>,<ore:gemDarkCrushed>],
    [null,<ore:gemDarkCrushed>,null]
], <liquid: glass> * 10, <evilcraft:piercing_vengeance_focus>);
