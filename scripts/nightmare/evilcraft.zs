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
import mods.astralsorcery.Lightwell;
import mods.tconstruct.Casting;

Casting.addTableRecipe(<evilcraft:dark_power_gem>, <evilcraft:dark_gem>, <liquid:evilcraftblood>, 5000, true, 20);
Casting.addTableRecipe(<evilcraft:dark_power_gem>, <evilcraft:dark_gem>, <liquid:blood>, 5000, true, 20);

Casting.addBasinRecipe(<evilcraft:hardened_blood>, null, <liquid:blood>, 1000, true, 100);

recipes.remove(<evilcraft:blood_infuser>);
Altar.addDiscoveryAltarRecipe("blood_infuser", <evilcraft:blood_infuser>, 200, 200, [
    <sonarcore:stablestone_normal>, <sonarcore:stablestone_normal>, <sonarcore:stablestone_normal>,
    <sonarcore:stablestone_normal>, <evilcraft:blood_infusion_core>, <sonarcore:stablestone_normal>,
    <sonarcore:stablestone_normal>, <sonarcore:stablestone_normal>, <sonarcore:stablestone_normal>
]);

var mapBlood as float[IItemStack] = {
    <minecraft:porkchop> : 0.3,
    <minecraft:beef> : 0.3,
    <minecraft:chicken> : 0.3,
    <minecraft:rabbit> : 0.3,
    <minecraft:mutton> : 0.3,
    <harvestcraft:turkeyrawitem> : 0.3,
    <harvestcraft:venisonrawitem> : 0.3,
    <harvestcraft:duckrawitem> : 0.3,
    <minecraft:rotten_flesh> : 0.2,
};

for item, mult in mapBlood {
    Lightwell.addLiquefaction(item, <liquid:evilcraftblood>, 1, mult, 0);
}
