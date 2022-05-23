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
import mods.bloodmagic.AlchemyTable;
import mods.forestry.Carpenter;
import mods.jei.JEI;

ExtremeCrafting.remove(<avaritia:neutron_collector>);
JEI.removeAndHide(<avaritia:neutron_collector>);

ExtremeCrafting.remove(<avaritia:endest_pearl>);
AlchemyTable.addRecipe(<avaritia:endest_pearl>, [
    <randomthings:stableenderpearl>,
    <enderio:item_alloy_ingot:8>,
    <projecte:item.pe_matter>,
    <contenttweaker:ender_star>,
    <enderio:block_enderman_skull:2>,
    <draconicevolution:chaos_shard:3>
], 100000, 10000, 6);

recipes.removeShaped(<avaritia:resource:1>);
recipes.addShaped(<avaritia:resource:1>, [
    [<contenttweaker:pearl_lattice>,<contenttweaker:pearl_lattice>,<contenttweaker:pearl_lattice>],
    [<contenttweaker:pearl_lattice>,<ore:ingotChaoticMetal>,<contenttweaker:pearl_lattice>],
    [<contenttweaker:pearl_lattice>,<contenttweaker:pearl_lattice>,<contenttweaker:pearl_lattice>]
]);

recipes.remove(<avaritia:resource>);
Carpenter.addRecipe(<avaritia:resource>, [
    [<contenttweaker:end_diamond_block>,<contenttweaker:eternalslate>,<contenttweaker:end_diamond_block>],
    [<contenttweaker:eternalslate>,<contenttweaker:crystal_cluster_core>,<contenttweaker:eternalslate>],
    [<contenttweaker:end_diamond_block>,<contenttweaker:eternalslate>,<contenttweaker:end_diamond_block>]
], 10, <liquid:mana> * 1000, <forestry:honey_drop:2>);
