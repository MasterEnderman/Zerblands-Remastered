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

import mods.ic2.Extractor;
import mods.jei.JEI;
import mods.thermalexpansion.Transposer;

JEI.removeAndHide(<bigreactors:turbinepowertaptesla>);
JEI.removeAndHide(<bigreactors:reactorpowertaptesla>);
JEI.removeAndHide(<bigreactors:oreanglesite>);
JEI.removeAndHide(<bigreactors:orebenitoite>);
JEI.removeAndHide(<bigreactors:reactorrednetport>);

Transposer.addFillRecipe(<bigreactors:ingotyellorium> * 2, <ic2:itemmisc:55>, <liquid:glowstone> * 500, 4000);

Extractor.addRecipe(<bigreactors:ingotcyanite>,<bigreactors:ingotyellorium>);
