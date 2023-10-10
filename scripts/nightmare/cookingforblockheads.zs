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

import scripts.functions.calc_scientific;

recipes.remove(<cookingforblockheads:recipe_book:2>);
BloodInfuser.addRecipe(<cookingforblockheads:recipe_book:1>, <liquid:evilcraftblood> * 10000, 1, <cookingforblockheads:recipe_book:2>, 400, 100);

recipes.remove(<cookingforblockheads:kitchen_floor>);
recipes.addShaped(<cookingforblockheads:kitchen_floor> * 4, [
    [<astralsorcery:blockmarble>,<astralsorcery:blockblackmarble>],
    [<astralsorcery:blockblackmarble>,<astralsorcery:blockmarble>]
]);

var mapUpgrade as IItemStack[IItemStack] = {
    <cookingforblockheads:heating_unit> : <contenttweaker:heating_coil>,
    <cookingforblockheads:ice_unit> : <xreliquary:mob_ingredient:10>,
    <cookingforblockheads:preservation_chamber> : <immersiveengineering:material:27>,
};

for upgrade, item in mapUpgrade {
    recipes.remove(upgrade);
    calc_scientific(upgrade,<minecraft:comparator>,item);
}
