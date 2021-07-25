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
import mods.botania.PureDaisy;
import mods.immersiveengineering.Mixer;
import mods.thermalexpansion.Transposer;

recipes.remove(<astralsorcery:blockblackmarble>);
PureDaisy.addRecipe(<astralsorcery:blockmarble>, <astralsorcery:blockblackmarble>);

furnace.remove(<astralsorcery:itemcraftingcomponent:1>);

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

Altar.addDiscoveryAltarRecipe("internal/altar/upgrade_tier2", <astralsorcery:blockwell>, 200, 200, [
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
