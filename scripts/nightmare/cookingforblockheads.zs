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

import mods.evilcraft.BloodInfuser;

recipes.remove(<cookingforblockheads:recipe_book:2>);
BloodInfuser.addRecipe(<cookingforblockheads:recipe_book:1>, <liquid:evilcraftblood> * 10000, 1, <cookingforblockheads:recipe_book:2>, 400, 100);

recipes.remove(<cookingforblockheads:kitchen_floor>);
recipes.addShaped(<cookingforblockheads:kitchen_floor> * 4, [
    [<astralsorcery:blockmarble>,<astralsorcery:blockblackmarble>],
    [<astralsorcery:blockblackmarble>,<astralsorcery:blockmarble>]
]);
