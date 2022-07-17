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
import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;
import mods.enderio.SagMill;
import mods.evilcraft.BloodInfuser;
import mods.jei.JEI;
import mods.immersiveengineering.Refinery;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;
import scripts.functions.calc_scientific;

JEI.removeAndHide(<abyssalcraft:materializer>);

recipes.remove(<abyssalcraft:coralium>);
recipes.remove(<abyssalcraft:crystallizer>);

Crucible.addRecipe(<liquid:liquidantimatter> * 10, <appliedenergistics2:material:6>, 500000);
Crucible.addRecipe(<liquid:liquidantimatter> * 1000, <ic2:itemmisc:202>, 500000);

recipes.remove(<abyssalcraft:crate>);
calc_basic(<abyssalcraft:crate> * 2, <actuallyadditions:block_misc:4>, <minecraft:chest>);

recipes.remove(<abyssalcraft:drainstaff>);
calc_scientific(<abyssalcraft:drainstaff>,<embers:staff_ember>,<abyssalcraft:oblivionshard>);

var recipeMapShaped as IIngredient[][][IItemStack] = {
	<abyssalcraft:transmutator> : [
		[<abyssalcraft:cstonebrick>,<abyssalcraft:cstonebrick>,<abyssalcraft:cstonebrick>],
		[<abyssalcraft:cstonebrick>,<abyssalcraft:transmutationgem:*>.noReturn(),<abyssalcraft:cstonebrick>],
		[<ore:blockLiquifiedCoralium>,<botanicadds:rune_energy>,<ore:blockLiquifiedCoralium>]
	],
	<abyssalcraft:dreadcloth> : [
		[<abyssalcraft:dreadfragment>,<ore:ingotDreadium>,<abyssalcraft:dreadfragment>],
		[<ore:ingotDreadium>,<randomthings:ingredient:12>,<ore:ingotDreadium>],
		[<abyssalcraft:dreadfragment>,<ore:ingotDreadium>,<abyssalcraft:dreadfragment>]
	]
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}

recipes.remove(<abyssalcraft:necronomicon>);
Altar.addDiscoveryAltarRecipe("necronomicon", <abyssalcraft:necronomicon>, 200, 200, [
	<evilcraft:dark_power_gem>,
	<minecraft:ender_eye>,
	<evilcraft:dark_power_gem>,
	<minecraft:ender_eye>,
	<minecraft:book>,
	<minecraft:ender_eye>,
	<evilcraft:dark_power_gem>,
	<minecraft:ender_eye>,
	<evilcraft:dark_power_gem>
]);

Transposer.addFillRecipe(<abyssalcraft:coralium>, <botania:manaresource:21>, <liquid:colour_out_of_space>*50, 2048);

ManaInfusion.addAlchemy(<abyssalcraft:coralium>, <abyssalcraft:stone:4>, 5000);

recipes.remove(<abyssalcraft:gatewaykey>);
AlchemyTable.addRecipe(<abyssalcraft:gatewaykey>, [
	<abyssalcraft:cpearl>,<abyssalcraft:oc>,<abyssalcraft:cpearl>,
	<minecraft:blaze_rod>,<minecraft:blaze_rod>,<minecraft:blaze_rod>
	], 3000, 100, 0);

game.setLocalization("asorahGatewayKey.desc","This Recipe was changed in this Packmode!");
Rituals.modifyRitualOfferings("asorahGatewayKey", [
	<abyssalcraft:psdl>,
	<botania:manaresource:4>,
	<abyssalcraft:ingotblock:1>,
	<botania:manaresource:4>,
	<abyssalcraft:eoa>,
	<botania:manaresource:4>,
	<abyssalcraft:ingotblock:1>,
	<botania:manaresource:4>
]);

game.setLocalization("summonAsorah.desc","This Recipe was changed in this Packmode!");
Rituals.modifyRitualOfferings("summonAsorah", [
	<contenttweaker:malignant_heart>,
	<xreliquary:salamander_eye>,
	<abyssalcraft:skin>,
	<xreliquary:infernal_claws>,
	<abyssalcraft:skin>,
	<xreliquary:infernal_claws>,
	<abyssalcraft:skin>,
	<xreliquary:salamander_eye>
]);

game.setLocalization("altarOfChagarothTop.desc","This Recipe was changed in this Packmode!");
Rituals.modifyRitualOfferings("altarOfChagarothTop", [
	<evilcraft:bowl_of_promises:5>,
	<abyssalcraft:oc>,
	<contenttweaker:corruptedstarmetal>,
	<abyssalcraft:skin:1>,
	<contenttweaker:malignant_heart>,
	<abyssalcraft:skin:1>,
	<contenttweaker:corruptedstarmetal>,
	<abyssalcraft:oc>
]);

game.setLocalization("altarOfChagarothBottom.desc","This Recipe was changed in this Packmode!");
Rituals.modifyRitualOfferings("altarOfChagarothBottom", [
	<xreliquary:infernal_chalice>,
	<abyssalcraft:ingotblock:2>,
	<contenttweaker:corruptedstarmetal>,
	<abyssalcraft:ingotblock>,
	<abyssalcraft:gatewaykeydl>,
	<abyssalcraft:ingotblock>,
	<contenttweaker:corruptedstarmetal>,
	<abyssalcraft:ingotblock:2>
]);

game.setLocalization("transmutationGem.desc","This Recipe was changed in this Packmode!");
Rituals.modifyRitualOfferings("transmutationGem", [
	<quantumflux:craftingpiece:6>,
	<xreliquary:mob_ingredient:7>,
	<embers:ember_cluster>,
	<xreliquary:mob_ingredient:7>,
	<quantumflux:craftingpiece:6>,
	<xreliquary:mob_ingredient:7>,
	<embers:ember_cluster>,
	<xreliquary:mob_ingredient:7>
]);

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

BloodInfuser.addRecipe(<minecraft:concrete:15>, <liquid:evilcraftblood> * 4000, 3, <abyssalcraft:stone:7>, 100, 0);

SagMill.addRecipe([
	<abyssalcraft:crystalfragment:5>,
	<abyssalcraft:crystalfragment:6>,
	<abyssalcraft:crystalfragment:4>,
	<abyssalcraft:crystalfragment:7>,
], [0.15,0.15,0.15,0.15], <immersiveengineering:shader_bag>, "MULTIPLY_OUTPUT", 5000);

recipes.remove(<abyssalcraft:powerstonetracker>);
Altar.addDiscoveryAltarRecipe("powerstonetracker", <abyssalcraft:powerstonetracker> * 4, 200, 200, [
    <abyssalcraft:coralium>, <abyssalcraft:coralium>, <abyssalcraft:coralium>,
    <abyssalcraft:coralium>, <minecraft:ender_eye>, <abyssalcraft:coralium>,
    <abyssalcraft:coralium>, <abyssalcraft:coralium>, <abyssalcraft:coralium>
]);

recipes.remove(<abyssalcraft:energypedestal>);
RuneAltar.addRecipe(<abyssalcraft:energypedestal>, [
	<xreliquary:pedestal>,
	<abyssalcraft:shadowgem>,
	<abyssalcraft:cpearl>,
	<abyssalcraft:stone:7>,
	<abyssalcraft:stone:7>,
	<abyssalcraft:stone:7>,
	<abyssalcraft:stone:7>
], 10000);
