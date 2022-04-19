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

import mods.forestry.Carpenter;
import mods.jei.JEI;

JEI.removeAndHide(<forestry:still>);

recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped(<forestry:sturdy_machine>, [
    [<ore:ingotInvar>,<ore:plateBronze>,<ore:ingotInvar>],
    [<ore:plateBronze>,<ore:gearConstantan>,<ore:plateBronze>],
    [<ore:ingotInvar>,<ore:plateBronze>,<ore:ingotInvar>]
]);

Carpenter.removeRecipe(<forestry:impregnated_casing>);
Carpenter.addRecipe(<forestry:impregnated_casing>, [
    [<ore:logWood>,<ore:logWood>,<ore:logWood>],
    [<ore:logWood>,null,<ore:logWood>],
    [<ore:logWood>,<ore:logWood>,<ore:logWood>]
], 200, <liquid:seed.oil>*250);
