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

import mods.avaritia.Compressor;

import moretweaker.draconicevolution.FusionCrafting;

recipes.addShaped(<exponentialpower:endercell>, [
    [<advancedsolars:enrichedsunnariumalloy>,<contenttweaker:circuit8>,<advancedsolars:enrichedsunnariumalloy>],
    [<contenttweaker:pearl_lattice>,<avaritia:singularity:12>,<contenttweaker:pearl_lattice>],
    [<advancedsolars:enrichedsunnariumalloy>,<contenttweaker:circuit8>,<advancedsolars:enrichedsunnariumalloy>]]);

FusionCrafting.add(<exponentialpower:endergenerator>, <contenttweaker:ender_token>, FusionCrafting.CHAOTIC, 1000000000, [
    <draconicevolution:reactor_component>,
    <draconicevolution:reactor_component>,
    <draconicevolution:reactor_core>,
    <draconicevolution:reactor_core>,
    <draconicevolution:reactor_core>,
    <draconicevolution:reactor_core>,
    <draconicevolution:reactor_component>,
    <draconicevolution:reactor_component>
]);

Compressor.add("broken_ender_generator", <exponentialpower:advancedendergenerator>, 64*64, <exponentialpower:endergenerator>, true);
