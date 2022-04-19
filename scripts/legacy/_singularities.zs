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

import mods.avaritia.ExtremeCrafting;

var list as IIngredient[IItemStack] = {
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

    <contenttweaker:enderium> : <ore:blockEnderium>,
    <contenttweaker:signalum> : <ore:blockSignalum>,
    <contenttweaker:invar> : <ore:blockInvar>,
    <contenttweaker:neutronium> : <ore:blockCosmicNeutronium>,
    <contenttweaker:infinite> : <contenttweaker:creative_block>,
    <contenttweaker:conductive> : <ore:blockConductiveIron>,
    <contenttweaker:vibrant> : <ore:blockVibrantAlloy>,
    <contenttweaker:demon> : <ore:blockDemonicMetal>,
    <contenttweaker:bronze> : <ore:blockBronze>,
    <contenttweaker:steel> : <ore:blockSteel>,
};

var index as int = 0;

for singularity, filler in list {
    ExtremeCrafting.addShaped("singularity_"~index,singularity,[
        [null,null,filler,filler,filler,filler,filler,null,null],
        [null,filler,filler,filler,filler,filler,filler,filler,null],
        [filler,filler,filler,filler,<avaritia:block_resource>,filler,filler,filler,filler],
        [filler,filler,filler,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,filler,filler,filler],
        [filler,filler,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:endest_pearl>,<avaritia:block_resource>,<avaritia:block_resource>,filler,filler],
        [filler,filler,filler,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,filler,filler,filler],
        [filler,filler,filler,filler,<avaritia:block_resource>,filler,filler,filler,filler],
        [null,filler,filler,filler,filler,filler,filler,filler,null],
        [null,null,filler,filler,filler,filler,filler,null,null]
    ]);
    index += 1;
}
