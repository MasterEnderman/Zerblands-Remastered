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

import mods.avaritia.Compressor;
import mods.avaritia.ExtremeCrafting;
import mods.bloodmagic.AlchemyTable;
import mods.enderio.AlloySmelter;
import mods.forestry.Carpenter;
import mods.jei.JEI;

ExtremeCrafting.remove(<avaritia:neutron_collector>);
JEI.removeAndHide(<avaritia:neutron_collector>);

JEI.removeAndHide(<denseneutroncollectors:compressed_neutron_collector>);
JEI.removeAndHide(<denseneutroncollectors:double_compressed_neutron_collector>);
JEI.removeAndHide(<denseneutroncollectors:triple_compressed_neutron_collector>);

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
AlloySmelter.addRecipe(<avaritia:resource:1>, [<contenttweaker:pearl_lattice>,<tconevo:material>,<contenttweaker:atomicbinder>], 50000);

ExtremeCrafting.remove(<avaritia:neutronium_compressor>);
recipes.addShaped(<avaritia:neutronium_compressor>, [
    [<ic2:blockmachinemv:4>,<ore:blockCrystalMatrix>,<ic2:blockmachinemv:4>],
    [<ic2:blockmachinemv:4>,<ore:blockCosmicNeutronium>,<ic2:blockmachinemv:4>],
    [<ic2:blockmachinemv:4>,<ore:blockCrystalMatrix>,<ic2:blockmachinemv:4>]
]);

recipes.remove(<avaritia:resource>);
Carpenter.addRecipe(<avaritia:resource>, [
    [<contenttweaker:end_diamond_block>,<contenttweaker:eternalslate>,<contenttweaker:end_diamond_block>],
    [<contenttweaker:eternalslate>,<contenttweaker:crystal_cluster_core>,<contenttweaker:eternalslate>],
    [<contenttweaker:end_diamond_block>,<contenttweaker:eternalslate>,<contenttweaker:end_diamond_block>]
], 10, <liquid:mana> * 10000, <contenttweaker:crystal_ender>);
Carpenter.addRecipe(<avaritia:resource> * 4, [
    [<contenttweaker:enddiamond>],
    [<contenttweaker:crystal_cluster_core>],
    [<contenttweaker:eternalslate>]
], 10, <liquid:mana> * 100, <forestry:honey_drop:2>);

var mapSingularity as IIngredient[IItemStack] = {
    <avaritia:singularity> : <ore:blockIron>,
    <avaritia:singularity:1> : <ore:blockGold>,
    <avaritia:singularity:2> : <ore:blockLapis>,
    <avaritia:singularity:3> : <ore:blockRedstone>,
    <avaritia:singularity:4> : <ore:blockQuartz>,
    <avaritia:singularity:5> : <ore:blockCopper>,
    <avaritia:singularity:6> : <ore:blockTin>,
    <avaritia:singularity:7> : <ore:blockLead>,
    <avaritia:singularity:8> : <ore:blockSilver>,
    <avaritia:singularity:9> : <ore:blockNickel>,
    <avaritia:singularity:10> : <ore:blockDiamond>,
    <avaritia:singularity:11> : <ore:blockEmerald>,
    <avaritia:singularity:12> : <ore:blockElectrumFlux>,
    <avaritia:singularity:13> : <ore:blockPlatinum>,
    <avaritia:singularity:14> : <ore:blockIridium>,
    <contenttweaker:steel> : <ore:blockSteel>,
    <contenttweaker:vibrant> : <ore:blockVibrantAlloy>,
    <contenttweaker:neutronium> : <ore:blockCosmicNeutronium>,
    <contenttweaker:infinite> : <contenttweaker:creative_block>,
    <contenttweaker:conductive> : <ore:blockConductiveIron>,
    <contenttweaker:bronze> : <ore:blockBronze>,
    <contenttweaker:enderium> : <ore:blockEnderium>,
    <contenttweaker:signalum> : <ore:blockSignalum>,
    <contenttweaker:invar> : <ore:blockInvar>,
    <contenttweaker:demon> : <ore:blockDemonicMetal>,
};

Compressor.removeAll();

for item, input in mapSingularity {
    var name as string = toString(item) + "_recipe";
    Compressor.add(name, item, 64*16, input, true);
}
