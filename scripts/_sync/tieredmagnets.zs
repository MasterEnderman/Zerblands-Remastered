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

import mods.jei.JEI;

JEI.removeAndHide(<tieredmagnets:magnet_durability_stone>);
JEI.removeAndHide(<tieredmagnets:magnet_durability_iron>);
JEI.removeAndHide(<tieredmagnets:magnet_durability_redstone>);
JEI.removeAndHide(<tieredmagnets:magnet_durability_gold>);
JEI.removeAndHide(<tieredmagnets:magnet_durability_obsidian>);
JEI.removeAndHide(<tieredmagnets:magnet_durability_lapis>);
JEI.removeAndHide(<tieredmagnets:magnet_durability_diamond>);
JEI.removeAndHide(<tieredmagnets:magnet_durability_emerald>);
JEI.removeAndHide(<tieredmagnets:magnet_magic_durability_stone>);
JEI.removeAndHide(<tieredmagnets:magnet_magic_durability_iron>);
JEI.removeAndHide(<tieredmagnets:magnet_magic_durability_redstone>);
JEI.removeAndHide(<tieredmagnets:magnet_magic_durability_gold>);
JEI.removeAndHide(<tieredmagnets:magnet_magic_durability_obsidian>);
JEI.removeAndHide(<tieredmagnets:magnet_magic_durability_lapis>);
JEI.removeAndHide(<tieredmagnets:magnet_magic_durability_diamond>);
JEI.removeAndHide(<tieredmagnets:magnet_magic_durability_emerald>);
JEI.removeAndHide(<tieredmagnets:magnet_free>);
JEI.removeAndHide(<tieredmagnets:magnet_magic_free>);

recipes.addShapeless(<tieredmagnets:magnet_energy_leadstone>, [<tieredmagnets:magnet_magic_energy_leadstone>]);
recipes.addShapeless(<tieredmagnets:magnet_energy_hardened>, [<tieredmagnets:magnet_magic_energy_hardened>]);
recipes.addShapeless(<tieredmagnets:magnet_energy_reinforced>, [<tieredmagnets:magnet_magic_energy_reinforced>]);
recipes.addShapeless(<tieredmagnets:magnet_energy_signalum>, [<tieredmagnets:magnet_magic_energy_signalum>]);
recipes.addShapeless(<tieredmagnets:magnet_energy_resonant>, [<tieredmagnets:magnet_magic_energy_resonant>]);
