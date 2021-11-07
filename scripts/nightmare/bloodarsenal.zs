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

import mods.astralsorcery.Grindstone;
import mods.bloodmagic.BloodAltar;
import mods.evilcraft.BloodInfuser;

Grindstone.addRecipe(<minecraft:glass>, <bloodarsenal:base_item>, 0.25f);

recipes.remove(<bloodarsenal:blood_burned_string>);
BloodAltar.addRecipe(<bloodarsenal:blood_burned_string>, <evilcraft:golden_string>, 1, 2000, 5, 5);
BloodInfuser.addRecipe(<evilcraft:golden_string>, <liquid:evilcraftblood>*10000, 2, <bloodarsenal:blood_burned_string>, 200, 0.5);
