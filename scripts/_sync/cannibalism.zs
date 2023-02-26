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

JEI.removeAndHide(<cannibalism:knifeoftesting>);
JEI.removeAndHide(<cannibalism:woodenknife>);
JEI.removeAndHide(<cannibalism:stoneknife>);
JEI.removeAndHide(<cannibalism:goldknife>);
JEI.removeAndHide(<cannibalism:ironknife>);
JEI.removeAndHide(<cannibalism:diamondknife>);
JEI.removeAndHide(<cannibalism:wendigoheart>);
JEI.removeAndHide(<cannibalism:groundedplayerheart>);

recipes.remove(<cannibalism:flintknife>);
Casting.addTableRecipe(<cannibalism:flintknife>,<actuallyadditions:item_knife:*>, <liquid:blood>, 500, true, 100);
