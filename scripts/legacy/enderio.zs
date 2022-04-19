#packmode legacy

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

import mods.enderio.SagMill;
import mods.enderio.AlloySmelter;
import mods.immersiveengineering.AlloySmelter as Kiln;
import mods.inworldcrafting.FluidToItem;

Kiln.addRecipe(<enderio:item_alloy_ingot:3>, <ore:itemSilicon>, <ore:dustRedstone>, 200);
Kiln.addRecipe(<enderio:item_alloy_ingot:5>, <ore:ingotIron>, <minecraft:ender_pearl>, 200);
Kiln.addRecipe(<enderio:item_alloy_ingot:4>, <ore:ingotIron>, <ore:dustRedstone>, 200);

recipes.addShaped(<enderio:item_broken_spawner>, [
    [null,<actuallyadditions:item_misc:20>,null],
    [<actuallyadditions:item_misc:20>,<enderio:block_decoration1:14>,<actuallyadditions:item_misc:20>],
    [null,<actuallyadditions:item_misc:20>,null]
]);

SagMill.removeRecipe(<enderio:block_infinity>);
SagMill.removeRecipe(<enderio:block_infinity:1>);
SagMill.removeRecipe(<enderio:block_infinity:2>);

FluidToItem.transform(<enderio:item_material:20>, <liquid:astralsorcery.liquidstarlight>, [<ore:dustQuartzBlack>], false);

recipes.remove(<enderio:item_material:51>);
recipes.addShaped(<enderio:item_material:51> * 4, [
    [<ore:dustDiamond>,<ore:dustQuartz>,<ore:dustEmerald>],
    [<ore:dustQuartz>,<psi:material>,<ore:dustQuartz>],
    [<ore:dustEmerald>,<ore:dustQuartz>,<ore:dustDiamond>]
]);
recipes.addShaped(<enderio:item_material:51> * 4, [
    [<ore:dustDiamond>,<ore:dustQuartzBlack>,<ore:dustEmerald>],
    [<ore:dustQuartzBlack>,<psi:material>,<ore:dustQuartzBlack>],
    [<ore:dustEmerald>,<ore:dustQuartzBlack>,<ore:dustDiamond>]
]);
recipes.addShaped(<enderio:item_material:51> * 4, [
    [<ore:dustDiamond>,<ore:dustCertusQuartz>,<ore:dustEmerald>],
    [<ore:dustCertusQuartz>,<psi:material>,<ore:dustCertusQuartz>],
    [<ore:dustEmerald>,<ore:dustCertusQuartz>,<ore:dustDiamond>]
]);

recipes.remove(<enderio:item_material:52>);
recipes.addShaped(<enderio:item_material:52> * 4, [
    [<enderio:item_material:74>,<enderio:item_material:51>,<enderio:item_material:74>],
    [<enderio:item_material:51>,<astralsorcery:itemcraftingcomponent:2>,<enderio:item_material:51>],
    [<enderio:item_material:74>,<enderio:item_material:51>,<enderio:item_material:74>]
]);

recipes.remove(<enderio:item_material:67>);
recipes.addShaped(<enderio:item_material:67> * 4, [
    [<enderio:item_material:36>,<enderio:item_material:52>,<enderio:item_material:36>],
    [<enderio:item_material:52>,<draconicevolution:draconium_dust>,<enderio:item_material:52>],
    [<enderio:item_material:36>,<enderio:item_material:52>,<enderio:item_material:36>]
]);

recipes.addShaped(<enderio:item_liquid_conduit> * 2,[
    [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],
    [<minecraft:glass>,<minecraft:glass>,<minecraft:glass>],
    [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]
]);

var mapFirst as int[IIngredient] = {
    <ore:ingotEndSteel> : 16,
    <ore:ingotDarkSteel> : 8,
    <ore:ingotSteel> : 4,
    <ore:ingotIron> : 2,
    <ore:ingotCrudeSteel> : 1
};

var mapSecond as int[IIngredient] = {
    <immersiveengineering:stone_decoration:4> : 2,
    <earthworks:block_concrete> : 2,
    <immersivepetroleum:stone_decoration> : 2,
    <immersiveengineering:stone_decoration:5> : 2,
    <embers:blend_caminite> : 1,
    <earthworks:item_mud> : 1
};

var mapThird as int[IIngredient] = {
    <tconstruct:materials> : 2,
    <ore:ingotBrickNetherGlazed> : 2,
    <embers:archaic_brick> : 2,
    <tconstruct:soil> : 1,
    <tconstruct:materials:1> : 1,
    <tconstruct:materials:2> : 1,
    <earthworks:item_adobe> : 1
};

for first, a in mapFirst {
    for second, b in mapSecond {
        for third, c in mapThird {
            var amount as int = a * b * c;
            AlloySmelter.addRecipe(<enderio:item_alloy_ingot:9> * amount, [first,second,third], 5000);
        }
    }
}

// Re-add Alloying Recipes
/*Alloy: Nethercotta*/
AlloySmelter.addRecipe(<enderio:item_material:72>, [<ore:ingotBrickNether>,<ore:cropNetherWart> * 4,<ore:itemClay> * 6], 20000);
/*Alloy: Electrical Steel*/
AlloySmelter.addRecipe(<enderio:item_alloy_ingot>, [<ore:ingotIron>,<ore:dustCoal>,<ore:itemSilicon>], 10000);
/*Alloy: Electrical Steel, Variant*/
AlloySmelter.addRecipe(<enderio:item_alloy_ingot>, [<ore:ingotSteel>,<ore:itemSilicon>], 10000);
/*Alloy: Energetic Alloy*/
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:1>, [<ore:ingotGold>,<ore:dustRedstone>,<ore:dustGlowstone>], 10000);
/*Alloy: Vibrant Alloy*/
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:2>, [<ore:ingotEnergeticAlloy>,<ore:enderpearl>], 10000);
/*Alloy: Redstone Alloy*/
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:3>, [<ore:itemSilicon>,<ore:dustRedstone>], 10000);
/*Alloy: Conductive Iron*/
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:4>, [<ore:ingotIron>,<ore:dustRedstone>], 10000);
/*Alloy: Pulsating Iron*/
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:5>, [<ore:ingotIron>,<ore:enderpearl>], 10000);
/*Alloy: Dark Steel*/
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:6>, [<ore:ingotIron>,<ore:dustCoal>,<ore:obsidian>], 20000);
/*Alloy: Dark Steel, Variant*/
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:6>, [<ore:ingotSteel>,<ore:obsidian>], 10500);
/*Alloy: End Steel*/
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:8>, [<ore:endstone>,<ore:ingotDarkSteel>,<ore:obsidian>], 20000);
/*Alloy: Construction Alloy*/
// --> see above
/*Alloy: Soularium*/
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:7>, [<ore:ingotGold>,<minecraft:soul_sand>], 10000);
/*Chassis*/
AlloySmelter.addRecipe(<enderio:item_material:1>, [<enderio:item_material>,<ore:dyeMachine>], 3600);
/*Enhanced Chassis*/
AlloySmelter.addRecipe(<enderio:item_material:54>, [<enderio:item_material:66>,<ore:dyeEnhancedMachine>], 3600);
/*Soul Chassis*/
AlloySmelter.addRecipe(<enderio:item_material:53>, [<enderio:item_material>,<ore:dyeSoulMachine>], 3600);
/*Alloy: Industrial Insulation*/
AlloySmelter.addRecipe(<enderio:block_industrial_insulation>, [<ore:dustLapis>,<ore:wool>,<ore:ingotConstructionAlloy>], 5000);
/*Alloy: Manyullyn*/
AlloySmelter.addRecipe(<tconstruct:ingots:2>, [<ore:ingotCobalt>,<ore:ingotArdite>], 10000);
/*Alloy: Steel*/
AlloySmelter.addRecipe(<thermalfoundation:material:160>, [<ore:ingotIron>,<minecraft:coal:0> * 2,<ore:dustCoal> * 2], 10000);
/*Alloy: Signalum (Thermal Expansion)*/
AlloySmelter.addRecipe(<thermalfoundation:material:165> * 4, [<ore:ingotCopper> * 3,<ore:ingotSilver>,<ore:dustRedstone> * 10], 32000);
/*Alloy: Lumium from dust (Thermal Expansion)*/
AlloySmelter.addRecipe(<thermalfoundation:material:166> * 4, [<ore:ingotTin> * 3,<ore:ingotSilver>,<ore:dustGlowstone> * 4], 32000);
/*Alloy: Lumium (Thermal Expansion)*/
AlloySmelter.addRecipe(<thermalfoundation:material:166> * 4, [<ore:ingotTin> * 3,<ore:ingotSilver>,<ore:glowstone>], 32000);
/*Alloy: Enderium Base (Thermal Expansion)*/
AlloySmelter.addRecipe(<enderio:item_material:39> * 4, [<ore:ingotLead> * 3,<ore:ingotPlatinum>,<ore:enderpearl> * 4], 4000);
/*Alloy: Enderium (Thermal Expansion)*/
AlloySmelter.addRecipe(<thermalfoundation:material:167> * 2, [<ore:ingotEnderiumBase> * 2,<ore:sand>], 25000);
/*Alloy: Steel (Oredict)*/
AlloySmelter.addRecipe(<thermalfoundation:material:160>, [<ore:ingotIron>,<ore:fuelCoke>], 4000);

/*Alloy: Endergy Crude Steel*/
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot>, [<ore:gravel>,<ore:itemClay>,<ore:cobblestone>], 5000);
/*Alloy: Endergy Crystalline Alloy*/
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:1>, [<ore:itemPulsatingPowder>,<ore:ingotGold>], 10000);
/*Alloy: Endergy Crystalline Pink Slime*/
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:2>, [<ore:itemPulsatingPowder>,<ore:ingotKnightslime>], 10000);
/*Alloy: Endergy Melodic Alloy*/
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:3>, [<minecraft:chorus_fruit_popped>,<ore:ingotEndSteel>], 20000);
/*Alloy: Endergy Stellar Alloy*/
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:4> * 2, [<minecraft:nether_star>,<ore:ingotMelodicAlloy>,<ore:itemClay> * 4], 20000);
/*Alloy: Energetic Silver Alloy*/
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:5>, [<ore:ingotSilver>,<ore:dustRedstone>,<ore:dustGlowstone>], 10000);
/*Alloy: Vivid Alloy*/
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:6>, [<ore:ingotEnergeticSilver>,<ore:enderpearl>], 10000);
