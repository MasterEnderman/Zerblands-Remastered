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

import mods.astralsorcery.Utils;
import mods.botania.PureDaisy;
import mods.forestry.Carpenter;
import mods.thermalexpansion.Transposer;

PureDaisy.addRecipe(<astralsorcery:blockmarble>, <astralsorcery:blockblackmarble>);

Transposer.addFillRecipe(<astralsorcery:blockcustomore:1>, <minecraft:iron_ore>, <liquid:astralsorcery.liquidstarlight>*2000, 4096);
Transposer.addFillRecipe(<astralsorcery:blockcustomore>, <appliedenergistics2:sky_stone_block>, <liquid:liquidantimatter>*4000, 8192);

recipes.addShaped(<astralsorcery:blockmarble> * 64, [
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:quartz>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);

recipes.addShaped(<astralsorcery:itemconstellationpaper>, [
    [<evilcraft:dark_stick>,<astralsorcery:itemcraftingcomponent:5>,<evilcraft:dark_stick>],
    [null,<astralsorcery:itemcraftingcomponent:5>,null],
    [<evilcraft:dark_stick>,<astralsorcery:itemcraftingcomponent:5>,<evilcraft:dark_stick>]
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
    [y,<astralsorcery:itemcraftingcomponent:4>,y],
    [y,rockcrystal,y],
    [y,<astralsorcery:itemcraftingcomponent:4>,y]
], 20, <liquid:astralsorcery.liquidstarlight>*10000);

Carpenter.addRecipe(celestialcrystal_max, [
    [y,<astralsorcery:itemcraftingcomponent:4>,y],
    [y,celestialcrystal,y],
    [y,<astralsorcery:itemcraftingcomponent:4>,y]
], 20, <liquid:astralsorcery.liquidstarlight>*10000);
