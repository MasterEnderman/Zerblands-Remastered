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

import mods.chisel.Carving;

var listStableStone as IItemStack[] = [
    <sonarcore:stablestone_normal>,
    <sonarcore:stablestonerimmed_normal>,
    <sonarcore:stablestoneblackrimmed_normal>,
    <sonarcore:stablestone_black>,
    <sonarcore:stablestonerimmed_black>,
    <sonarcore:stablestoneblackrimmed_black>,
    <sonarcore:stablestone_blue>,
    <sonarcore:stablestonerimmed_blue>,
    <sonarcore:stablestoneblackrimmed_blue>,
    <sonarcore:stablestone_brown>,
    <sonarcore:stablestonerimmed_brown>,
    <sonarcore:stablestoneblackrimmed_brown>,
    <sonarcore:stablestone_cyan>,
    <sonarcore:stablestonerimmed_cyan>,
    <sonarcore:stablestoneblackrimmed_cyan>,
    <sonarcore:stablestone_green>,
    <sonarcore:stablestonerimmed_green>,
    <sonarcore:stablestoneblackrimmed_green>,
    <sonarcore:stablestone_lightblue>,
    <sonarcore:stablestonerimmed_lightblue>,
    <sonarcore:stablestoneblackrimmed_lightblue>,
    <sonarcore:stablestone_lightgrey>,
    <sonarcore:stablestonerimmed_lightgrey>,
    <sonarcore:stablestoneblackrimmed_lightgrey>,
    <sonarcore:stablestone_lime>,
    <sonarcore:stablestonerimmed_lime>,
    <sonarcore:stablestoneblackrimmed_lime>,
    <sonarcore:stablestone_magenta>,
    <sonarcore:stablestonerimmed_magenta>,
    <sonarcore:stablestoneblackrimmed_magenta>,
    <sonarcore:stablestone_orange>,
    <sonarcore:stablestonerimmed_orange>,
    <sonarcore:stablestoneblackrimmed_orange>,
    <sonarcore:stablestone_pink>,
    <sonarcore:stablestonerimmed_pink>,
    <sonarcore:stablestoneblackrimmed_pink>,
    <sonarcore:stablestone_plain>,
    <sonarcore:stablestonerimmed_plain>,
    <sonarcore:stablestoneblackrimmed_plain>,
    <sonarcore:stablestone_purple>,
    <sonarcore:stablestonerimmed_purple>,
    <sonarcore:stablestoneblackrimmed_purple>,
    <sonarcore:stablestone_red>,
    <sonarcore:stablestonerimmed_red>,
    <sonarcore:stablestoneblackrimmed_red>,
    <sonarcore:stablestone_yellow>,
    <sonarcore:stablestonerimmed_yellow>,
    <sonarcore:stablestoneblackrimmed_yellow>
];

Carving.addGroup("stablestone");
recipes.remove(<sonarcore:reinforcedstonebrick>);

for item in listStableStone {
    recipes.remove(item);
    Carving.addVariation("stablestone", item);
}
