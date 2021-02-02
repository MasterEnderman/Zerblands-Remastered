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

<psi:cad_assembly>.displayName = "Steel CAD Assembly";
<psi:cad_assembly:1>.displayName = "Lumium CAD Assembly";

recipes.remove(<psi:programmer>);
Altar.addAttunmentAltarRecipe("psi_programmer", <psi:programmer>, 500, 800, [
	<actuallyadditions:block_crystal:3>,
	<actuallyadditions:block_crystal:3>,
	<actuallyadditions:block_crystal:3>,
	<thermalfoundation:material:160>,
	<botania:autocraftinghalo>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:160>,
	<botania:craftinghalo>,
	<thermalfoundation:material:160>,
	<enderio:item_material:11>,
	<enderio:item_material:11>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:160>
]);

recipes.remove(<psi:cad_assembler>);
Altar.addAttunmentAltarRecipe("psi_cad_assembler", <psi:cad_assembler>, 500, 800, [
	<actuallyadditions:block_crystal:3>,
	<actuallyadditions:block_crystal:3>,
	<actuallyadditions:block_crystal:3>,
	<opencomputers:material:4>,
	<blood_dynamo:ingredient:2>,
	<opencomputers:material:4>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:160>,
	<actuallyadditions:block_crystal:3>,
	<actuallyadditions:block_crystal:3>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:160>
]);

var mapShaped as IIngredient[][IItemStack] = {
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
