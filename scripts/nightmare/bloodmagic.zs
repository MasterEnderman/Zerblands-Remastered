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
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;
import mods.evilcraft.BloodInfuser;

BloodInfuser.addRecipe(<evilcraft:blood_orb:1>, <liquid:evilcraftblood>*10000, 1, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), 200, 0.5);

recipes.remove(<bloodmagic:blood_rune>);
recipes.addShaped(<bloodmagic:blood_rune>, [
    [<abyssalcraft:stone:7>,<bloodmagic:slate>,<abyssalcraft:stone:7>],
    [<bloodmagic:slate>,<evilcraft:blood_orb:1>,<bloodmagic:slate>],
    [<abyssalcraft:stone:7>,<bloodmagic:slate>,<abyssalcraft:stone:7>]
]);

recipes.remove(<bloodmagic:sacrificial_dagger>);
recipes.addShaped(<bloodmagic:sacrificial_dagger>, [
    [<evilcraft:garmonbozia>,<evilcraft:garmonbozia>,<xreliquary:magicbane>],
    [<abyssalcraft:skin:2>,<evilcraft:vein_sword>,<evilcraft:garmonbozia>],
    [<abyssalcraft:lifecrystal>,<abyssalcraft:skin:2>,<evilcraft:garmonbozia>]
]);

recipes.remove(<bloodmagic:alchemy_table>);
Altar.addDiscoveryAltarRecipe("alchemy_table", <bloodmagic:alchemy_table>, 200, 200, [
	<minecraft:carpet:14>,<minecraft:carpet:14>,<minecraft:carpet:14>,
	<xreliquary:mob_ingredient:7>,<appliedenergistics2:smooth_sky_stone_block>,<xreliquary:mob_ingredient:7>,
	<appliedenergistics2:smooth_sky_stone_block>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}),<appliedenergistics2:smooth_sky_stone_block>
]);

recipes.remove(<bloodmagic:altar>);
Altar.addAttunmentAltarRecipe("bloodmagic_altar", <bloodmagic:altar>, 1000, 800, [
	<abyssalcraft:dreadiumingot>,
	<bloodmagic:monster_soul>,
	<abyssalcraft:dreadiumingot>,
	<botania:conjurationcatalyst>,
	<abyssalcraft:tieredsacrificialaltar:2>,
	<botania:conjurationcatalyst>,
	<abyssalcraft:dreadiumingot>,
	<botania:rune:13>,
	<abyssalcraft:dreadiumingot>,
	<astralsorcery:itemcraftingcomponent:4>,
	<astralsorcery:itemcraftingcomponent:4>,
	<evilcraft:garmonbozia>,
	<evilcraft:garmonbozia>
]);

BloodAltar.removeRecipe(<minecraft:stone>);
BloodAltar.addRecipe(<bloodmagic:slate>, <contenttweaker:carbon_plate>, 0, 1000,5,5);

BloodAltar.removeRecipe(<minecraft:diamond>);

recipes.remove(<bloodmagic:soul_forge>);
Altar.addConstellationAltarRecipe("soul_forge", <bloodmagic:soul_forge>, 800, 200, [
    <enderio:item_alloy_ingot:6>,
    <xreliquary:infernal_chalice>,
    <enderio:item_alloy_ingot:6>,
    <blood_dynamo:ingredient:2>,
    <enderio:item_alloy_ball:8>,
    <blood_dynamo:ingredient:2>,
    <enderio:item_alloy_ingot:6>,
    <blood_dynamo:ingredient:2>,
    <enderio:item_alloy_ingot:6>,
    <psi:material:1>,
    <psi:material:1>,
    <blood_dynamo:ingredient:2>,
    <blood_dynamo:ingredient:2>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>,
    <environmentaltech:lonsdaleite_crystal>,
    <environmentaltech:lonsdaleite_crystal>,
    <environmentaltech:lonsdaleite_crystal>,
    <environmentaltech:lonsdaleite_crystal>
]);

recipes.remove(<bloodmagic:incense_altar>);
Altar.addConstellationAltarRecipe("incense_altar", <bloodmagic:incense_altar>, 800, 200, [
    <xreliquary:mob_ingredient:7>,
    <evilcraft:bowl_of_promises:5>,
    <xreliquary:mob_ingredient:7>,
    <xreliquary:mercy_cross>,
    <blood_dynamo:ingredient:2>,
    <xreliquary:mercy_cross>,
    <botanicadds:gaiasteel_ingot>,
    <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}),
    <botanicadds:gaiasteel_ingot>,
    <ore:ingotLumium>,
    <ore:ingotLumium>,
    <ore:ingotLumium>,
    <ore:ingotLumium>,
    <bloodmagic:component:1>,
    <bloodmagic:component:1>,
    <blood_dynamo:ingredient:2>,
    <blood_dynamo:ingredient:2>,
    <tconstruct:ingots:5>,
    <tconstruct:ingots:5>,
    <tconstruct:ingots:5>,
    <tconstruct:ingots:5>
]);

recipes.remove(<bloodmagic:blood_shard:1>);
Altar.addConstellationAltarRecipe("blood_shard", <bloodmagic:blood_shard:1>, 1000, 80, [
    <bloodmagic:blood_shard>,
    <bloodmagic:blood_shard>,
    <bloodmagic:blood_shard>,
    <bloodmagic:blood_shard>,
    <astralsorcery:blockcelestialcollectorcrystal>,
    <bloodmagic:blood_shard>,
    <bloodmagic:blood_shard>,
    <bloodmagic:blood_shard>,
    <bloodmagic:blood_shard>,
    <environmentaltech:pladium_crystal>,
    <environmentaltech:pladium_crystal>,
    <environmentaltech:pladium_crystal>,
    <environmentaltech:pladium_crystal>,
    <environmentaltech:ionite_crystal>,
    <environmentaltech:ionite_crystal>,
    <environmentaltech:ionite_crystal>,
    <environmentaltech:ionite_crystal>,
    <environmentaltech:ionite_crystal>,
    <environmentaltech:ionite_crystal>,
    <environmentaltech:ionite_crystal>,
    <environmentaltech:ionite_crystal>
]);

recipes.remove(<bloodmagic:decorative_brick:2>);
Altar.addConstellationAltarRecipe("crystal_block", <bloodmagic:decorative_brick:2>, 2000, 100, [
    <enderio:item_material:18>,
    <bloodmagic:blood_shard:1>,
    <enderio:item_material:18>,
    <bloodmagic:blood_shard:1>,
    <contenttweaker:ender_star>,
    <bloodmagic:blood_shard:1>,
    <enderio:item_material:18>,
    <bloodmagic:blood_shard:1>,
    <enderio:item_material:18>,
    <bloodmagic:demon_extras:14>,
    <bloodmagic:demon_extras:12>,
    <bloodmagic:demon_extras:11>,
    <bloodmagic:demon_extras:13>,
    <environmentaltech:kyronite_crystal>,
    <environmentaltech:kyronite_crystal>,
    <environmentaltech:kyronite_crystal>,
    <environmentaltech:kyronite_crystal>,
    <environmentaltech:kyronite_crystal>,
    <environmentaltech:kyronite_crystal>,
    <environmentaltech:kyronite_crystal>,
    <environmentaltech:kyronite_crystal>
]);

var willBlock as IItemStack[] = [
    <bloodmagic:demon_extras:10>,
    <bloodmagic:demon_extras:11>,
    <bloodmagic:demon_extras:12>,
    <bloodmagic:demon_extras:13>,
    <bloodmagic:demon_extras:14>
];

var willRaw as IItemStack[] = [
    <bloodmagic:item_demon_crystal>,
    <bloodmagic:item_demon_crystal:1>,
    <bloodmagic:item_demon_crystal:2>,
    <bloodmagic:item_demon_crystal:3>,
    <bloodmagic:item_demon_crystal:4>
];

for i, item in willBlock {
	TartaricForge.addRecipe(willBlock[i],
		[blockMithril, willRaw[i], willRaw[i], willRaw[i]
	], 8192, 50);
}
