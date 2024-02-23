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
import mods.botania.ManaInfusion;

//Creative ME Storage Cell
ExtremeCrafting.addShaped("creative_me_storage_cell",<appliedenergistics2:creative_storage_cell>,[
    [<minecraft:bedrock>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<minecraft:bedrock>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<contenttweaker:infinite>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<avaritia:block_resource>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource>],
    [<minecraft:bedrock>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<appliedenergistics2:controller>,<avaritia:block_resource>,<avaritia:block_resource>,<avaritia:block_resource>,<minecraft:bedrock>]
]);

// Creative Energy Cell
recipes.addShaped(<appliedenergistics2:creative_energy_cell>, [
    [<contenttweaker:creative>,<appliedenergistics2:dense_energy_cell>,<contenttweaker:creative>],
    [<appliedenergistics2:dense_energy_cell>,<thermalexpansion:cell>.withTag({Recv: 25000, RSControl: 0 as byte, Facing: 4 as byte, Creative: 1 as byte, Energy: 50000000, Level: 4 as byte, SideCache: [2, 2, 2, 2, 2, 2] as byte[] as byte[], Send: 25000}),<appliedenergistics2:dense_energy_cell>],
    [<contenttweaker:creative>,<appliedenergistics2:dense_energy_cell>,<contenttweaker:creative>]
]);

<appliedenergistics2:crystal_seed>.addTooltip(format.red("*Won't grow, when thrown in water.*"));
<appliedenergistics2:crystal_seed:600>.addTooltip(format.red("*Won't grow, when thrown in water.*"));
<appliedenergistics2:crystal_seed:1200>.addTooltip(format.red("*Won't grow, when thrown in water.*"));

ManaInfusion.addConjuration(<appliedenergistics2:material> * 2, <appliedenergistics2:material>, 2500);
