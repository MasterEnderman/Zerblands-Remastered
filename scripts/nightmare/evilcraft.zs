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
import mods.tconstruct.Casting;

Casting.addTableRecipe(<evilcraft:blood_infusion_core>, <evilcraft:dark_gem>, <liquid:evilcraftblood>, 5000, true, 20);

Altar.addDiscoveryAltarRecipe("blood_infuser", <evilcraft:blood_infuser>, 200, 200, [
    <sonarcore:stablestone_normal>, <sonarcore:stablestone_normal>, <sonarcore:stablestone_normal>,
    <sonarcore:stablestone_normal>, <evilcraft:blood_infusion_core>, <sonarcore:stablestone_normal>,
    <sonarcore:stablestone_normal>, <sonarcore:stablestone_normal>, <sonarcore:stablestone_normal>
]);
