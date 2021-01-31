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

import mods.botania.PureDaisy;
import mods.inworldcrafting.FluidToItem;
import mods.thermalexpansion.Transposer;

PureDaisy.addRecipe(<astralsorcery:blockmarble>, <astralsorcery:blockblackmarble>);

Transposer.addFillRecipe(<astralsorcery:blockcustomore:1>, <minecraft:iron_ore>, <liquid:astralsorcery.liquidstarlight>*2000, 4096);
Transposer.addFillRecipe(<astralsorcery:blockcustomore>, <appliedenergistics2:sky_stone_block>, <liquid:liquidantimatter>*4000, 8192);

FluidToItem.transform(<astralsorcery:blockinfusedwood>, <liquid:astralsorcery.liquidstarlight>, [<ore:logWood>], false);
FluidToItem.transform(<astralsorcery:blockinfusedwood:1>, <liquid:astralsorcery.liquidstarlight>, [<ore:plankWood>], false);

recipes.addShaped(<astralsorcery:itemconstellationpaper>, [
    [<evilcraft:dark_stick>,<astralsorcery:itemcraftingcomponent:5>,<evilcraft:dark_stick>],
    [null,<astralsorcery:itemcraftingcomponent:5>,null],
    [<evilcraft:dark_stick>,<astralsorcery:itemcraftingcomponent:5>,<evilcraft:dark_stick>]
]);
