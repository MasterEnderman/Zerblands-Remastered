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
import mods.forestry.Squeezer;
import mods.forestry.ThermionicFabricator;
import mods.immersiveengineering.Squeezer as IESqueezer;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_atomic;

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
], 10, <liquid:water> * 250);

recipes.remove(<integrateddynamics:logic_director>);
calc_atomic(<integrateddynamics:logic_director>, <integrateddynamics:crystalized_chorus_chunk>, <contenttweaker:flawlessdiamond>, <integrateddynamics:crystalized_menril_chunk>);

Transposer.addExtractRecipe(<liquid:menrilresin> * 250, <integrateddynamics:menril_berries>, 2400);
Squeezer.addRecipe(<liquid:menrilresin> * 250, [<integrateddynamics:menril_berries>], 120);
Squeezer.addRecipe(<liquid:liquidchorus> * 125, [<minecraft:chorus_fruit_popped>], 120);
IESqueezer.addRecipe(null, <liquid:menrilresin> * 250, <integrateddynamics:menril_berries>, 1024);
IESqueezer.addRecipe(null, <liquid:liquidchorus> * 125, <minecraft:chorus_fruit_popped>, 1024);

recipes.remove(<integrateddynamics:part_static_light_panel_item>);
ThermionicFabricator.addCast(<integrateddynamics:part_static_light_panel_item>, [
    [null,<integrateddynamics:crystalized_menril_chunk>,null],
    [<integrateddynamics:variable_transformer>,<ic2:blockluminator>,<integrateddynamics:crystalized_menril_chunk>],
    [null,<integrateddynamics:crystalized_menril_chunk>,null]
], <liquid:glass> * 200);

recipes.remove(<integrateddynamics:part_display_panel_item>);
ThermionicFabricator.addCast(<integrateddynamics:part_display_panel_item>, [
    [<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>],
    [<integrateddynamics:part_static_light_panel_item>,<integrateddynamics:variable_transformer>,<integrateddynamics:part_static_light_panel_item>],
    [<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>]
], <liquid:glass> * 200);

recipes.remove(<integrateddynamics:menril_torch>);
recipes.addShaped(<integrateddynamics:menril_torch> * 2, [
    [<integrateddynamics:menril_berries>],
    [<ore:stickWood>]
]);

recipes.remove(<integrateddynamics:menril_torch_stone>);
recipes.addShaped(<integrateddynamics:menril_torch_stone> * 2, [
    [<integrateddynamics:menril_berries>],
    [<ore:rodStone>]
]);
