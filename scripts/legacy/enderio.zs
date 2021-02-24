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
import mods.jei.JEI;

JEI.removeAndHide(<enderio:item_inventory_remote>);
JEI.removeAndHide(<enderio:item_inventory_remote:1>);
JEI.removeAndHide(<enderio:item_inventory_remote:2>);

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

<enderio:block_inventory_chest_tiny>.addTooltip(format.green("Holds 81 Stacks"));
<enderio:block_inventory_chest_small>.addTooltip(format.green("Holds 108 Stacks"));
<enderio:block_inventory_chest_medium>.addTooltip(format.green("Holds 135 Stacks"));
<enderio:block_inventory_chest_big>.addTooltip(format.green("Holds 162 Stacks"));
<enderio:block_inventory_chest_large>.addTooltip(format.green("Holds 216 Stacks"));
<enderio:block_inventory_chest_huge>.addTooltip(format.green("Holds 270 Stacks"));
<enderio:block_inventory_chest_enormous>.addTooltip(format.green("Holds 351 Stacks"));
<enderio:block_inventory_chest_warehouse>.addTooltip(format.green("Holds 432 Stacks"));
<enderio:block_inventory_chest_warehouse13>.addTooltip(format.green("Holds 540 Stacks"));
