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
import mods.jei.JEI;

JEI.addItem(<thermalexpansion:morb>);

ExtremeCrafting.addShaped("te_creative_tank",<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte}), [
    [<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>],
    [<contenttweaker:creative>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:block_crystal_empowered:1>,<contenttweaker:enderium>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:block_crystal_empowered:1>,<contenttweaker:creative>],
    [<thermalfoundation:glass:8>,<actuallyadditions:block_crystal_empowered:1>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<actuallyadditions:block_crystal_empowered:1>,<thermalfoundation:glass:8>],
    [<thermalfoundation:glass:8>,<actuallyadditions:block_crystal_empowered:1>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<actuallyadditions:block_crystal_empowered:1>,<thermalfoundation:glass:8>],
    [<thermalfoundation:glass:8>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<avaritia:resource:5>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<thermalfoundation:glass:8>],
    [<thermalfoundation:glass:8>,<actuallyadditions:block_crystal_empowered:1>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<actuallyadditions:block_crystal_empowered:1>,<thermalfoundation:glass:8>],
    [<thermalfoundation:glass:8>,<actuallyadditions:block_crystal_empowered:1>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<contenttweaker:enderium>,<actuallyadditions:block_crystal_empowered:1>,<thermalfoundation:glass:8>],
    [<contenttweaker:creative>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:block_crystal_empowered:1>,<contenttweaker:enderium>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:block_crystal_empowered:1>,<actuallyadditions:block_crystal_empowered:1>,<contenttweaker:creative>],
    [<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>],
]);

ExtremeCrafting.addShaped("te_creative_cell",<thermalexpansion:cell>.withTag({Recv: 25000, RSControl: 0 as byte, Facing: 4 as byte, Creative: 1 as byte, Energy: 50000000, Level: 4 as byte, SideCache: [2, 2, 2, 2, 2, 2] as byte[] as byte[], Send: 25000}), [
    [<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<avaritia:singularity:3>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>],
    [<contenttweaker:creative>,<ore:blockEnderium>,<ore:blockEnderium>,<ore:blockEnderium>,<avaritia:singularity:3>,<ore:blockEnderium>,<ore:blockEnderium>,<ore:blockEnderium>,<contenttweaker:creative>],
    [<contenttweaker:creative>,<ore:blockEnderium>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<ore:blockEnderium>,<contenttweaker:creative>],
    [<contenttweaker:creative>,<ore:blockEnderium>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<ore:blockEnderium>,<contenttweaker:creative>],
    [<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:resource:5>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>],
    [<contenttweaker:creative>,<ore:blockEnderium>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<ore:blockEnderium>,<contenttweaker:creative>],
    [<contenttweaker:creative>,<ore:blockEnderium>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<avaritia:singularity:3>,<ore:blockEnderium>,<contenttweaker:creative>],
    [<contenttweaker:creative>,<ore:blockEnderium>,<ore:blockEnderium>,<ore:blockEnderium>,<avaritia:singularity:3>,<ore:blockEnderium>,<ore:blockEnderium>,<ore:blockEnderium>,<contenttweaker:creative>],
    [<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<avaritia:singularity:3>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>],
]);

recipes.addShaped(<thermalexpansion:capacitor:32000>, [
    [null,<avaritia:singularity:3>,null],
    [<contenttweaker:creative>,<thermalexpansion:capacitor:4>,<contenttweaker:creative>],
    [<avaritia:singularity:3>,<ic2:itemmisc:264>,<avaritia:singularity:3>]
]);
