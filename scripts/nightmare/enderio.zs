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
import mods.enderio.SagMill;
import mods.ic2.Macerator;
import mods.immersiveengineering.ArcFurnace;
import mods.inworldcrafting.FluidToItem;
import mods.jei.JEI;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;

JEI.removeAndHide(<enderio:item_inventory_remote>);
JEI.removeAndHide(<enderio:item_inventory_remote:1>);
JEI.removeAndHide(<enderio:item_inventory_remote:2>);
JEI.removeAndHide(<enderio:block_simple_furnace>);
JEI.removeAndHide(<enderio:block_simple_sag_mill>);
JEI.removeAndHide(<enderio:block_simple_stirling_generator>);
JEI.removeAndHide(<enderio:block_simple_crafter>);
JEI.removeAndHide(<enderio:block_simple_wired_charger>);

SagMill.removeRecipe(<enderio:block_infinity>);
SagMill.removeRecipe(<enderio:block_infinity:1>);
SagMill.removeRecipe(<enderio:block_infinity:2>);

# AlloySmelter.removeRecipe(<enderio:item_material:72>);
AlloySmelter.addRecipe(<enderio:item_material:72>, [<minecraft:netherbrick>,<contenttweaker:crushed_nether_wart>,<contenttweaker:fireclay_brick>], 5000);

ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:7>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:7>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot>, [<ore:ingotSteel>,<ore:ingotElectrum>,<ore:itemSilicon>], 10000);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:7>, <ore:ingotSteel>, null, 100, 512, [<ore:ingotElectrum>,<ore:itemSilicon>]);

Alloy.removeRecipe(<liquid:dark_steel>);
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:6>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:6>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:6>, [<ore:ingotSteel>,<contenttweaker:black_iron>,<ore:ingotHOPGraphite>], 20000);
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:6>, <ore:ingotSteel>, null, 100, 512, [<contenttweaker:black_iron>,<ore:ingotHOPGraphite>]);

AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:3>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:3>, [<contenttweaker:redstone_ingot>,<ore:itemSilicon>,<ore:ingotRedAlloy>], 10000);

FluidToItem.transform(<enderio:item_material:20>, <liquid:astralsorcery.liquidstarlight>, [<ore:dustQuartzBlack>], true);

recipes.remove(<enderio:item_material:11>);
Casting.removeTableRecipe(<enderio:item_material:11>);
Casting.addTableRecipe(<enderio:item_material:11>, <enderio:item_material:20>, <liquid:iron>, 576, true, 200);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <enderio:item_material> : [
        [
            [<ore:plateDawnstone>,<ore:gearIronInfinity>,<ore:plateDawnstone>],
            [<ore:gearIronInfinity>,<embers:mech_core>,<ore:gearIronInfinity>],
            [<ore:plateDawnstone>,<ore:gearIronInfinity>,<ore:plateDawnstone>]
        ]
    ],
    <enderio:block_simple_alloy_smelter> : [
        [
            [<immersiveengineering:stone_decoration:10>,<minecraft:furnace>,<immersiveengineering:stone_decoration:10>],
            [<minecraft:furnace>,<enderio:item_material>,<minecraft:furnace>],
            [<immersiveengineering:stone_decoration:10>,<immersiveengineering:metal_device1:1>,<immersiveengineering:stone_decoration:10>]
        ]
    ]
};

for key, value in recipeMapShaped {
	var index as int = 0;
    recipes.remove(key);

    for recipe in value {
        var name as string = "ct_"+toString(key)+"_"+index;
        recipes.addShaped(name, key, recipe);
        index += 1;
    }
}
