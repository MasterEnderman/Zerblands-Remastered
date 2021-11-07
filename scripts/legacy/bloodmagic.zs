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
import mods.bloodmagic.TartaricForge;
import mods.botania.RuneAltar;
import mods.jei.JEI;

JEI.addItem(<bloodmagic:decorative_brick:2>);
JEI.addItem(<bloodmagic:decorative_brick:3>);

RuneAltar.addRecipe(<bloodmagic:blood_shard:1>, [
    <botanicadds:rune_energy>,
    <botanicadds:rune_tp>,
    <botania:rune:15>,
    <botania:rune:14>,
    <botania:rune:13>,
    <botania:rune:12>,
    <botania:rune:11>,
    <botania:rune:10>,
    <botania:rune:9>,
    <bloodarsenal:gem>,
    <bloodarsenal:gem:1>,
    <bloodarsenal:gem:2>,
    <bloodmagic:blood_shard>,
    <bloodmagic:blood_shard>,
    <bloodmagic:blood_shard>,
    <bloodmagic:blood_shard>
], 1000000);

recipes.addShaped(<bloodmagic:decorative_brick:2>, [
    [<bloodmagic:demon_crystal:1>,<actuallyadditions:block_crystal_empowered:1>,<bloodmagic:demon_crystal:3>],
    [<bloodmagic:demon_crystal>,<draconicevolution:energy_crystal:8>,<bloodmagic:demon_crystal>],
    [<bloodmagic:demon_crystal:2>,<actuallyadditions:block_crystal_empowered:1>,<bloodmagic:demon_crystal:4>]
]);

recipes.addShaped(<bloodmagic:decorative_brick:3> * 4, [
    [<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>],
    [<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>]
]);

recipes.remove(<bloodmagic:sacrificial_dagger>);
recipes.addShaped(<bloodmagic:sacrificial_dagger>,[
    [<bloodarsenal:base_item>,<bloodarsenal:base_item>,<bloodarsenal:base_item>],
    [null,<ore:ingotGold>,<bloodarsenal:base_item>],
    [<ore:ingotIron>,null,<bloodarsenal:base_item>]
]);

recipes.remove(<bloodmagic:soul_snare>);
recipes.addShaped(<bloodmagic:soul_snare>, [
    [<evilcraft:golden_string>,<evilcraft:dark_spike>,<evilcraft:golden_string>],
    [<evilcraft:dark_spike>,<evilcraft:dark_power_gem>,<evilcraft:dark_spike>],
    [<evilcraft:golden_string>,<evilcraft:dark_spike>,<evilcraft:golden_string>]
]);

recipes.remove(<bloodmagic:altar>);
recipes.addShaped(<bloodmagic:altar>, [
    [null,<evilcraft:bowl_of_promises:5>,null],
    [<evilcraft:sanguinary_pedestal:1>,<botania:runealtar>,<evilcraft:sanguinary_pedestal:1>],
    [<evilcraft:bloody_cobblestone>,<bloodmagic:monster_soul>,<evilcraft:bloody_cobblestone>]
]);

recipes.remove(<bloodmagic:soul_forge>);
recipes.addShaped(<bloodmagic:soul_forge>, [
    [<embers:aspectus_silver>,<randomthings:imbue>,<embers:aspectus_silver>],
    [<embers:ashen_stone>,<evilcraft:burning_gem_stone>,<embers:ashen_stone>],
    [<embers:ashen_stone>,<evilcraft:spirit_furnace>,<embers:ashen_stone>]
]);

BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <evilcraft:promise:2>, 0, 2000, 2, 2);

BloodAltar.removeRecipe(<minecraft:redstone_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <evilcraft:piercing_vengeance_focus>, 1, 5000, 5, 5);

BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <abyssalcraft:eoa>, 2, 25000, 20, 20);

BloodAltar.removeRecipe(<bloodmagic:blood_shard>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}), <bloodmagic:blood_shard:1>, 3, 40000, 30, 50);

BloodAltar.removeRecipe(<minecraft:nether_star>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), <avaritiatweaks:gaia_block>, 4, 80000, 100, 50);

BloodAltar.removeRecipe(<minecraft:stone>);
BloodAltar.addRecipe(<bloodmagic:slate>, <abyssalcraft:stone:7>, 0, 1000, 2, 2);

TartaricForge.removeRecipe([<minecraft:gunpowder>,<minecraft:redstone>,<minecraft:dye:15>,<minecraft:coal>]);
TartaricForge.addRecipe(<bloodmagic:arcane_ashes>,[
	<enderzoo:witheringdust>,<embers:dust_ash>,<embers:dust_metallurgic>,<scalinghealth:heartdust>
], 16, 8);

TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:dye:4>,<minecraft:gold_ingot>,<minecraft:glass>]);
TartaricForge.addRecipe(<bloodmagic:soul_gem>,[
	<embers:dust_metallurgic>,<abyssalcraft:lifecrystal>,<botanicadds:gaiasteel_ingot>,<appliedenergistics2:quartz_vibrant_glass>
], 8, 8);

TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:glowstone_dust>,<minecraft:gold_nugget>,<minecraft:gunpowder>]);
TartaricForge.addRecipe(<bloodmagic:component:8>,[
	<botania:spellcloth>,<woot:soulsanddust>,<embers:ember_cluster>,<bloodmagic:slate:1>
], 400, 50);
