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
import mods.botania.ManaInfusion;

<psi:cad_assembly>.displayName = "Steel CAD Assembly";
<psi:cad_assembly:1>.displayName = "Lumium CAD Assembly";

recipes.remove(<psi:programmer>);
Altar.addAttunementAltarRecipe("psi_programmer", <psi:programmer>, 500, 800, [
	<actuallyadditions:item_crystal:3>,
	<extrautils2:screen>,
	<actuallyadditions:item_crystal:3>,
	<thermalfoundation:material:160>,
	<avaritia:double_compressed_crafting_table>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:160>,
	<immersiveengineering:material:27>,
	<thermalfoundation:material:160>,
	<botania:managlass>,
	<botania:managlass>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:160>
]);

recipes.remove(<psi:cad_assembler>);
Altar.addAttunementAltarRecipe("psi_cad_assembler", <psi:cad_assembler>, 500, 800, [
	<actuallyadditions:item_crystal:3>,
	<avaritia:double_compressed_crafting_table>,
	<actuallyadditions:item_crystal:3>,
	<embers:archaic_circuit>,
	<blood_dynamo:ingredient:2>,
	<embers:archaic_circuit>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:160>,
	<enderio:item_material:11>,
	<enderio:item_material:11>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:160>
]);

recipes.remove(<psi:material:3>);
Altar.addAttunementAltarRecipe("ebony_ingot", <psi:material:3> * 4, 500, 800, [
	<psi:material:5>,
	<psi:material:5>,
	<psi:material:5>,
	<ore:ingotPsi>,
	<ore:gemPsi>,
	<ore:ingotPsi>,
	<psi:material:5>,
	<psi:material:5>,
	<psi:material:5>,
	<astralsorcery:itemusabledust:1>,
	<astralsorcery:itemusabledust:1>,
	<astralsorcery:itemusabledust:1>,
	<astralsorcery:itemusabledust:1>
]);

recipes.remove(<psi:material:4>);
Altar.addAttunementAltarRecipe("ivory_ingot", <psi:material:4> * 4, 500, 800, [
	<psi:material:6>,
	<psi:material:6>,
	<psi:material:6>,
	<ore:ingotPsi>,
	<ore:gemPsi>,
	<ore:ingotPsi>,
	<psi:material:6>,
	<psi:material:6>,
	<psi:material:6>,
	<astralsorcery:itemusabledust>,
	<astralsorcery:itemusabledust>,
	<astralsorcery:itemusabledust>,
	<astralsorcery:itemusabledust>
]);

var recipeMapShaped as IIngredient[][][IItemStack] = {
    <psi:cad_assembly> : [
    	[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>],
    	[null,null,<ore:ingotSteel>]
    ],
    <psi:cad_assembly:1> : [
    	[<ore:ingotLumium>,<ore:ingotLumium>,<ore:ingotLumium>],
    	[null,null,<ore:ingotLumium>]
    ],
    <psi:cad_core> : [
    	[<ore:ingotSteel>,<botania:manaresource>,<ore:ingotSteel>],
    	[<botania:manaresource>,<psi:material>,<botania:manaresource>],
    	[<ore:ingotSteel>,<botania:manaresource>,<ore:ingotSteel>]
    ],
    <psi:cad_socket> : [
    	[<psi:material>,<botania:manaresource>],
    	[<botania:manaresource>,<ore:ingotSteel>]
    ],
    <psi:cad_battery> : [
    	[<psi:material>,<ore:ingotSteel>],
    	[<ore:ingotSteel>,<thermalexpansion:capacitor>]
    ],
    <psi:cad_battery:1> : [
    	[<psi:material>,<botania:manaresource>],
    	[<botania:manaresource>,<thermalexpansion:capacitor:2>]
    ],
    <psi:cad_battery:2> : [
    	[<psi:material>,<ore:ingotMithril>],
    	[<ore:ingotMithril>,<thermalexpansion:capacitor:4>]
    ]
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}

var mapBullets as IItemStack[IItemStack] = {
    <psi:spell_bullet> : <minecraft:stick>,
    <psi:spell_bullet:2> : <minecraft:arrow>,
    <psi:spell_bullet:4> : <minecraft:string>,
    <psi:spell_bullet:6> : <tconstruct:edible:2>,
    <psi:spell_bullet:8> : <minecraft:gunpowder>,
    <psi:spell_bullet:10> : <redstonearsenal:material>,
    <psi:spell_bullet:12> : <minecraft:tripwire_hook>
};

for key, value in mapBullets {
	recipes.remove(key);
    recipes.addShapeless("ct_"+toString(key), key, [value,<ore:dustPsi>,<blood_dynamo:ingredient:2>,<ore:dustBedrock>]);
}

var mapMaterial as int[IItemStack] = {
	<psi:material> : 1000,
	<psi:material:1> : 20000,
	<psi:material:2> : 100000,
	<psi:material:3> : 1000000,
	<psi:material:4> : 1000000,
	<psi:material:5> : 10000,
	<psi:material:6> : 10000,
};

for material, mana in mapMaterial {
	ManaInfusion.addConjuration(material * 2, material, mana);
}
