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

import mods.enderio.AlloySmelter;
import mods.forestry.Carpenter;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.Mixer;
import mods.jei.JEI;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Transposer;

JEI.removeAndHide(<thermalfoundation:material:656>);

Alloy.removeRecipe(<liquid:enderium>);
Alloy.removeRecipe(<liquid:lumium>);
Alloy.removeRecipe(<liquid:signalum>);

RedstoneFurnace.addPyrolysisRecipe(<thermalfoundation:material:802>, <minecraft:coal:1>, 2000, 100);

var recipeMapShaped as IIngredient[][][IItemStack] = {
    <thermalfoundation:material:513> : [
    	[null,<actuallyadditions:item_crystal>,<ore:ingotGold>],
    	[<actuallyadditions:item_crystal>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal>],
    	[<ore:ingotGold>,<actuallyadditions:item_crystal>,null]
    ],
    <thermalfoundation:material:514> : [
    	[null,<actuallyadditions:item_crystal>,<ore:ingotSilver>],
    	[<actuallyadditions:item_crystal>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal>],
    	[<ore:ingotSilver>,<actuallyadditions:item_crystal>,null]
    ],
    <thermalfoundation:material:515> : [
    	[null,<actuallyadditions:item_crystal>,<ore:ingotElectrum>],
    	[<actuallyadditions:item_crystal>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal>],
    	[<ore:ingotElectrum>,<actuallyadditions:item_crystal>,null]	
    ],
	<thermalfoundation:material:23> : [
		[null,<tconstruct:materials>,null],
		[<tconstruct:materials>,<thermalfoundation:material:22>,<tconstruct:materials>],
		[null,<tconstruct:materials>,null]
	],
	<thermalfoundation:material:640> : [
		[<rs_ctr:wire>,<rs_ctr:wire>,<rs_ctr:wire>],
		[<rs_ctr:edge_trigger>,<rs_ctr:constant>,<rs_ctr:pulse_gen>],
		[<ore:plateElectrum>,<ore:plateElectrum>,<ore:plateElectrum>]
	],
	<thermalfoundation:material:512> : [
		[<ore:stickSteel>,<immersiveengineering:metal_device1:6>,<ore:stickSteel>],
		[<enderio:item_redstone_conduit>,<immersiveengineering:material:9>,<enderio:item_redstone_conduit>],
		[<ore:stickSteel>,<immersiveengineering:metal_device1:6>,<ore:stickSteel>]
	]
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}

var mapAlloys as IIngredient[][IItemStack] = {
	<thermalfoundation:material:165> : [<contenttweaker:signalum_base_ingot>,<ore:clathrateRedstone>,<ore:ingotCopper>,<ore:dustRedstone>*10],
	<thermalfoundation:material:166> : [<contenttweaker:lumium_base_ingot>,<ore:clathrateGlowstone>,<ore:ingotTin>,<ore:dustGlowstone>*4],
	<thermalfoundation:material:167> : [<enderio:item_material:39>,<ore:clathrateEnder>,<ore:ingotLead>,<minecraft:ender_pearl>*4]
};

// AlloySmelter.removeRecipe(<enderio:item_material:39>);

for alloy, data in mapAlloys {
	var base_ingot as IItemStack = data[0];
	var clathrate as IIngredient = data[1];
	var filler as IIngredient = data[2];
	var dust as IIngredient = data[3];

	AlloySmelter.addRecipe(alloy * 2, [base_ingot, <ore:ingotUranium>, clathrate*4], 25000);
	AlloySmelter.addRecipe(base_ingot * 4, [<ore:ingotManyullyn>, filler*3, dust], 4000);
}

recipes.remove(<thermalfoundation:material:1024>);
recipes.addShapeless(<thermalfoundation:material:1024> * 2, [<minecraft:blaze_powder>,<minecraft:blaze_powder>,<bloodarsenal:base_item:2>,<ore:dustSulfur>]);

recipes.remove(<thermalfoundation:material:1025>);
recipes.addShapeless(<thermalfoundation:material:1025> * 2, [<thermalfoundation:material:2049>,<thermalfoundation:material:2049>,<bloodarsenal:base_item:2>,<minecraft:snowball>]);

recipes.remove(<thermalfoundation:material:1026>);
recipes.addShapeless(<thermalfoundation:material:1026> * 2, [<thermalfoundation:material:2051>,<thermalfoundation:material:2051>,<bloodarsenal:base_item:2>,<ore:dustSaltpeter>]);

recipes.remove(<thermalfoundation:material:1027>);
recipes.addShapeless(<thermalfoundation:material:1027> * 2, [<thermalfoundation:material:2053>,<thermalfoundation:material:2053>,<bloodarsenal:base_item:2>,<ore:dustObsidian>]);

Transposer.addFillRecipe(<thermalfoundation:material:1028>, <thermalfoundation:material:72>, <fluid:colour_out_of_space> * 1000, 4000);

Transposer.addFillRecipe(<thermalfoundation:material:772>, <thermalfoundation:material:768>, <fluid:sodium_hydroxide> * 100, 1000);
Transposer.addFillRecipe(<thermalfoundation:material:772>, <thermalfoundation:material:769>, <fluid:sodium_hydroxide> * 100, 1000);

recipes.remove(<thermalfoundation:diagram_redprint>);
Transposer.addFillRecipe(<thermalfoundation:diagram_redprint>, <minecraft:paper>, <fluid:redstone> * 200, 2000);

Crucible.removeRecipe(<thermalfoundation:material:1024>);
Mixer.addRecipe(<liquid:pyrotheum>*250, <liquid:lava>*250, [<thermalfoundation:material:1024>], 1024);

Crucible.removeRecipe(<thermalfoundation:material:1025>);
Mixer.addRecipe(<liquid:cryotheum>*250, <liquid:ice>*250, [<thermalfoundation:material:1025>], 1024);

Crucible.removeRecipe(<thermalfoundation:material:1026>);
Mixer.addRecipe(<liquid:aerotheum>*250, <liquid:cloud_seed_concentrated>*250, [<thermalfoundation:material:1026>], 1024);

Crucible.removeRecipe(<thermalfoundation:material:892>);
Crucible.addRecipe(<liquid:oil>*250,<thermalfoundation:material:892>,2000);
CokeOven.addRecipe(<thermalfoundation:material:892> * 16, 0, <forestry:bituminous_peat>, 400);

Crucible.addRecipe(<liquid:coal>*200,<immersiveengineering:material:17>,4000);

Crucible.removeRecipe(<thermalfoundation:material:1027>);
Mixer.addRecipe(<liquid:petrotheum>*250, <liquid:crude_oil>*250, [<thermalfoundation:material:1027>], 1024);
Mixer.addRecipe(<liquid:petrotheum>*250, <liquid:oil>*250, [<thermalfoundation:material:1027>], 1024);

Mixer.addRecipe(<liquid:mana>*250, <liquid:liquiddna>*250, [<thermalfoundation:material:1028>], 1024);

var upgradeKit as IIngredient[][IItemStack] = {
    <thermalfoundation:upgrade> : [<ore:plateInvar>, <thermalfoundation:material:291>, <forestry:thermionic_tubes:3>],
    <thermalfoundation:upgrade:1> : [<ore:plateElectrum>, <thermalfoundation:material:258>, <forestry:thermionic_tubes:2>],
    <thermalfoundation:upgrade:2> : [<ore:plateSignalum>, <redstonearsenal:material:96>, <forestry:thermionic_tubes:7>],
    <thermalfoundation:upgrade:3> : [<ore:plateEnderium>, <thermalfoundation:material:294>, <forestry:thermionic_tubes:12>],
};

for kit, recipe in upgradeKit {
    var plate as IIngredient = recipe[0];
    var gear as IItemStack = recipe[1];
    var tube as IIngredient = recipe[2];

    recipes.remove(kit);
    Carpenter.addRecipe(kit, [
        [plate,tube,plate],
        [tube,<ic2:itemmisc:260>,tube],
        [plate,tube,plate]
    ], 20, <liquid:lubricant> * 1000, gear);
}

Casting.addTableRecipe(<thermalfoundation:material:22>, <enderio:item_material:9>, <liquid:creosote>, 1000, true, 100);
Casting.addTableRecipe(<thermalfoundation:material:23>, <enderio:item_material:10>, <liquid:stone>, 288, true, 100);

Transposer.addFillRecipe(<thermalfoundation:material:893>, <thermalfoundation:material:892>, <fluid:redstone> * 250, 2000);
Transposer.addFillRecipe(<thermalfoundation:material:894>, <thermalfoundation:material:892>, <fluid:glowstone> * 250, 2000);
Transposer.addFillRecipe(<thermalfoundation:material:895>, <thermalfoundation:material:892>, <fluid:ender> * 250, 2000);
