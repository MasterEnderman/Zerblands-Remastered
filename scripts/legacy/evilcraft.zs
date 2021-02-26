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

import mods.evilcraft.BloodInfuser;
import mods.tconstruct.Casting;

BloodInfuser.removeRecipesWithOutput(<evilcraft:blood_waxed_coal>);
BloodInfuser.addRecipe(<contenttweaker:purified_coal>, <liquid:evilcraftblood> * 375, 1, <evilcraft:blood_waxed_coal>, 100, 2);

Casting.addTableRecipe(<evilcraft:dark_power_gem>, <evilcraft:dark_gem>, <liquid:evilcraftblood>, 5000, true, 20);

furnace.setFuel(<evilcraft:blood_waxed_coal>, 20000);
