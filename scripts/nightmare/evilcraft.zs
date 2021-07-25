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
import mods.astralsorcery.Altar;
import mods.astralsorcery.Lightwell;
import mods.evilcraft.BloodInfuser;
import mods.ic2.Macerator;
import mods.tconstruct.Casting;

// BloodInfuser.removeRecipesWithOutput(<evilcraft:blood_waxed_coal>);
// BloodInfuser.addRecipe(<contenttweaker:purified_coal>, <liquid:evilcraftblood> * 375, 1, <evilcraft:blood_waxed_coal>, 100, 2);

Casting.addTableRecipe(<evilcraft:dark_power_gem>, <evilcraft:dark_gem>, <liquid:evilcraftblood>, 5000, true, 20);
Casting.addTableRecipe(<evilcraft:dark_power_gem>, <evilcraft:dark_gem>, <liquid:blood>, 5000, true, 20);

Casting.addBasinRecipe(<evilcraft:hardened_blood>, null, <liquid:blood>, 1000, true, 100);

Macerator.addRecipe(<evilcraft:dark_gem_crushed>, <evilcraft:dark_gem>);

recipes.remove(<evilcraft:blood_infuser>);
Altar.addDiscoveryAltarRecipe("blood_infuser", <evilcraft:blood_infuser>, 200, 200, [
    <sonarcore:stablestone_normal>, <sonarcore:stablestone_normal>, <sonarcore:stablestone_normal>,
    <sonarcore:stablestone_normal>, <evilcraft:blood_infusion_core>, <sonarcore:stablestone_normal>,
    <sonarcore:stablestone_normal>, <sonarcore:stablestone_normal>, <sonarcore:stablestone_normal>
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
};

for item, mult in mapBlood {
    Lightwell.addLiquefaction(item, <liquid:evilcraftblood>, 1, mult, 0);
}

recipes.remove(<evilcraft:promise>);
mods.abyssalcraft.InfusionRitual.addRitual("promise_of_tenacity_i", 0, -1, 1000, false, <evilcraft:promise>, <evilcraft:promise_acceptor>, [
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
