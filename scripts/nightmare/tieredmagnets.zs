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

import mods.immersiveengineering.Blueprint;

var smallMachine as IIngredient[][IItemStack] = {
    <tieredmagnets:magnetic_projector:0> : [
        <extrautils2:machine>,
        <minecraft:hopper>,
        <ore:ingotRedAlloy>,
        <minecraft:glass_pane> * 4
    ],
    <tieredmagnets:magnetic_insulator:0> : [
        <extrautils2:machine>,
        <ore:ingotRedAlloy>,
        <minecraft:ender_pearl> * 2
    ],
};

for machine, recipe in smallMachine {
    recipes.remove(machine);
    Blueprint.addRecipe("machinery", machine, recipe);
}
