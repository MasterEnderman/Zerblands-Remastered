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
import mods.astralsorcery.Utils;
import mods.bloodmagic.AlchemyTable;
import mods.botania.ManaInfusion;
import mods.botania.PureDaisy;
import mods.forestry.Carpenter;
import mods.immersivetechnology.MeltingCrucible;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Transposer;

<astralsorcery:blockchalice>.addShiftTooltip("Water + Lava\n= Cobblestone\nWater + Liquid Starlight\n= Ice\nLava + Liquid Starlight\n= Sand\nLiquid Coralium + Antimatter\n= Coralium Stone\nLiquid Coralium + Liquid Starlight\n= Coralium Gem","Hold [shift] to show interactions.");
LiquidInteraction.addInteraction(<liquid:liquidcoralium> * 80, 0.3, <liquid:liquidantimatter> * 10, 0.1, 400, <abyssalcraft:stone:4>);
LiquidInteraction.addInteraction(<liquid:liquidcoralium> * 80, 0.3, <liquid:astralsorcery.liquidstarlight> * 20, 0.1, 400, <abyssalcraft:coralium>);

recipes.remove(<astralsorcery:itemcraftingcomponent:5>);

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
Transposer.addFillRecipe(<astralsorcery:itemcraftingcomponent:5>, <minecraft:paper>, <liquid:astralsorcery.liquidstarlight> * 250, 2000);

Altar.addDiscoveryAltarRecipe("internal/altar/grindstone", <astralsorcery:blockmachine:1>, 200, 200, [
    null, null, null,
    null, <contenttweaker:grind_wheel>, <ore:plankWood>,
    <ore:stickWood>,  <ore:stickWood>, <ore:plankWood>
]);

Altar.addDiscoveryAltarRecipe("internal/altar/attunementrelay", <astralsorcery:blockattunementrelay>, 200, 200, [
    null, <rs_ctr:rs_port:3>, null,
    <ore:nuggetDawnstone>, <ore:acEssence>, <ore:nuggetDawnstone>,
    <ore:livingwood>,  <ore:stoneMarble>, <ore:livingwood>
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

Altar.addAttunementAltarRecipe("internal/altar/ritualpedestal", <astralsorcery:blockritualpedestal>, 500, 800, [
    <astralsorcery:blockmarble:4>,
    <astralsorcery:itemcelestialcrystal>,
    <astralsorcery:blockmarble:4>,
    <astralsorcery:blockmarble:2>,
    <minecraft:beacon>,
    <astralsorcery:blockmarble:2>,
    <astralsorcery:blockmarble:6>,
    <bloodmagic:ritual_controller>,
    <astralsorcery:blockmarble:6>,
    <embers:aspectus_dawnstone>,
    <embers:aspectus_dawnstone>,
    <astralsorcery:blockmarble:2>,
    <astralsorcery:blockmarble:2>,
]);

Altar.addAttunementAltarRecipe("internal/altar/gateway", <astralsorcery:blockcelestialgateway>, 500, 800, [
    <astralsorcery:itemusabledust>,
    <botanicadds:rune_tp>,
    <astralsorcery:itemusabledust>,
    <rs_ctr:rs_port:3>,
    <enderio:block_travel_anchor>,
    <rs_ctr:rs_port:3>,
    <astralsorcery:blockmarble:6>,
    <botania:starfield>,
    <astralsorcery:blockmarble:6>,
    <ore:ingotStarSteel>,
    <ore:ingotStarSteel>,
    <ore:ingotStarSteel>,
    <ore:ingotStarSteel>
]);

Altar.addAttunementAltarRecipe("attunementaltar", <astralsorcery:blockattunementaltar>, 500, 800, [
    null,
    <astralsorcery:itemcelestialcrystal>,
    null,
    <contenttweaker:starsteel_ingot>,
    <astralsorcery:blockattunementrelay>,
    <contenttweaker:starsteel_ingot>,
    <astralsorcery:blockmarble:6>,
    <embers:field_chart>,
    <astralsorcery:blockmarble:6>,
    <ore:gemAquamarine>,
    <ore:gemAquamarine>,
    <astralsorcery:blockmarble:6>,
    <astralsorcery:blockmarble:6>,
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

Altar.addConstellationAltarRecipe("internal/altar/rituallink", <astralsorcery:blockrituallink> * 2, 800, 200, [
    <contenttweaker:alfsteel_nugget>,
    <contenttweaker:alfsteel_ingot>,
    <contenttweaker:alfsteel_nugget>,
    <astralsorcery:itemcraftingcomponent:3>,
    <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:3>,
    <botania:bifrostpermpane>,
    <randomthings:spectreanchor>,
    <botania:bifrostpermpane>,
    null,
    null,
    null,
    null,
    <contenttweaker:alfsteel_nugget>,
    <contenttweaker:alfsteel_nugget>,
    null,
    null,
    null,
    null,
    <botania:bifrostpermpane>,
    <botania:bifrostpermpane>,
]);

Altar.addConstellationAltarRecipe("internal/altar/starlightinfuser", <astralsorcery:blockstarlightinfuser>, 800, 200, [
    <astralsorcery:blockworldilluminator>,
    <astralsorcery:blockattunementrelay>,
    <astralsorcery:blockworldilluminator>,
    <tconstruct:large_plate>.withTag({Material: "aquamarine"}),
    <xreliquary:altar>,
    <tconstruct:large_plate>.withTag({Material: "aquamarine"}),
    <astralsorcery:blockmarble:4>,
    <astralsorcery:blockmarble:6>,
    <astralsorcery:blockmarble:4>,
    <botania:managlass>,
    <botania:managlass>,
    <astralsorcery:blockmarble:2>,
    <astralsorcery:blockmarble:2>,
    <appliedenergistics2:light_detector>,
    <appliedenergistics2:light_detector>,
    <astralsorcery:blockmarble:5>,
    <astralsorcery:blockmarble:5>,
    <astralsorcery:blockmarble:2>,
    <astralsorcery:blockmarble:2>,
    <astralsorcery:blockmarble:2>,
    <astralsorcery:blockmarble:2>,
]);

var y as IItemStack = <morebees:graincrystal>;
var rockcrystal_max as IItemStack = <astralsorcery:itemrockcrystalsimple>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 400, fract: 0, purity: 100, sizeOverride: -1}}});
var celestialcrystal_max as IItemStack = <astralsorcery:itemcelestialcrystal>.withTag({astralsorcery: {crystalProperties: {collectiveCapability: 100, size: 900, fract: 0, purity: 100, sizeOverride: -1}}});

/* I STILL HAVEN'T FIGURED OUT WHY THIS ISN'T WORKING LIKE INTENDED!
var rockcrystal as IIngredient = Utils.getCrystalORIngredient(false,false);
var celestialcrystal as IIngredient = Utils.getCrystalORIngredient(true,false);
*/

var rockcrystal as IIngredient = <astralsorcery:itemrockcrystalsimple>;
var celestialcrystal as IIngredient = <astralsorcery:itemcelestialcrystal>;

Carpenter.addRecipe(rockcrystal_max, [
    [y,rockcrystal,y],
    [<astralsorcery:itemcraftingcomponent:4>,<abyssalcraft:gatekeeperessence>,<astralsorcery:itemcraftingcomponent:4>],
    [y,rockcrystal,y]
], 20, <liquid:astralsorcery.liquidstarlight>*10000);

Carpenter.addRecipe(celestialcrystal_max, [
    [y,celestialcrystal,y],
    [<astralsorcery:itemcraftingcomponent:4>,<abyssalcraft:gatekeeperessence>,<astralsorcery:itemcraftingcomponent:4>],
    [y,celestialcrystal,y]
], 20, <liquid:astralsorcery.liquidstarlight>*10000);

var mapLens as IItemStack[][IItemStack] = {
    <astralsorcery:itemcoloredlens> : [<astralsorcery:itemcraftingcomponent:3>,<minecraft:blaze_powder>,<xreliquary:mob_ingredient:7>,<evilcraft:burning_gem_stone>,<randomthings:imbue>], // Ignition
    <astralsorcery:itemcoloredlens:1> : [<astralsorcery:itemcraftingcomponent:3>,<minecraft:diamond>,<minecraft:iron_pickaxe>,<minecraft:gold_ingot>,<astralsorcery:itemcraftingcomponent>], // Break
    <astralsorcery:itemcoloredlens:2> : [<astralsorcery:itemcraftingcomponent:3>,<bloodmagic:component:22>,<astralsorcery:itemcraftingcomponent>,<minecraft:reeds>], // Growth
    <astralsorcery:itemcoloredlens:3> : [<astralsorcery:itemcraftingcomponent:3>,<minecraft:flint>,<minecraft:iron_ingot>,<minecraft:diamond>,<astralsorcery:itemcraftingcomponent>], // Damage
    <astralsorcery:itemcoloredlens:4> : [<astralsorcery:itemcraftingcomponent:3>,<minecraft:diamond>,<minecraft:ghast_tear>,<astralsorcery:itemcraftingcomponent>,<astralsorcery:itemcraftingcomponent:2>], // Regeneration
    <astralsorcery:itemcoloredlens:5> : [<astralsorcery:itemcraftingcomponent:3>,<minecraft:piston>,<minecraft:glowstone_dust>,<astralsorcery:itemcraftingcomponent>], // Push
    <astralsorcery:itemcoloredlens:6> : [<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemusabledust>,<astralsorcery:itemcraftingcomponent:2>], // Sprectral
};

for lens, data in mapLens {
    AlchemyTable.addRecipe(lens, data, 1000, 100, 1);
}
