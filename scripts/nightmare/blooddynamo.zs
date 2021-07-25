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

import mods.bloodmagic.BloodAltar;
import mods.evilcraft.BloodInfuser;

BloodInfuser.addRecipe(<thermalfoundation:material:23>, <liquid:evilcraftblood> * 4000, 0, <blood_dynamo:ingredient:2>, 100, 2);

BloodAltar.addRecipe(<blood_dynamo:ingredient:2>, <thermalfoundation:material:23>, 0, 2000,5,5);
