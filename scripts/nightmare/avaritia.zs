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

import mods.avaritia.ExtremeCrafting;
import mods.forestry.Carpenter;
import mods.jei.JEI;

ExtremeCrafting.remove(<avaritia:neutron_collector>);
JEI.removeAndHide(<avaritia:neutron_collector>);

ExtremeCrafting.remove(<avaritia:resource:5>);

recipes.removeShaped(<avaritia:resource:1>);
recipes.addShaped(<avaritia:resource:1>, [
    [<avaritia:resource>,<avaritia:resource>,<avaritia:resource>],
    [<avaritia:resource>,<ore:ingotChaoticMetal>,<avaritia:resource>],
    [<avaritia:resource>,<avaritia:resource>,<avaritia:resource>]
]);

recipes.remove(<avaritia:resource>);
Carpenter.addRecipe(<avaritia:resource>, [
    [<contenttweaker:end_diamond_block>,<contenttweaker:eternalslate>,<contenttweaker:end_diamond_block>],
    [<contenttweaker:eternalslate>,<contenttweaker:crystal_cluster_core>,<contenttweaker:eternalslate>],
    [<contenttweaker:end_diamond_block>,<contenttweaker:eternalslate>,<contenttweaker:end_diamond_block>]
], 10, <liquid:mana> * 1000, <forestry:honey_drop:2>);
