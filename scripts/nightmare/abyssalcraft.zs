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

import mods.abyssalcraft.Rituals;
import mods.abyssalcraft.Transmutator;
import mods.astralsorcery.Altar;
import mods.bloodmagic.AlchemyTable;
import mods.evilcraft.BloodInfuser;
import mods.jei.JEI;
import mods.immersiveengineering.Refinery;
import mods.thermalexpansion.Transposer;

JEI.removeAndHide(<abyssalcraft:ccluster2>);
JEI.removeAndHide(<abyssalcraft:ccluster3>);
JEI.removeAndHide(<abyssalcraft:ccluster4>);
JEI.removeAndHide(<abyssalcraft:ccluster5>);
JEI.removeAndHide(<abyssalcraft:ccluster6>);
JEI.removeAndHide(<abyssalcraft:ccluster7>);
JEI.removeAndHide(<abyssalcraft:ccluster8>);

recipes.remove(<abyssalcraft:coralium>);
recipes.remove(<abyssalcraft:crystallizer>);

var recipeMapShaped as IIngredient[][][IItemStack] = {
    <abyssalcraft:coraliumstone> : [
        [<ore:stone>,<ore:stone>,<ore:stone>],
        [<ore:stone>,<abyssalcraft:ccluster9>,<ore:stone>],
        [<ore:stone>,<ore:stone>,<ore:stone>]
    ],
    <abyssalcraft:ccluster9> : [
    	[<abyssalcraft:coralium>,<abyssalcraft:coralium>,<abyssalcraft:coralium>],
    	[<abyssalcraft:coralium>,<abyssalcraft:coralium>,<abyssalcraft:coralium>],
    	[<abyssalcraft:coralium>,<abyssalcraft:coralium>,<abyssalcraft:coralium>]
    ],
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}

Transposer.addFillRecipe(<abyssalcraft:coralium>, <botania:manaresource:1>, <liquid:colour_out_of_space>*250, 2048);

recipes.remove(<abyssalcraft:gatewaykey>);
AlchemyTable.addRecipe(<abyssalcraft:gatewaykey>, [
	<abyssalcraft:cpearl>,<abyssalcraft:oc>,<abyssalcraft:cpearl>,
	<minecraft:blaze_rod>,<minecraft:blaze_rod>,<minecraft:blaze_rod>
	], 3000, 100, 0);

game.setLocalization("asorahGatewayKey.desc","This Recipe was changed in this Packmode!");
Rituals.modifyRitualOfferings("asorahGatewayKey", [
	<abyssalcraft:eoa>,
	<enderio:item_alloy_ingot:7>,
	<abyssalcraft:ingotblock:1>,
	<enderio:item_alloy_ingot:7>,
	<abyssalcraft:eoa>,
	<enderio:item_alloy_ingot:7>,
	<abyssalcraft:ingotblock:1>,
	<enderio:item_alloy_ingot:7>
]);

game.setLocalization("summonAsorah.desc","This Recipe was changed in this Packmode!");
Rituals.modifyRitualOfferings("summonAsorah", [
	<scalinghealth:heartcontainer>,
	<enderutilities:enderpart:12>,
	<abyssalcraft:skin>,
	<abyssalcraft:skin>,
	<evilcraft:corrupted_tear>,
	<evilcraft:corrupted_tear>,
	<abyssalcraft:platec>,
	<abyssalcraft:platec>
]);

game.setLocalization("altarOfChagarothTop.desc","This Recipe was changed in this Packmode!");
Rituals.modifyRitualOfferings("altarOfChagarothTop", [
	<evilcraft:bowl_of_promises:5>,
	<thermalfoundation:material:136>,
	<abyssalcraft:dreadplate>,
	<abyssalcraft:skin:1>,
	<abyssalcraft:dreadplate>,
	<abyssalcraft:skin:1>,
	<abyssalcraft:dreadplate>,
	<thermalfoundation:material:136>
]);

game.setLocalization("altarOfChagarothBottom.desc","This Recipe was changed in this Packmode!");
mods.abyssalcraft.Rituals.modifyRitualOfferings("altarOfChagarothBottom", [
	<abyssalcraft:dreadshard>,
	<abyssalcraft:ingotblock:2>,
	<abyssalcraft:ingotblock>,
	<abyssalcraft:ingotblock:2>,
	<abyssalcraft:gatewaykeydl>,
	<abyssalcraft:ingotblock:2>,
	<abyssalcraft:ingotblock>,
	<abyssalcraft:ingotblock:2>
]);

Rituals.modifyRitualSacrifice("oblivionCatalyst", <evilcraft:promise:3>);

Rituals.modifyRitualBookType("powerStone", 2);

recipes.remove(<abyssalcraft:sacrificialaltar>);    	
Altar.addDiscoveryAltarRecipe("ac_sacrificialaltar", <abyssalcraft:sacrificialaltar>, 60, 200, [
	<abyssalcraft:powerstonetracker>,
	<abyssalcraft:cpearl>,
	<abyssalcraft:powerstonetracker>,
	<ore:blockSeared>,
	<astralsorcery:blockaltar>,
	<ore:blockSeared>,
	<ore:blockSeared>,
	<abyssalcraft:shadowgem>,
	<ore:blockSeared>
]);
