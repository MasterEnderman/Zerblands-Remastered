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
import mods.embers.Alchemy;
import mods.immersiveengineering.MetalPress;
import mods.inworldcrafting.ExplosionCrafting;
import mods.jei.JEI;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;
import scripts.functions.calc_scientific;
import scripts.functions.calc_atomic;

JEI.addItem(<botania:manaresource:20>);
JEI.addItem(<botania:manaresource:21>);

JEI.removeAndHide(<botania:rfgenerator>);

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

recipes.removeShaped(<botania:manaresource:14>);
recipes.addShaped(<botania:manaresource:14>, [
	[<botanicadds:gaia_shard>,<botanicadds:gaia_shard>,<botanicadds:gaia_shard>],
	[<botanicadds:gaia_shard>,<botanicadds:gaiasteel_ingot>,<botanicadds:gaia_shard>],
	[<botanicadds:gaia_shard>,<botanicadds:gaia_shard>,<botanicadds:gaia_shard>]
]);

recipes.remove(<botania:lens:10>);
calc_basic(<botania:lens:10>, <botania:lens>, <ic2:itemmisc:263>);

recipes.remove(<botania:fertilizer>);
calc_basic(<botania:fertilizer>, <actuallyadditions:item_fertilizer>, <botania:dye:*>);

recipes.remove(<botania:manaringgreater>);
calc_basic(<botania:manaringgreater>, <botania:manaring>, <ore:ingotTerrasteel>);

recipes.remove(<botania:auraringgreater>);
calc_basic(<botania:auraringgreater>, <botania:auraring>, <ore:ingotTerrasteel>);

recipes.remove(<botania:manaresource:12>);
calc_atomic(<botania:manaresource:12>, <ore:stringFluxed>, <botania:manaresource:15>, <botania:manaresource:8>);

recipes.remove(<botania:travelbelt>);
Alchemy.add(<botania:travelbelt>, [<embers:ember_belt>, <botania:rune>, <botania:rune:2>, <ore:ingotManasteel>, <ore:ingotManasteel>], {"lead": 32 to 64, "dawnstone": 32 to 64});

recipes.remove(<botania:knockbackbelt>);
Alchemy.add(<botania:knockbackbelt>, [<embers:ember_belt>, <botania:rune:2>, <botania:rune:1>, <ore:ingotManasteel>, <ore:ingotManasteel>], {"lead": 32 to 64, "dawnstone": 32 to 64});

recipes.remove(<botania:icependant>);
Alchemy.add(<botania:icependant>, [<embers:ember_amulet>, <botania:rune:0>, <botania:rune:7>, <ore:manaString>, <ore:manaString>], {"silver": 32 to 64, "iron": 32 to 64});

recipes.remove(<botania:lavapendant>);
Alchemy.add(<botania:lavapendant>, [<embers:ember_amulet>, <botania:rune:1>, <botania:rune:5>, <ore:manaString>, <ore:manaString>], {"silver": 32 to 64, "iron": 32 to 64});

recipes.remove(<botania:cloudpendant>);
Alchemy.add(<botania:cloudpendant>, [<embers:ember_amulet>, <botania:rune:3>, <botania:rune:6>, <ore:manaString>, <ore:manaString>], {"silver": 32 to 64, "iron": 32 to 64});

recipes.remove(<botania:manaring>);
Alchemy.add(<botania:manaring>, [<embers:ember_ring>, <botania:manatablet>, <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>], {"silver": 32 to 64, "lead": 32 to 64});

recipes.remove(<botania:magnetring>);
Alchemy.add(<botania:magnetring>, [<embers:ember_ring>, <botania:lens:10>, <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>], {"silver": 32 to 64, "lead": 32 to 64});

recipes.remove(<botania:waterring>);
Alchemy.add(<botania:waterring>, [<embers:ember_ring>, <botania:rune>, <ore:ingotManasteel>, <minecraft:fish:3>, <ore:ingotManasteel>], {"silver": 32 to 64, "lead": 32 to 64});

recipes.remove(<botania:auraring>);
Alchemy.add(<botania:auraring>, [<embers:ember_ring>, <botania:rune:8>, <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>], {"silver": 32 to 64, "lead": 32 to 64});

recipes.remove(<botania:miningring>);
Alchemy.add(<botania:miningring>, [<embers:ember_ring>, <botania:rune:2>, <ore:ingotManasteel>, <minecraft:golden_pickaxe>, <ore:ingotManasteel>], {"silver": 32 to 64, "lead": 32 to 64});

recipes.remove(<botania:swapring>);
Alchemy.add(<botania:swapring>, [<embers:ember_ring>, <minecraft:clay>, <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>], {"silver": 32 to 64, "lead": 32 to 64});

recipes.remove(<botania:dodgering>);
Alchemy.add(<botania:dodgering>, [<embers:ember_ring>, <minecraft:emerald>, <ore:ingotManasteel>, <botania:rune:3>, <ore:ingotManasteel>], {"silver": 32 to 64, "lead": 32 to 64});

recipes.remove(<botania:pixiering>);
Alchemy.add(<botania:pixiering>, [<embers:ember_ring>, <botania:manaresource:8>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>], {"silver": 32 to 64, "lead": 32 to 64, "dawnstone": 32 to 64});

recipes.remove(<botania:reachring>);
Alchemy.add(<botania:reachring>, [<embers:ember_ring>, <botania:rune:15>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>], {"silver": 32 to 64, "lead": 32 to 64, "dawnstone": 32 to 64});

var mapQuartz as IItemStack[IItemStack] = {
	<botania:quartz> : <minecraft:coal>,
	<botania:quartz:2> : <minecraft:blaze_powder>,
	<botania:quartz:3> : <minecraft:dye:5>,
	<botania:quartz:4> : <minecraft:redstone>,
	<botania:quartz:6> : <minecraft:double_plant>
};

for quartz, item in mapQuartz {
	recipes.remove(quartz);
	calc_basic(quartz, <botania:quartz:1>, item);
}

recipes.remove(<botania:spark>);
calc_scientific(<botania:spark>, <botania:quartz:2>, <botania:petal:*>);

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
    	[<botania:livingwood>,<botania:livingwood:2>,<botania:livingwood>],
    	[<ore:ingotEnder>,<botania:petal:*>,null],
    	[<botania:livingwood>,<botania:livingwood:2>,<botania:livingwood>]
    ],
    <botania:spreader:2> : [
    	[<botania:dreamwood>,<botania:dreamwood:5>,<botania:dreamwood>],
    	[<botania:spreader>,<botania:manaresource:9>,null],
    	[<botania:dreamwood>,<botania:dreamwood:5>,<botania:dreamwood>]
    ],
    <botania:pylon>	: [
    	[<ore:ingotManasteel>,<ore:plateGold>,<ore:ingotManasteel>],
    	[<botania:manaresource:1>,<ore:manaDiamond>,<botania:manaresource:1>],
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
    	[<botania:livingrock>,<bloodmagic:component:6>,<botania:livingrock>],
    	[<minecraft:brewing_stand>,<embers:intelligent_apparatus>,<minecraft:brewing_stand>],
    	[<botania:livingrock>,<ore:blockBloodBronze>,<botania:livingrock>]
    ],
    <botania:alfheimportal>	: [
    	[<botania:livingwood:5>,<botania:manaresource:4>,<botania:livingwood:5>],
    	[<abyssalcraft:dreadplate>,<botanicadds:rune_tp>,<abyssalcraft:dreadplate>],
    	[<botania:livingwood:5>,<botania:manaresource:4>,<botania:livingwood:5>]
    ],
    <botania:opencrate:1> : [
    	[<botania:dreamwood:1>,<botania:dreamwood:1>,<botania:dreamwood:1>],
    	[<botania:dreamwood:1>,<ore:workbench>,<botania:dreamwood:1>],
    	[<botania:dreamwood:1>,<botania:dreamwood:1>,<botania:dreamwood:1>]
    ],
	<botania:conjurationcatalyst> : [
		[<botanicadds:dreamrock>,<bloodmagic:component:4>,<botanicadds:dreamrock>],
		[<ore:ingotElvenElementium>,<botania:alchemycatalyst>,<ore:ingotElvenElementium>],
		[<botanicadds:dreamrock>,<appliedenergistics2:fluix_block>,<botanicadds:dreamrock>]
	],
	<botania:lens> : [
		[<ore:ingotManasteel>,<astralsorcery:itemcraftingcomponent:3>,<ore:ingotManasteel>],
		[<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:3>],
		[<ore:ingotManasteel>,<astralsorcery:itemcraftingcomponent:3>,<ore:ingotManasteel>]
	],
	<botania:flowerbag> : [
		[<botania:petal:*>,<botania:petal:*>,<botania:petal:*>],
		[<botania:petal:*>,<toolbelt:pouch>,<botania:petal:*>],
		[<botania:petal:*>,<botania:petal:*>,<botania:petal:*>]
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

Apothecary.removeRecipe("puredaisy");
Apothecary.addRecipe("puredaisy", [<ore:petalWhite>, <ore:gemAquamarine>, <ore:petalWhite>, <ore:gemAquamarine>, <ore:petalWhite>, <ore:gemAquamarine>, <ore:petalWhite>, <ore:gemAquamarine>]);

ElvenTrade.removeRecipe(<botania_tweaks:dire_crafty_crate>);
recipes.addShaped(<botania_tweaks:dire_crafty_crate>, [
    [<botania:opencrate:1>,<botania:opencrate:1>,<botania:opencrate:1>],
    [<botania:opencrate:1>,<avaritia:extreme_crafting_table>,<botania:opencrate:1>],
    [<botania:opencrate:1>,<botania:opencrate:1>,<botania:opencrate:1>]
]);

ElvenTrade.removeRecipe(<botania:manaresource:8>);
ElvenTrade.addRecipe([<botania:manaresource:8>], [<botania:manaresource:1>,<botania:manaresource:1>]);

ElvenTrade.removeRecipe(<botania:manaresource:9>);
ElvenTrade.addRecipe([<botania:manaresource:9>], [<botania:manaresource:2>,<botania:manaresource:2>]);

ElvenTrade.removeRecipe(<botania:storage:4>);
ElvenTrade.addRecipe([<botania:storage:4>], [<botania:storage:3>,<botania:storage:3>]);

PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.addRecipe(<astralsorcery:blockinfusedwood>, <botania:livingwood>, 100);

PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.addRecipe(<contenttweaker:blood_infused_stone>, <botania:livingrock>, 100);

PureDaisy.addRecipe(<randomthings:fertilizeddirt>, <botania:root>, 100);

recipes.remove(<botania:pool>);
ManaInfusion.addInfusion(<botania:pool>, <botania:pool:2>, 10000);

ManaInfusion.addInfusion(<botania:overgrowthseed>, <extrautils2:enderlilly>, 10000);

ManaInfusion.removeRecipe(<botania:managlass>);
ManaInfusion.addInfusion(<botania:managlass>, <ore:fusedQuartz>, 100);

ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>, <psi:material>, 500);

ManaInfusion.removeRecipe(<botania:manaresource>);
ManaInfusion.addInfusion(<botania:manaresource>, <enderio:item_alloy_ingot:6>, 1000);

ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.addInfusion(<botania:storage>, <enderio:block_alloy:6>, 9000);

ManaInfusion.removeRecipe(<botania:manaresource:1>);
ManaInfusion.addInfusion(<botania:manaresource:1>, <abyssalcraft:cpearl>, 5000);

ManaInfusion.removeRecipe(<botania:manaresource:2>);
ManaInfusion.addInfusion(<botania:manaresource:2>, <contenttweaker:flawlessdiamond>, 10000);

ManaInfusion.removeRecipe(<botania:storage:3>);
ManaInfusion.addInfusion(<botania:storage:3>, <contenttweaker:flawless_block>, 90000);

recipes.remove(<botania:manaresource:6>);
Transposer.addFillRecipe(<botania:manaresource:6>, <contenttweaker:root_dried>, <liquid:redstone> * 100, 4096);

recipes.remove(<botania:livingwood:5>);
Transposer.addFillRecipe(<botania:livingwood:5>, <botania:livingwood>, <liquid:glowstone> * 250, 4096);

<botania:manaresource:20>.addTooltip(format.green("Drops from Block of Living Root."));
<botania:root>.displayName = "Block of Living Root";

ExplosionCrafting.explodeItemRecipe(<botania:manaresource:21> * 4, <minecraft:cobblestone>);
ExplosionCrafting.explodeItemRecipe(<botania:manaresource:21> * 4, <minecraft:stone>);

recipes.remove(<botania:runealtar>);
Altar.addAttunementAltarRecipe("runealtar", <botania:runealtar>, 500, 800, [
	null,
	<botania:specialflower>.withTag({type: "manastar"}),
	null,
	<botania:livingrock>,
	<astralsorcery:blockaltar>,
	<botania:livingrock>,
	<blood_dynamo:ingredient:2>,
	<botania:quartztypemana>,
	<blood_dynamo:ingredient:2>,
	<botania:spark>,
	<botania:spark>,
	<botanicadds:mana_lapis>,
	<botanicadds:mana_lapis>
]);

recipes.remove(<botania:terraplate>);
Altar.addConstellationAltarRecipe("terraplate", <botania:terraplate>, 500, 800, [
	<botanicadds:mana_lapis_block>,
	<botanicadds:mana_lapis_block>,
	<botanicadds:mana_lapis_block>,
	<actuallyadditions:item_crystal_empowered:4>,
	<forestry:flexible_casing>,
	<actuallyadditions:item_crystal_empowered:4>,
	<botania:storage>,
	<botania:rune:8>,
	<botania:storage>,
	<botania:rune>,
	<botania:rune:1>,
	<botania:rune:2>,
	<botania:rune:3>,
	<astralsorcery:itemcraftingcomponent:4>,
	<astralsorcery:itemcraftingcomponent:4>,
	<astralsorcery:itemcraftingcomponent:4>,
	<astralsorcery:itemcraftingcomponent:4>,
	<astralsorcery:itemcraftingcomponent:4>,
	<astralsorcery:itemcraftingcomponent:4>,
	<astralsorcery:itemcraftingcomponent:4>,
	<astralsorcery:itemcraftingcomponent:4>
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
			<contenttweaker:electric_motor>
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
