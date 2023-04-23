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

import mods.J0B10.tweaks.GardenCloche as GC;

recipes.remove(<immersiveengineering:material:14>);
recipes.addShaped(<immersiveengineering:material:14>,[[null,null,<ore:ingotSteel>],[null,<ore:ingotSteel>,null],[<ore:ingotSteel>,null,null]]);

recipes.addShapeless(<immersiveengineering:seed>, [<ic2:itemmisc:158>,<ic2:itemmisc:158>]);

var listFertilizer as float[IIngredient] = {
    <ic2:itemmisc:151> : 1.75,
    <ic2:itemmisc:157> : 2.75,
    <ic2:itemmisc:160> : 3.50,
};

for fertilizer, multiplier in listFertilizer {
    GC.registerItemFertilizer(fertilizer, multiplier);
}

var listFluid as float[ILiquidStack] = {
    <liquid:hot_spring_water> : 2.0,
    <liquid:biomass> : 1.50,
    <liquid:biocrude> : 1.25,
};

for fluid, multiplier in listFluid {
    GC.registerFluidFertilizer(fluid, multiplier);
}
