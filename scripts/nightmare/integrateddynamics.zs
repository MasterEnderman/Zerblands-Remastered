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

import mods.forestry.Carpenter;
import mods.tconstruct.Casting;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_atomic;

Casting.addBasinRecipe(<integrateddynamics:crystalized_menril_block>, <ore:sand>, <liquid:menrilresin>, 1000, true, 200);
Transposer.addFillRecipe(<integrateddynamics:crystalized_menril_block>, <minecraft:sand>, <liquid:menrilresin> * 1000, 2000);

Casting.addBasinRecipe(<integrateddynamics:crystalized_chorus_block>, <ore:sand>, <liquid:liquidchorus>, 1000, true, 200);
Transposer.addFillRecipe(<integrateddynamics:crystalized_chorus_block>, <minecraft:sand>, <liquid:liquidchorus> * 1000, 2000);

recipes.remove(<integrateddynamics:cable>);
Transposer.addFillRecipe(<integrateddynamics:cable>, <thermaldynamics:duct_48>, <liquid:menrilresin> * 500, 2000);

recipes.remove(<integrateddynamics:variable_transformer>);
Transposer.addFillRecipe(<integrateddynamics:variable_transformer>, <thermaldynamics:filter>, <liquid:menrilresin> * 500, 2000);

recipes.remove(<integrateddynamics:variable_transformer:1>);
Transposer.addFillRecipe(<integrateddynamics:variable_transformer:1>, <thermaldynamics:servo>, <liquid:menrilresin> * 500, 2000);

recipes.removeByRecipeName("integrateddynamics:variable");
Carpenter.addRecipe(<integrateddynamics:variable> * 4, [
    [<forestry:wood_pulp>,<integrateddynamics:crystalized_menril_chunk>,<forestry:wood_pulp>],
    [<integrateddynamics:crystalized_menril_chunk>,<minecraft:paper>,<integrateddynamics:crystalized_menril_chunk>],
    [<forestry:wood_pulp>,<integrateddynamics:crystalized_menril_chunk>,<forestry:wood_pulp>]
], 80, <liquid:water> * 250);

recipes.remove(<integrateddynamics:logic_director>);
calc_atomic(<integrateddynamics:logic_director>, <integrateddynamics:crystalized_chorus_chunk>, <contenttweaker:flawlessdiamond>, <integrateddynamics:crystalized_menril_chunk>);
