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

import mods.jei.JEI;
import mods.tconstruct.Casting;
import mods.thermalexpansion.Transposer;

JEI.removeAndHide(<integrateddynamics:part_entity_writer_item>);
JEI.removeAndHide(<integrateddynamics:part_machine_writer_item>);
JEI.removeAndHide(<integrateddynamics:part_inventory_writer_item>);

Casting.addBasinRecipe(<integrateddynamics:crystalized_menril_block>, <ore:sand>, <liquid:menrilresin>, 1000, true, 200);
Transposer.addFillRecipe(<integrateddynamics:crystalized_menril_block>, <minecraft:sand>, <liquid:menrilresin> * 1000, 2000);

Casting.addBasinRecipe(<integrateddynamics:crystalized_chorus_block>, <ore:sand>, <liquid:liquidchorus>, 1000, true, 200);
Transposer.addFillRecipe(<integrateddynamics:crystalized_chorus_block>, <minecraft:sand>, <liquid:liquidchorus> * 1000, 2000);
