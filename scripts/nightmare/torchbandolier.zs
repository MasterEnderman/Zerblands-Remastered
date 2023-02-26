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

recipes.remove(<torchbandolier:torch_bandolier>);
Altar.addDiscoveryAltarRecipe("torch_bandolier", <torchbandolier:torch_bandolier>, 200, 200, [
    <quark:rope>,<harvestcraft:hardenedleatheritem>,<quark:rope>,
    <ore:stickTreatedWood>,<contenttweaker:black_iron>,<ore:stickTreatedWood>,
    <quark:rope>,<harvestcraft:hardenedleatheritem>,<quark:rope>
]);
