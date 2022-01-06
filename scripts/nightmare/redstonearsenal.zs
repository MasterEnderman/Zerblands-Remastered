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

import mods.forestry.Carpenter;
import mods.jei.JEI;
import mods.thermalexpansion.Transposer;

JEI.removeAndHide(<simplyjetpacks:metaitemmods:25>);

recipes.removeByRecipeName("redstonearsenal:gem_crystal_flux");

Transposer.removeFillRecipe(<minecraft:diamond>, <liquid:redstone>);
Transposer.addFillRecipe(<redstonearsenal:material:160>, <enderio:item_material:14>, <liquid:redstone> * 1000, 2500);

recipes.remove(<redstonearsenal:material:224>);
Carpenter.addRecipe(<redstonearsenal:material:224>, [
    [<ore:plateElectrumFlux>,<ore:gearElectrumFlux>,<ore:plateElectrumFlux>],
    [<ore:gearElectrumFlux>,<contenttweaker:red_core>,<ore:gearElectrumFlux>],
    [<ore:plateElectrumFlux>,<ore:gearElectrumFlux>,<ore:plateElectrumFlux>]
], 60, <liquid:crystaloil> * 1000, <ic2:itembatcrystal>);

var tough_rod as IIngredient = <tconstruct:tough_tool_rod>.withTag({Material: "obsidian"});
var large_plate as IIngredient = <tconstruct:large_plate>.withTag({Material: "obsidian"});

recipes.remove(<redstonearsenal:material:192>);
Carpenter.addRecipe(<redstonearsenal:material:192>, [
    [null,<ic2:itemmisc:303>,tough_rod],
    [<ic2:itemmisc:303>,large_plate,<ic2:itemmisc:303>],
    [tough_rod,<ic2:itemmisc:303>,null]
], 60, <liquid:pyrotheum> * 1000, <randomthings:obsidianskull>);
