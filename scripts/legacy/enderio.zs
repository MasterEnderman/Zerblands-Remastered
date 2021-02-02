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

AlloySmelter.addRecipe(<enderio:item_alloy_ingot:9> * 8, [<ore:ingotIron>,<embers:blend_caminite>,<tconstruct:materials>], 5000);

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
recipes.remove(<enderio:item_liquid_conduit>);
recipes.addShaped(<enderio:item_liquid_conduit> * 2,[
    [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],
    [<minecraft:glass>,<minecraft:glass>,<minecraft:glass>],
    [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]
]);
