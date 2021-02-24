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

import mods.botania.Apothecary;
import mods.botania.ElvenTrade;
import mods.botania.ManaInfusion;
import mods.botania.PureDaisy;
import mods.jei.JEI;
import mods.thermalexpansion.Transposer;

JEI.addItem(<botania:manaresource:20>);

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

Apothecary.removeRecipe("endoflame");
<botania:specialflower>.withTag({type: "endoflame"}).addTooltip(format.red("Disabled, because I can."));
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

recipes.remove(<botania:manaresource:6>);
Transposer.addFillRecipe(<botania:manaresource:6>, <contenttweaker:root_dried>, <liquid:redstone>*100, 4096);

<botania:manaresource:20>.addTooltip(format.green("Drops from Block of Living Root."));
<botania:root>.displayName = "Block of Living Root";
