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

recipes.remove(<exponentialpower:advancedendergenerator>);
<exponentialpower:advancedendergenerator>.displayName = "§rAbsolut Brilliant Compact Draconic Ender Fusion Generator MK.II";
<exponentialpower:advancedendergenerator>.addTooltip(format.red("More Energy than any mod on earth could handle."));

recipes.remove(<exponentialpower:endergenerator>);
<exponentialpower:endergenerator>.displayName = "Absolut Brilliant Compact Draconic Ender Fusion Generator";
<exponentialpower:endergenerator>.addTooltip(format.green("The 'ABC' Thing was totally intended."));

recipes.remove(<exponentialpower:endercell>);
<exponentialpower:endercell>.displayName = "A.B.C.D.E.F.G. - Cell";
