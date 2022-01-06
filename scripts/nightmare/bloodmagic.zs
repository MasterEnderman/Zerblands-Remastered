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
import mods.botania.RuneAltar;
import mods.evilcraft.BloodInfuser;

import scripts.functions.calc_atomic;

BloodInfuser.addRecipe(<evilcraft:blood_orb:1>, <liquid:evilcraftblood>*10000, 1, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), 200, 0.5);

recipes.remove(<bloodmagic:sacrificial_dagger>);
calc_atomic(<bloodmagic:sacrificial_dagger>,<xreliquary:magicbane>,<evilcraft:vein_sword>,<abyssalcraft:lifecrystal>);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <bloodmagic:blood_rune> : [
        [
            [<abyssalcraft:stone:7>,<bloodmagic:slate>,<abyssalcraft:stone:7>],
            [<bloodmagic:slate>,<evilcraft:blood_orb:1>,<bloodmagic:slate>],
            [<abyssalcraft:stone:7>,<bloodmagic:slate>,<abyssalcraft:stone:7>]
        ]
    ],
    <bloodmagic:ritual_diviner:2> : [
        [
            [null,<bloodmagic:slate:4>,null],
            [<bloodmagic:inscription_tool:6>,<bloodmagic:ritual_diviner:1>,<bloodmagic:inscription_tool:6>],
            [null,<bloodmagic:slate:4>,null]
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

recipes.remove(<bloodmagic:alchemy_table>);
Altar.addDiscoveryAltarRecipe("alchemy_table", <bloodmagic:alchemy_table>, 200, 200, [
	<minecraft:carpet:14>,<minecraft:carpet:14>,<minecraft:carpet:14>,
	<xreliquary:mob_ingredient:7>,<sonarcore:stablestone_normal>,<xreliquary:mob_ingredient:7>,
	<sonarcore:stablestone_normal>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}),<sonarcore:stablestone_normal>
]);

recipes.remove(<bloodmagic:altar>);
RuneAltar.addRecipe(<bloodmagic:altar>, [
    <astralsorcery:itemcraftingcomponent:4>,
    <thermalexpansion:frame:64>,
    <botania:lens:8>,
    <abyssalcraft:tieredsacrificialaltar:2>,
    <xreliquary:magicbane>,
    <abyssalcraft:dreadplate>,
    <contenttweaker:alfsteel_ingot>,
    <bloodmagic:monster_soul>
], 100000);

recipes.remove(<bloodmagic:ritual_diviner:0>);
RuneAltar.addRecipe(<bloodmagic:ritual_diviner:0>, [
    <botania:manaresource:3>,
    <botania:manaresource:9>,
    <bloodmagic:inscription_tool:1>,
    <bloodmagic:inscription_tool:2>,
    <bloodmagic:inscription_tool:3>,
    <bloodmagic:inscription_tool:4>,
], 500000);

BloodAltar.removeRecipe(<minecraft:stone>);
BloodAltar.addRecipe(<bloodmagic:slate>, <contenttweaker:rune_blank>, 0, 1000,5,5);

recipes.remove(<bloodmagic:teleposer>);
BloodAltar.addRecipe(<bloodmagic:teleposer>, <ic2:blockmachinehv:2>, 3, 2000, 10, 10);

BloodAltar.removeRecipe(<minecraft:ender_pearl>);
BloodAltar.addRecipe(<bloodmagic:teleposition_focus>, <botanicadds:rune_tp>, 3, 2000, 10, 10);

recipes.remove(<bloodmagic:soul_forge>);
Altar.addConstellationAltarRecipe("soul_forge", <bloodmagic:soul_forge>, 800, 200, [
    <contenttweaker:starsteel_ingot>,
    <xreliquary:infernal_chalice>,
    <contenttweaker:starsteel_ingot>,
    <abyssalcraft:oc>,
    <xreliquary:apothecary_cauldron>,
    <abyssalcraft:oc>,
    <contenttweaker:starsteel_ingot>,
    <bloodmagic:experience_tome>,
    <contenttweaker:starsteel_ingot>,
    <botania:rune:10>,
    <botania:rune:12>,
    <botania:rune:9>,
    <botania:rune:11>,
    <appliedenergistics2:quartz_fixture>,
    <appliedenergistics2:quartz_fixture>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>,
    <appliedenergistics2:quartz_fixture>,
    <appliedenergistics2:quartz_fixture>,
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

recipes.remove(<bloodmagic:soul_snare>);
Altar.addConstellationAltarRecipe("soul_snare", <bloodmagic:soul_snare> * 4, 2000, 100, [
    <evilcraft:dark_spike>,
    <bloodarsenal:blood_burned_string>,
    <evilcraft:dark_spike>,
    <bloodarsenal:blood_burned_string>,
    <abyssalcraft:abyingot>,
    <bloodarsenal:blood_burned_string>,
    <evilcraft:dark_spike>,
    <bloodarsenal:blood_burned_string>,
    <evilcraft:dark_spike>,
    <bloodarsenal:base_item>,
    <bloodarsenal:base_item>,
    <bloodarsenal:base_item>,
    <bloodarsenal:base_item>,
    <bloodarsenal:base_item>,
    <bloodarsenal:base_item>,
    <bloodarsenal:base_item>,
    <bloodarsenal:base_item>,
    <bloodarsenal:base_item>,
    <bloodarsenal:base_item>,
    <bloodarsenal:base_item>,
    <bloodarsenal:base_item>
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
		[<ore:blockMithril>, willRaw[i], willRaw[i], willRaw[i]
	], 8192, 50);
}


var listOldInput as IItemStack[] = [
    <minecraft:lapis_block>,
    <minecraft:magma_cream>,
    <minecraft:obsidian>,
    <minecraft:ghast_tear>,
    <minecraft:coal_block>,
    <minecraft:glowstone>,
];

for entry in listOldInput {
    BloodAltar.removeRecipe(entry);
}

var mapInscribingTool as int[][IItemStack][IItemStack] = {
    <bloodmagic:inscription_tool:1> : {
        <botania:rune> : [2,1000,5,5]
    },
    <bloodmagic:inscription_tool:2> : {
        <botania:rune:1> : [2,1000,5,5]
    },
    <bloodmagic:inscription_tool:3> : {
        <botania:rune:2> : [2,1000,5,5]
    },
    <bloodmagic:inscription_tool:4> : {
        <botania:rune:3> : [2,1000,5,5]
    },
    <bloodmagic:inscription_tool:5> : {
        <botania:rune:8> : [3,2000,20,10]
    },
    <bloodmagic:inscription_tool:6> : {
        <botanicadds:rune_tp> : [5,200000,100,200]
    },
};

for output, data in mapInscribingTool {
    for input, numbers in data {
        var tier as int = numbers[0];
        var blood as int = numbers[1];
        var consumption as int = numbers[2];
        var drain as int = numbers[3];

        BloodAltar.addRecipe(output, input, tier, blood, consumption, drain);
    }
}

BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <evilcraft:blood_orb:1>, 0, 2000, 2, 2);

BloodAltar.removeRecipe(<minecraft:redstone_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <evilcraft:piercing_vengeance_focus>, 1, 5000, 5, 5);

BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <abyssalcraft:eoa>, 2, 25000, 20, 20);

BloodAltar.removeRecipe(<bloodmagic:blood_shard>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}), <bloodmagic:blood_shard:1>, 3, 40000, 30, 50);

BloodAltar.removeRecipe(<minecraft:nether_star>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), <avaritiatweaks:gaia_block>, 4, 80000, 100, 50);
