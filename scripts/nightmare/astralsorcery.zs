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
import mods.astralsorcery.LiquidInteraction;
import mods.botania.ManaInfusion;
import mods.botania.PureDaisy;
import mods.forestry.Carpenter;
import mods.immersivetechnology.MeltingCrucible;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Transposer;

<astralsorcery:blockchalice>.addShiftTooltip("Water + Lava\n= Cobblestone\nWater + Liquid Starlight\n= Ice\nLava + Liquid Starlight\n= Sand\nLiquid Coralium + Antimatter\n= Coralium Stone\nLiquid Coralium + Liquid Starlight\n= Coralium Gem","Hold [shift] to show interactions.");
LiquidInteraction.addInteraction(<liquid:liquidcoralium> * 80, 0.3, <liquid:liquidantimatter> * 10, 0.1, 400, <abyssalcraft:stone:4>);
LiquidInteraction.addInteraction(<liquid:liquidcoralium> * 80, 0.3, <liquid:astralsorcery.liquidstarlight> * 20, 0.1, 400, <abyssalcraft:coralium>);

var mapStarlight as int[IItemStack] = {
    <astralsorcery:itemcraftingcomponent> : 1000,
    <astralsorcery:itemcraftingcomponent:4> : 2000,
    <astralsorcery:itemrockcrystalsimple> : 4000,
    <astralsorcery:itemcelestialcrystal> : 8000,
};

for item, amount in mapStarlight {
    Crucible.addRecipe(<liquid:astralsorcery.liquidstarlight> * amount, item, 10000);
    MeltingCrucible.addRecipe(<liquid:astralsorcery.liquidstarlight> * amount, item, 76800, 160);
}

Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder");
ManaInfusion.addInfusion(<astralsorcery:itemusabledust>, <ore:dustGlowstone>, 500);

Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/nocturnalpowder");
ManaInfusion.addInfusion(<astralsorcery:itemusabledust:1>, <ore:gemDarkCrushed>, 500);

recipes.remove(<astralsorcery:blockblackmarble>);
PureDaisy.addRecipe(<astralsorcery:blockmarble>, <astralsorcery:blockblackmarble>);

furnace.remove(<astralsorcery:itemcraftingcomponent:1>);

Transposer.addFillRecipe(<astralsorcery:itemcraftingcomponent:3>, <minecraft:glass_pane>,  <liquid:astralsorcery.liquidstarlight> * 250, 2000);

Altar.addDiscoveryAltarRecipe("internal/altar/grindstone", <astralsorcery:blockmachine:1>, 200, 200, [
    null, null, null,
    null, <contenttweaker:grind_wheel>, <ore:plankWood>,
    <ore:stickWood>,  <ore:stickWood>, <ore:plankWood>
]);

Altar.addDiscoveryAltarRecipe("internal/altar/lightwell", <astralsorcery:blockwell>, 200, 200, [
    <astralsorcery:blockmarble:6>, null, <astralsorcery:blockmarble:6>,
    <astralsorcery:blockmarble:4>, <astralsorcery:itemrockcrystalsimple>, <astralsorcery:blockmarble:4>,
    <astralsorcery:itemcraftingcomponent>, <forestry:hardened_machine>, <astralsorcery:itemcraftingcomponent>
]);

Altar.addDiscoveryAltarRecipe("internal/altar/upgrade_tier2", <astralsorcery:blockaltar:1>, 200, 200, [
    <astralsorcery:blockmarble:2>, <astralsorcery:itemrockcrystalsimple>, <astralsorcery:blockmarble:2>,
    <astralsorcery:blockmarble:4>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <astralsorcery:blockmarble:4>,
    <astralsorcery:blockmarble:2>, <enderio:item_material>, <astralsorcery:blockmarble:2>
]);

Altar.addAttunementAltarRecipe("internal/altar/upgrade_tier3", <astralsorcery:blockaltar:2>, 500, 800, [
    <astralsorcery:itemcraftingcomponent>,
    <astralsorcery:itemcelestialcrystal>,
    <astralsorcery:itemcraftingcomponent>,
    <astralsorcery:blockmarble:4>,
    <contenttweaker:starsteel_ingot>,
    <astralsorcery:blockmarble:4>,
    <astralsorcery:blockmarble:2>,
    <embers:ancient_motive_core>,
    <astralsorcery:blockmarble:2>,
    <astralsorcery:itemshiftingstar>,
    <astralsorcery:itemshiftingstar>,
    <extrautils2:decorativesolid:3>,
    <extrautils2:decorativesolid:3>,
]);

Altar.addConstellationAltarRecipe("internal/altar/upgrade_tier4", <astralsorcery:blockaltar:3>, 800, 200, [
    <draconicevolution:draconium_block:1>,
    <botania:lens:14>,
    <draconicevolution:draconium_block:1>,
    <botanicadds:gaiasteel_ingot>,
    <enderio:item_material:54>,
    <botanicadds:gaiasteel_ingot>,
    <draconicevolution:draconium_block:1>,
    <abyssalcraft:gatekeeperessence>,
    <draconicevolution:draconium_block:1>,
    <astralsorcery:blockmarble:6>,
    <astralsorcery:blockmarble:6>,
    <astralsorcery:blockmarble:6>,
    <astralsorcery:blockmarble:6>,
    <astralsorcery:blockblackmarble>,
    <astralsorcery:blockblackmarble>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:blockblackmarble>,
    <astralsorcery:blockblackmarble>,
]);

var y as IItemStack = <morebees:graincrystal>;
var rockcrystal as IItemStack = <astralsorcery:itemrockcrystalsimple>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 400, fract: 0, purity: 100, sizeOverride: -1}}});
var celestialcrystal as IItemStack = <astralsorcery:itemcelestialcrystal>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, purity: 100, sizeOverride: -1}}});

Carpenter.addRecipe(rockcrystal, [
    [y,<astralsorcery:itemrockcrystalsimple>,y],
    [<astralsorcery:itemcraftingcomponent:4>,<abyssalcraft:gatekeeperessence>,<astralsorcery:itemcraftingcomponent:4>],
    [y,<astralsorcery:itemrockcrystalsimple>,y]
], 120, <liquid:astralsorcery.liquidstarlight>*10000);

Carpenter.addRecipe(celestialcrystal, [
    [y,<astralsorcery:itemcelestialcrystal>,y],
    [<astralsorcery:itemcraftingcomponent:4>,<abyssalcraft:gatekeeperessence>,<astralsorcery:itemcraftingcomponent:4>],
    [y,<astralsorcery:itemcelestialcrystal>,y]
], 120, <liquid:astralsorcery.liquidstarlight>*10000);
