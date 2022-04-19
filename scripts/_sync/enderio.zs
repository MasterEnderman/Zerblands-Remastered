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

import mods.enderio.SagMill;
import mods.jei.JEI;

JEI.removeAndHide(<enderio:item_inventory_remote>);
JEI.removeAndHide(<enderio:item_inventory_remote:1>);
JEI.removeAndHide(<enderio:item_inventory_remote:2>);
JEI.removeAndHide(<enderio:item_inventory_remote>.withTag({"enderio:energy": 60000, "enderio:famount": 2000}));
JEI.removeAndHide(<enderio:item_inventory_remote:1>.withTag({"enderio:energy": 120000, "enderio:famount": 1000}));
JEI.removeAndHide(<enderio:item_inventory_remote:2>.withTag({"enderio:energy": 150000, "enderio:famount": 1500}));

JEI.removeAndHide(<enderio:item_material:26>);
JEI.removeAndHide(<enderio:item_material:27>);

<enderio:block_inventory_chest_tiny>.addTooltip(format.green("Holds 81 Stacks"));
<enderio:block_inventory_chest_small>.addTooltip(format.green("Holds 108 Stacks"));
<enderio:block_inventory_chest_medium>.addTooltip(format.green("Holds 135 Stacks"));
<enderio:block_inventory_chest_big>.addTooltip(format.green("Holds 162 Stacks"));
<enderio:block_inventory_chest_large>.addTooltip(format.green("Holds 216 Stacks"));
<enderio:block_inventory_chest_huge>.addTooltip(format.green("Holds 270 Stacks"));
<enderio:block_inventory_chest_enormous>.addTooltip(format.green("Holds 351 Stacks"));
<enderio:block_inventory_chest_warehouse>.addTooltip(format.green("Holds 432 Stacks"));
<enderio:block_inventory_chest_warehouse13>.addTooltip(format.green("Holds 540 Stacks"));

// SagMill.removeRecipe(<minecraft:bedrock>);
SagMill.addRecipe([<minecraft:bedrock>,<enderio:item_material:20>*16,<avaritia:resource:2>*2,<avaritia:resource:2>*2],[100,100,80,40],<minecraft:bedrock>,"NONE",1000000);
