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

import mods.jei.JEI;

JEI.removeAndHide(<exponentialpower:enderstorage>);
JEI.removeAndHide(<exponentialpower:advancedendergenerator>);

recipes.remove(<exponentialpower:endergenerator>);
recipes.addShaped(<exponentialpower:endergenerator>, [
    [<tconstruct:large_plate>.withTag({Material: "darkmatter"}),<contenttweaker:ender_token>,<tconstruct:large_plate>.withTag({Material: "darkmatter"})],
    [<draconicevolution:reactor_component>,<draconicevolution:reactor_core>,<draconicevolution:reactor_component>],
    [<tconstruct:large_plate>.withTag({Material: "darkmatter"}),<draconicevolution:reactor_component:1>,<tconstruct:large_plate>.withTag({Material: "darkmatter"})]]);

recipes.remove(<exponentialpower:endercell>);
recipes.addShaped(<exponentialpower:endercell>, [
    [<appliedenergistics2:material:34>,<ic2:itempesd>,<appliedenergistics2:material:34>],
    [<ic2:itempesd>,<extrautils2:opinium:8>,<ic2:itempesd>],
    [<appliedenergistics2:material:34>,<ic2:itempesd>,<appliedenergistics2:material:34>]]);

<exponentialpower:endergenerator>.displayName = "Absolut Brilliant Compact Draconic Ender Fusion Generator";
<exponentialpower:endergenerator>.addTooltip(format.green("The 'ABC' Thing was totally intended."));
<exponentialpower:endercell>.displayName = "A.B.C.D.E.F.G. - Cell";
