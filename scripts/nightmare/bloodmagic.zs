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
import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.AlchemyArray;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;
import mods.botania.RuneAltar;
import mods.evilcraft.BloodInfuser;

import moretweaker.bloodarsenal.Sanguine;

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
    ],
    <bloodmagic:decorative_brick> : [
        [
            [<sonarcore:stablestone_normal>,<sonarcore:stablestone_normal>,<sonarcore:stablestone_normal>],
            [<sonarcore:stablestone_normal>,<bloodmagic:blood_shard>,<sonarcore:stablestone_normal>],
            [<sonarcore:stablestone_normal>,<sonarcore:stablestone_normal>,<sonarcore:stablestone_normal>]
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

recipes.remove(<bloodmagic:lava_crystal>);
AlchemyTable.addRecipe(<bloodmagic:lava_crystal>, [
	<quantumflux:craftingpiece:6>,
    <ic2:itemmisc:9>,
    <minecraft:lava_bucket>
], 400, 100, 1);

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
    <contenttweaker:runic_gear>,
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
    <contenttweaker:runic_gear>,
    <contenttweaker:runic_gear>,
    <tconstruct:ingots:5>,
    <tconstruct:ingots:5>,
    <tconstruct:ingots:5>,
    <tconstruct:ingots:5>
]);

recipes.remove(<bloodmagic:blood_shard:1>);
Sanguine.addRecipe(<bloodmagic:blood_shard:1>, 40000, <bloodmagic:blood_shard>, [
    <bloodmagic:item_demon_crystal>,
    <bloodmagic:item_demon_crystal:1>,
    <bloodmagic:item_demon_crystal>,
    <bloodmagic:item_demon_crystal:2>,
    <bloodmagic:item_demon_crystal>,
    <bloodmagic:item_demon_crystal:3>,
    <bloodmagic:item_demon_crystal>,
    <bloodmagic:item_demon_crystal:4>
]);

recipes.remove(<bloodmagic:decorative_brick:2>);
BloodAltar.addRecipe(<bloodmagic:decorative_brick:2>, <draconicevolution:draconium_block:1>, 5, 20000000, 1000, 1000);
Altar.addTraitAltarRecipe("crystal_cluster", <bloodmagic:decorative_brick:2>, 4500, 100, [
    <bloodmagic:demon_extras:10>,
    <botania:manaresource:14>,
    <bloodmagic:demon_extras:10>,
    <bloodmagic:blood_shard:1>,
    <astralsorcery:blockcelestialcollectorcrystal>,
    <bloodmagic:blood_shard:1>,
    <bloodmagic:demon_extras:10>,
    <botania:manaresource:14>,
    <bloodmagic:demon_extras:10>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>,
    <quantumflux:craftingpiece>,
    <quantumflux:craftingpiece>,
    <botania:manaresource:9>,
    <botania:manaresource:9>,
    <botania:manaresource:9>,
    <botania:manaresource:9>,
    <quantumflux:craftingpiece>, 
    <quantumflux:craftingpiece>,
    <contenttweaker:crystal_cluster_core>,
    <enderio:item_material:19>,
    <enderio:item_material:19>,
    <contenttweaker:crystal_cluster_core>,
	//Outer Items, indices 25+
    <thermalfoundation:material:1028>,
    <bloodmagic:item_demon_crystal:1>,
    <thermalfoundation:material:1028>,
    <bloodmagic:item_demon_crystal:2>,
    <thermalfoundation:material:1028>,
    <bloodmagic:item_demon_crystal:3>,
    <thermalfoundation:material:1028>,
    <bloodmagic:item_demon_crystal:4>
], "astralsorcery.constellation.pelotrio");

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
        <botanicadds:rune_energy> : [5,200000,100,200]
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
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <abyssalcraft:eoa>, 1, 5000, 5, 5);

BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <evilcraft:piercing_vengeance_focus>, 2, 25000, 20, 20);

BloodAltar.removeRecipe(<bloodmagic:blood_shard>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}), <avaritiatweaks:gaia_block>, 3, 40000, 30, 50);

BloodAltar.removeRecipe(<minecraft:nether_star>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), <bloodmagic:blood_shard:1>, 4, 80000, 100, 50);

BloodAltar.removeRecipe(<minecraft:iron_sword>);
BloodAltar.addRecipe(<bloodmagic:dagger_of_sacrifice>, <randomthings:spectresword>, 1, 3000, 5, 5);

TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:dye:15>,<minecraft:gunpowder>,<minecraft:coal>]);
BloodAltar.addRecipe(<bloodmagic:arcane_ashes>, <forestry:ash>, 1, 1000, 50, 50);

// Binding Reagent
TartaricForge.removeRecipe([<minecraft:glowstone_dust>,<minecraft:redstone>,<minecraft:gold_nugget>,<minecraft:gunpowder>]);
TartaricForge.addRecipe(<bloodmagic:component:8>, [<contenttweaker:atomicbinder>,<redstonearsenal:material>,<thermalfoundation:material:1027>,<thermalfoundation:material:1026>], 400, 10);

// Frost Reagent
TartaricForge.removeRecipe([<minecraft:ice>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:redstone>]);
TartaricForge.addRecipe(<bloodmagic:component:32>, [<botania:rune:7>,<minecraft:packed_ice>,<forestry:crafting_material:5>,<torchmaster:frozen_pearl>], 80, 10);

// Mining Reagent
TartaricForge.removeRecipe([<minecraft:iron_pickaxe>,<minecraft:iron_axe>,<minecraft:iron_shovel>,<minecraft:gunpowder>]);
TartaricForge.addRecipe(<bloodmagic:component:3>, [<randomthings:spectrepickaxe>,<randomthings:spectreaxe>,<randomthings:spectreshovel>,<conarm:gauntlet_mat_speed>], 128, 10);

// Void Reagent
TartaricForge.removeRecipe([<minecraft:bucket>,<minecraft:string>,<minecraft:string>,<minecraft:gunpowder>]);
TartaricForge.addRecipe(<bloodmagic:component:4>, [<quantumflux:voidbucket>,<actuallyadditions:item_crystal_empowered:3>,<xreliquary:void_tear>,<enderio:item_material:36>], 64, 10);

// Haste Reagent
TartaricForge.removeRecipe([<minecraft:cookie>,<minecraft:sugar>,<minecraft:cookie>,<minecraft:stone>]);
TartaricForge.addRecipe(<bloodmagic:component:13>, [<actuallyadditions:item_food:12>,<harvestcraft:chaoscookieitem>,<harvestcraft:creamcookieitem>,<harvestcraft:creepercookieitem>], 1400, 100);

// Lava Reagent
TartaricForge.removeRecipe([<minecraft:lava_bucket>,<minecraft:redstone>,<minecraft:cobblestone>,<minecraft:coal_block>]);
TartaricForge.addRecipe(<bloodmagic:component:1>, [<embers:wildfire_core>,<botania:rune:1>,<randomthings:imbue>,<xreliquary:infernal_tear>], 32, 10);

// Growth Reagent
TartaricForge.removeRecipe([<minecraft:sapling>,<minecraft:sapling>,<minecraft:reeds>,<minecraft:sugar>]);
TartaricForge.addRecipe(<bloodmagic:component:5>, [<ic2:itemmisc:157>,<botania:rune:2>,<randomthings:fertilizeddirt>,<actuallyadditions:item_misc:24>], 128, 20);

// Air Reagent
TartaricForge.removeRecipe([<minecraft:ghast_tear>,<minecraft:feather>,<minecraft:feather>]);
TartaricForge.addRecipe(<bloodmagic:component:2>, [<xreliquary:angelic_feather>,<minecraft:ghast_tear>,<extrautils2:chickenring>,<openglider:hang_glider_basic>], 128, 20);

// Magnetism Reagent
TartaricForge.removeRecipe([<minecraft:string>,<minecraft:gold_ingot>,<minecraft:iron_block>,<minecraft:gold_ingot>]);
TartaricForge.addRecipe(<bloodmagic:component:12>, [<botania:lens:10>,findFirstItemFromMod("contenttweaker","ingot","ferromagneticAlloy"),<randomthings:ingredient:12>,<actuallyadditions:block_ranged_collector>], 600, 10);

// Water Reagent
TartaricForge.removeRecipe([<minecraft:sugar>,<minecraft:water_bucket>,<minecraft:water_bucket>]);
TartaricForge.addRecipe(<bloodmagic:component:0>, [<evilcraft:dull_dust>,<botania:rune>,<evilcraft:weather_container:2>,<xreliquary:glowing_water>], 10, 5);

// Phantom Bridge Reagent
TartaricForge.removeRecipe([<minecraft:soul_sand>,<minecraft:soul_sand>,<minecraft:stone>,<minecraft:obsidian>]);
TartaricForge.addRecipe(<bloodmagic:component:15>, [<botania:platform>,<actuallyadditions:block_misc:6>,<botania:phantomink>,<minecraft:shulker_shell>], 600, 50);

// Sentient Sword
TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<minecraft:iron_sword>]);
TartaricForge.addRecipe(<bloodmagic:sentient_sword>, [<bloodmagic:dagger_of_sacrifice>,<bloodtinker:blood_bronze_ingot>,<bloodmagic:soul_gem>,<evilcraft:inverted_potentia:1>], 0, 0);

// Frame Part
TartaricForge.removeRecipe([<minecraft:glass>,<minecraft:stone>,<bloodmagic:slate>]);
TartaricForge.addRecipe(<bloodmagic:component:10>, [<sonarcore:stablestone_normal>,<sonarcore:stableglass>,<bloodmagic:slate>,<tconevo:metal:34>], 400, 10);

// Tartaric Gem
TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:gold_ingot>,<minecraft:glass>,<minecraft:dye:4>]);
AlchemyArray.addRecipe(<bloodmagic:soul_gem>, <astralsorcery:itemperkseal>, <embers:inflictor_gem>, bloodmagicAlchemyArray["zombiebeacon"]);

var mapAlchemyTable as IIngredient[][IItemStack][int] = {
    1 : {
        <bloodmagic:blood_rune:1> : [<bloodmagic:blood_rune>,<bloodmagic:slate>,<contenttweaker:module_speed>],
        <bloodmagic:blood_rune:2> : [<bloodmagic:blood_rune>,<ore:glass>], // Isn't actually implemented in Bloodmagic
        <bloodmagic:blood_rune:3> : [<bloodmagic:blood_rune>,<bloodarsenal:gem:1>],
        <bloodmagic:blood_rune:4> : [<bloodmagic:blood_rune>,<bloodarsenal:gem>],
    },
    2 : {
        <bloodmagic:blood_rune:5> : [<bloodmagic:blood_rune>,<bloodmagic:slate:2>,<contenttweaker:module_transfer>],
        <bloodmagic:blood_rune:6> : [<bloodmagic:blood_rune>,<bloodmagic:slate:2>,<contenttweaker:storage_module>],
    },
    3 : {
        <bloodmagic:blood_rune:7> : [<bloodmagic:blood_rune:6>,<bloodmagic:slate:3>,<ore:gearBoundMetal>,<contenttweaker:storage_module>],
        <bloodmagic:blood_rune:9> : [<bloodmagic:blood_rune:1>,<bloodmagic:slate:3>,<ore:gearBoundMetal>,<contenttweaker:module_speed>],
        <bloodmagic:blood_rune:10> : [<bloodmagic:blood_rune>,<bloodmagic:slate:3>,<ore:gearBoundMetal>],
    },
    4 : {
        <bloodmagic:blood_rune:8> : [<bloodmagic:blood_rune>,<bloodmagic:slate:4>,<ore:plateBoundMetal>,<ore:gearSentientMetal>,<evilcraft:blood_orb:1>],
    }
};

for tier, items in mapAlchemyTable {
    for item, recipe in items {
        recipes.remove(item);
        AlchemyTable.addRecipe(item, recipe, 500 * (tier + 1), 20 * (tier + 1), tier);
    }
}
