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

import mods.astralsorcery.Altar;
import mods.avaritia.ExtremeCrafting;
import mods.enderio.SagMill;
import mods.jei.JEI;

ExtremeCrafting.remove(<avaritia:neutronium_compressor>);
JEI.removeAndHide(<avaritia:neutronium_compressor>);

ExtremeCrafting.remove(<avaritia:ultimate_stew>);
JEI.removeAndHide(<avaritia:ultimate_stew>);

ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);
JEI.removeAndHide(<avaritia:cosmic_meatballs>);

recipes.remove(<avaritia:resource>);
recipes.addShaped(<avaritia:resource>, [
    [<calculator:material:8>,<ic2:itembatlamacrystal>,<calculator:material:8>],
    [<ic2:itembatlamacrystal>,<draconicevolution:chaotic_core>,<ic2:itembatlamacrystal>],
    [<calculator:material:8>,<ic2:itembatlamacrystal>,<calculator:material:8>]
]);

recipes.removeShaped(<avaritia:resource:1>);
recipes.addShaped(<avaritia:resource:1>, [
    [<avaritia:resource>,<draconicevolution:draconic_energy_core>,<avaritia:resource>],
    [<projecte:matter_block:1>,<ic2:itemmisc:264>,<projecte:matter_block:1>],
    [<avaritia:resource>,<draconicevolution:draconic_energy_core>,<avaritia:resource>]
]);

ExtremeCrafting.remove(<avaritia:resource:5>);

SagMill.removeRecipe(<minecraft:bedrock>);
SagMill.addRecipe([<minecraft:bedrock>,<avaritia:resource:2>], [100,100], <minecraft:bedrock>, "NONE", 1000);

recipes.remove(<avaritia:extreme_crafting_table>);
Altar.addConstellationAltarRecipe("dire_table",<avaritia:extreme_crafting_table>, 2000, 1000, [
    <draconicevolution:fusion_crafting_core>,<appliedenergistics2:material:34>,<draconicevolution:fusion_crafting_core>,
    <appliedenergistics2:material:34>,<avaritia:double_compressed_crafting_table>,<appliedenergistics2:material:34>,
    <draconicevolution:fusion_crafting_core>,<appliedenergistics2:material:34>,<draconicevolution:fusion_crafting_core>,
    <avaritia:block_resource:2>,<avaritia:block_resource:2>,<avaritia:block_resource:2>,
    <avaritia:block_resource:2>,<avaritia:block_resource:2>,<avaritia:block_resource:2>,
    <avaritia:block_resource:2>,<avaritia:block_resource:2>,<avaritia:block_resource:2>,
    <avaritia:block_resource:2>,<avaritia:block_resource:2>,<avaritia:block_resource:2>
]);
