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

recipes.addShaped(<exponentialpower:endergenerator>, [
    [<tconstruct:large_plate>.withTag({Material: "dark_matter"}),<contenttweaker:ender_token>,<tconstruct:large_plate>.withTag({Material: "dark_matter"})],
    [<draconicevolution:reactor_component>,<draconicevolution:reactor_core>,<draconicevolution:reactor_component>],
    [<tconstruct:large_plate>.withTag({Material: "dark_matter"}),<draconicevolution:reactor_component:1>,<tconstruct:large_plate>.withTag({Material: "dark_matter"})]]);

recipes.addShaped(<exponentialpower:endercell>, [
    [<appliedenergistics2:material:34>,<ic2:itempesd>,<appliedenergistics2:material:34>],
    [<ic2:itempesd>,<extrautils2:opinium:8>,<ic2:itempesd>],
    [<appliedenergistics2:material:34>,<ic2:itempesd>,<appliedenergistics2:material:34>]]);

