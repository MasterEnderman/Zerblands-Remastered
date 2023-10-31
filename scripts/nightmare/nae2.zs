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

import mods.appliedenergistics2.Inscriber;
import mods.threng.Etcher;

<nae2:upgrade>.displayName = "Hyper-Acceleration Card";

recipes.remove(<nae2:material>);
Inscriber.addRecipe(<nae2:material>, <actuallyadditions:block_crystal_empowered:3>, false, <contenttweaker:engraved_crystal_chip>, <contenttweaker:plastic>);
Etcher.addRecipe(<nae2:material>, <actuallyadditions:block_crystal_empowered:3>, <contenttweaker:engraved_crystal_chip>, <contenttweaker:plastic>);
