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
import mods.botania.Apothecary;
import mods.botania.ElvenTrade;
import mods.botania.ManaInfusion;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;
import mods.immersiveengineering.MetalPress;
import mods.inworldcrafting.ExplosionCrafting;
import mods.jei.JEI;
import mods.thermalexpansion.Transposer;

JEI.addItem(<botania:manaresource:20>);
JEI.addItem(<botania:manaresource:21>);

var recipeRemove as IItemStack[] = [
    <botania:livingwood>,
    <botania:livingwood:1>,
    <botania:dreamwood>,
    <botania:dreamwood:1>,
    <botania:manaresource:3>,
    <botania:manaresource:13>
];

for item in recipeRemove {
	recipes.remove(item);
}

var recipeMapShaped as IIngredient[][][IItemStack] = {
    <botania:altar>	: [
    	[<earthworks:itemslab_dry_stone>,<botania:petal:*>,<earthworks:itemslab_dry_stone>],
    	[null,<earthworks:block_dry_stone>,null],
    	[<chisel:brownstone>,<earthworks:block_dry_stone>,<chisel:brownstone>]
    ],
    <botania:pool:2> : [
    	[<botania:livingrock>,null,<botania:livingrock>],
    	[<botania:livingrock>,<botania:livingrock>,<botania:livingrock>]
    ],
    <botania:spreader> : [
    	[<botania:livingwood>,<botania:livingwood:5>,<botania:livingwood>],
    	[<ore:ingotEnder>,<botania:petal:*>,null],
    	[<botania:livingwood>,<botania:livingwood:5>,<botania:livingwood>]
    ],
    <botania:spreader:2> : [
    	[<botania:dreamwood>,<botania:dreamwood:5>,<botania:dreamwood>],
    	[<botania:spreader>,<botania:manaresource:9>,null],
    	[<botania:dreamwood>,<botania:dreamwood:5>,<botania:dreamwood>]
    ],
    <botania:pylon>	: [
    	[<ore:ingotManasteel>,<ore:plateGold>,<ore:ingotManasteel>],
    	[<ore:ingotManasteel>,<ore:manaDiamond>,<ore:ingotManasteel>],
    	[<ore:ingotManasteel>,<ore:plateGold>,<ore:ingotManasteel>]
    ],
    <botania:pylon:1> : [
    	[<ore:ingotTerrasteel>,<bloodmagic:sigil_green_grove>,<ore:ingotTerrasteel>],
    	[<ore:ingotTerrasteel>,<botania:pylon>,<ore:ingotTerrasteel>],
    	[<ore:ingotTerrasteel>,<xreliquary:salamander_eye>,<ore:ingotTerrasteel>]
    ],
    <botania:pylon:2> : [
    	[<ore:ingotElvenElementium>,<ore:elvenPixieDust>,<ore:ingotElvenElementium>],
    	[<bloodmagic:slate:3>,<botania:pylon:1>,<bloodmagic:slate:3>],
    	[<ore:ingotElvenElementium>,<botania:rune:8>,<ore:ingotElvenElementium>]
    ],
    <botania:alchemycatalyst> : [
    	[<botania:livingrock>,<ore:plateGold>,<botania:livingrock>],
    	[<minecraft:brewing_stand>,<botania:storage:1>,<minecraft:brewing_stand>],
    	[<botania:livingrock>,<ore:plateGold>,<botania:livingrock>]
    ],
    <botania:alfheimportal>	: [
    	[<botania:livingwood>,<botania:manaresource:4>,<botania:livingwood>],
    	[<abyssalcraft:dreadplate>,<botania:manaresource:4>,<abyssalcraft:dreadplate>],
    	[<botania:livingwood>,<botania:manaresource:4>,<botania:livingwood>]
    ],
    <botania:opencrate:1> : [
    	[<botania:dreamwood:1>,<botania:dreamwood:1>,<botania:dreamwood:1>],
    	[<botania:dreamwood:1>,<ore:workbench>,<botania:dreamwood:1>],
    	[<botania:dreamwood:1>,<botania:dreamwood:1>,<botania:dreamwood:1>]
    ]
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}

MetalPress.addRecipe(<botania:manaresource:3>, <botania:livingwood>, <immersiveengineering:mold:2>, 2048);
MetalPress.addRecipe(<botania:manaresource:13>, <botania:dreamwood>, <immersiveengineering:mold:2>, 2048);

Apothecary.removeRecipe("endoflame");
<botania:specialflower>.withTag({type: "endoflame"}).addTooltip(format.red("Disabled, because I can. :^)"));
<botania:specialflower>.withTag({type: "endoflame"}).addTooltip(format.red("~ Ender"));

ElvenTrade.removeRecipe(<botania_tweaks:dire_crafty_crate>);
recipes.addShaped(<botania_tweaks:dire_crafty_crate>, [
    [<botania:opencrate:1>,<botania:opencrate:1>,<botania:opencrate:1>],
    [<botania:opencrate:1>,<avaritia:extreme_crafting_table>,<botania:opencrate:1>],
    [<botania:opencrate:1>,<botania:opencrate:1>,<botania:opencrate:1>]
]);

PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.addRecipe(<astralsorcery:blockinfusedwood>, <botania:livingwood>, 100);

PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.addRecipe(<contenttweaker:blood_infused_stone>, <botania:livingrock>, 100);

PureDaisy.addRecipe(<randomthings:fertilizeddirt>, <botania:root>, 100);

recipes.remove(<botania:pool>);
ManaInfusion.addInfusion(<botania:pool>, <botania:pool:2>, 10000);

ManaInfusion.removeRecipe(<botania:managlass>);
ManaInfusion.addInfusion(<botania:managlass>, <ore:fusedQuartz>, 100);

ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>, <psi:material>, 500);

ManaInfusion.removeRecipe(<botania:manaresource>);
ManaInfusion.addInfusion(<botania:manaresource>, <enderio:item_alloy_ingot:6>, 1000);

ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.addInfusion(<botania:storage>, <enderio:block_alloy:6>, 9000);

recipes.remove(<botania:manaresource:6>);
Transposer.addFillRecipe(<botania:manaresource:6>, <contenttweaker:root_dried>, <liquid:redstone>*100, 4096);

<botania:manaresource:20>.addTooltip(format.green("Drops from Block of Living Root."));
<botania:root>.displayName = "Block of Living Root";

ExplosionCrafting.explodeItemRecipe(<botania:manaresource:21> * 4, <minecraft:cobblestone>);
ExplosionCrafting.explodeItemRecipe(<botania:manaresource:21> * 4, <minecraft:stone>);

recipes.remove(<botania:runealtar>);
Altar.addAttunementAltarRecipe("runealtar", <botania:runealtar>, 500, 800, [
	null,
	<botania:manaresource:1>,
	null,
	<botania:livingrock>,
	<astralsorcery:blockaltar>,
	<botania:livingrock>,
	<blood_dynamo:ingredient:2>,
	<botania:manaresource:2>,
	<blood_dynamo:ingredient:2>,
	<botania:spark>,
	<botania:spark>,
	<botanicadds:mana_lapis>,
	<botanicadds:mana_lapis>
]);

var mapBotaniaRune as IItemStack[][IItemStack][int] = {
	1000 : {
		<botania:rune> : [
			<contenttweaker:rune_common>,
			<botania:manaresource:23>,
			<minecraft:fish>,
			<minecraft:reeds>,
			<minecraft:prismarine_crystals>
		],
		<botania:rune:1> : [
			<contenttweaker:rune_common>,
			<botania:manaresource:23>,
			<randomthings:obsidianskull>,
			<minecraft:red_nether_brick>,
			<minecraft:ghast_tear>
		],
		<botania:rune:2> : [
			<contenttweaker:rune_common>,
			<botania:manaresource:23>,
			<contenttweaker:root_golden>,
			<xreliquary:fertile_potion>,
			<forestry:humus>
		],
		<botania:rune:3> : [
			<contenttweaker:rune_common>,
			<botania:manaresource:23>,
			<minecraft:feather>,
			<botania:spark>,
			<immersiveengineering:material:12>
		]
	},
	2000 : {
		<botania:rune:4> : [
			<contenttweaker:rune_uncommon>,
			<botania:manaresource:23>,
			<astralsorcery:itemcoloredlens:4>,
			<minecraft:golden_carrot>,
			<xreliquary:mob_ingredient:11>
		],
		<botania:rune:5> : [
			<contenttweaker:rune_uncommon>,
			<botania:manaresource:23>,
			<astralsorcery:itemcoloredlens:2>,
			<minecraft:speckled_melon>,
			<xreliquary:mob_ingredient:7>
		],
		<botania:rune:6> : [
			<contenttweaker:rune_uncommon>,
			<botania:manaresource:23>,
			<astralsorcery:itemcoloredlens>,
			<minecraft:fermented_spider_eye>,
			<xreliquary:mob_ingredient:8>
		],
		<botania:rune:7> : [
			<contenttweaker:rune_uncommon>,
			<botania:manaresource:23>,
			<astralsorcery:itemcoloredlens:5>,
			<minecraft:cake>,
			<xreliquary:mob_ingredient:10>
		]
	},
	4000 : {
		<botania:rune:8> : [
			<contenttweaker:rune_rare>,
			<botania:manaresource:23>,
			<psi:material:3>,
			<psi:material:4>,
			<botania:pylon>
		],
		<botanicadds:rune_tp> : [
			<contenttweaker:rune_rare>,
			<botania:manaresource:23>,
			<enderutilities:enderpart:17>,
			<rftools:infused_enderpearl>,
			<enderutilities:linkcrystal>
		],
		<botanicadds:rune_energy> : [
			<contenttweaker:rune_rare>,
			<botania:manaresource:23>,
			<immersiveengineering:metal_device1:8>,
			<embers:wildfire_core>,
			<evilcraft:lightning_bomb>
		]
	},
	8000 : {
		<botania:rune:9> : [
			<contenttweaker:rune_legendary>,
			<thermalfoundation:material:1028>,
			<contenttweaker:corruptedstarmetal>,
			<botania:rune:5>,
			<botania:rune:3>
		],
		<botania:rune:10> : [
			<contenttweaker:rune_legendary>,
			<thermalfoundation:material:1028>,
			<contenttweaker:corruptedstarmetal>,
			<botania:rune:7>,
			<botania:rune:1>
		],
		<botania:rune:11> : [
			<contenttweaker:rune_legendary>,
			<thermalfoundation:material:1028>,
			<contenttweaker:corruptedstarmetal>,
			<botania:rune:4>,
			<botania:rune>
		],
		<botania:rune:12> : [
			<contenttweaker:rune_legendary>,
			<thermalfoundation:material:1028>,
			<contenttweaker:corruptedstarmetal>,
			<botania:rune:6>,
			<botania:rune:3>
		],
		<botania:rune:13> : [
			<contenttweaker:rune_legendary>,
			<thermalfoundation:material:1028>,
			<contenttweaker:corruptedstarmetal>,
			<botania:rune:7>,
			<botania:rune:2>
		],
		<botania:rune:14> : [
			<contenttweaker:rune_legendary>,
			<thermalfoundation:material:1028>,
			<contenttweaker:corruptedstarmetal>,
			<botania:rune:7>,
			<botania:rune>
		],
		<botania:rune:15> : [
			<contenttweaker:rune_legendary>,
			<thermalfoundation:material:1028>,
			<contenttweaker:corruptedstarmetal>,
			<botania:rune:5>,
			<botania:rune:1>
		]
	}
};

for mana, runes in mapBotaniaRune {
	for rune, recipe in runes {
		RuneAltar.removeRecipe(rune);
		RuneAltar.addRecipe(rune,recipe, mana);
	}
}
