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

recipes.remove(<thermalexpansion:frame>);
Altar.addConstellationAltarRecipe("te_machine_frame", <thermalexpansion:frame>, 800, 200, [
    <contenttweaker:weakeneddiamond>,
    <contenttweaker:energy_module>,
    <contenttweaker:weakeneddiamond>,
    <abyssalcraft:cingot>,
    <forestry:impregnated_casing>,
    <abyssalcraft:cingot>,
    <contenttweaker:weakeneddiamond>,
    <embers:winding_gears>,
    <contenttweaker:weakeneddiamond>,
    <enderio:item_alloy_ingot>,
    <enderio:item_alloy_ingot>,
    <enderio:item_alloy_ingot>,
    <enderio:item_alloy_ingot>,
    <botania:managlass>,
    <botania:managlass>,
    <botania:managlass>,
    <botania:managlass>,
    <botania:managlass>,
    <botania:managlass>,
    <botania:managlass>,
    <botania:managlass>
]);
