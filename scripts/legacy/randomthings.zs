#packmode legacy

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

import mods.bloodmagic.BloodAltar;

BloodAltar.addRecipe(<randomthings:rezstone>,<extrautils2:compressedcobblestone:7>,5,1000000,2000,2000);

recipes.remove(<randomthings:imbuingstation>);
recipes.addShaped(<randomthings:imbuingstation>, [
    [null,<botania:rune>,null],
    [<botania:overgrowthseed>,<botania:avatar>,<botania:overgrowthseed>],
    [<botania:livingrock>,<embers:ancient_motive_core>,<botania:livingrock>]
]);

recipes.remove(<randomthings:timeinabottle>);
recipes.addShaped(<randomthings:timeinabottle>, [
    [<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>],
    [<ore:gemDiamond>,<projecte:item.pe_time_watch>,<ore:gemDiamond>],
    [<ore:gemLapis>,<minecraft:glass_bottle>,<ore:gemLapis>]
]);

recipes.remove(<randomthings:spectrecharger:0>);
recipes.remove(<randomthings:spectrecharger:0>, [
    [<randomthings:ingredient:12>,<fluxnetworks:fluxcore>,<randomthings:ingredient:12>],
    [<fluxnetworks:fluxcore>,<randomthings:ingredient:3>,<fluxnetworks:fluxcore>],
    [<randomthings:ingredient:12>,<fluxnetworks:fluxcore>,<randomthings:ingredient:12>]
]);

recipes.remove(<randomthings:spectrecoil_normal>);
recipes.addShaped(<randomthings:spectrecoil_normal>, [
    [<contenttweaker:reinforced_obsidian_ingot>,<fluxnetworks:fluxcore>,<contenttweaker:reinforced_obsidian_ingot>],
    [<fluxnetworks:fluxcore>,<randomthings:ingredient:3>,<fluxnetworks:fluxcore>],
    [<contenttweaker:reinforced_obsidian_ingot>,<fluxnetworks:fluxcore>,<contenttweaker:reinforced_obsidian_ingot>]
]);

recipes.remove(<randomthings:spectreenergyinjector>);
recipes.addShaped(<randomthings:spectreenergyinjector>, [
    [<randomthings:ingredient:3>,<fluxnetworks:fluxcore>,<randomthings:ingredient:3>],
    [<fluxnetworks:fluxcore>,<minecraft:beacon>,<fluxnetworks:fluxcore>],
    [<randomthings:ingredient:3>,<fluxnetworks:fluxcore>,<randomthings:ingredient:3>]
]);
