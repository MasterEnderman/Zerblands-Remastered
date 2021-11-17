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

import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Empowerer;
import mods.enderio.SagMill;
import mods.jei.JEI;

JEI.removeAndHide(<actuallyadditions:block_giant_chest_medium>);
JEI.removeAndHide(<actuallyadditions:block_giant_chest_large>);
JEI.removeAndHide(<actuallyadditions:item_crate_keeper>);
JEI.removeAndHide(<actuallyadditions:item_chest_to_crate_upgrade>);
JEI.removeAndHide(<actuallyadditions:item_small_to_medium_crate_upgrade>);
JEI.removeAndHide(<actuallyadditions:item_medium_to_large_crate_upgrade>);

recipes.remove(<actuallyadditions:block_giant_chest>);
Empowerer.addRecipe(<actuallyadditions:block_giant_chest>, <actuallyadditions:block_misc:4>, <minecraft:chest>, <minecraft:chest>, <minecraft:chest>, <minecraft:chest>, 5000, 20);

SagMill.removeRecipe(<minecraft:emerald>);
SagMill.addRecipe([<actuallyadditions:item_dust:3>], [100], <minecraft:emerald>, "NONE", 5000);

SagMill.addRecipe([<actuallyadditions:item_dust:7>], [100], <actuallyadditions:item_misc:5>, "NONE", 5000);

recipes.addShaped(<actuallyadditions:item_misc:20>, [
    [<actuallyadditions:item_crystal:1>,<actuallyadditions:item_crystal:5>,<actuallyadditions:item_crystal:1>],
    [<actuallyadditions:item_crystal:5>,<ore:barsIron>,<actuallyadditions:item_crystal:5>],
    [<actuallyadditions:item_crystal:1>,<actuallyadditions:item_crystal:5>,<actuallyadditions:item_crystal:1>]
]);

recipes.addShaped(<actuallyadditions:item_solidified_experience>, [
    [<ore:nuggetGold>,<ore:nuggetGold>,<ore:nuggetGold>],
    [<ore:nuggetGold>,<minecraft:experience_bottle>,<ore:nuggetGold>],
    [<ore:nuggetGold>,<ore:nuggetGold>,<ore:nuggetGold>]
]);

// Machine Casings
recipes.remove(<actuallyadditions:block_misc:4>);
recipes.addShaped(<actuallyadditions:block_misc:4>, [
    [<ore:plankWood>,<tconstruct:pattern>,<ore:plankWood>],
    [<tconstruct:pattern>,<forestry:impregnated_casing>,<tconstruct:pattern>],
    [<ore:plankWood>,<tconstruct:pattern>,<ore:plankWood>]
]);

recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped(<actuallyadditions:block_misc:9>, [
    [<ore:ingotIron>,<actuallyadditions:item_misc:5>,<ore:ingotIron>],
    [<actuallyadditions:item_misc:5>,<ore:gearBronze>,<actuallyadditions:item_misc:5>],
    [<ore:ingotIron>,<actuallyadditions:item_misc:5>,<ore:ingotIron>]
]);

recipes.remove(<actuallyadditions:block_misc:8>);
recipes.addShaped(<actuallyadditions:block_misc:8>, [
    [<actuallyadditions:item_crystal_empowered:2>,<ore:gearEnderium>,<actuallyadditions:item_crystal_empowered:2>],
    [<ore:gearEnderium>,<actuallyadditions:block_misc:2>,<ore:gearEnderium>],
    [<actuallyadditions:item_crystal_empowered:2>,<ore:gearEnderium>,<actuallyadditions:item_crystal_empowered:2>]
]);

recipes.remove(<actuallyadditions:block_furnace_solar>);
recipes.addShaped(<actuallyadditions:block_furnace_solar> * 3, [
    [<enderio:item_material:3>,<enderio:item_material:3>,<enderio:item_material:3>],
    [<ore:dustRedstone>,<actuallyadditions:block_misc:9>,<ore:dustRedstone>]
]);

// IItemStack output, IItemStack input, int energyUsed

var t as int = 40;

AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal>, <contenttweaker:redstone_ingot>, t);

AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:1>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:1>, <tconstruct:ingots>, t);

// AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:2>);
// AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:2>, , t);

AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:3>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:3>, <thermalfoundation:material:802>, t);

// AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:4>);
// AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:4>, , t);

// AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:5>);
// AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:5>, , t);

AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal>);
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal>, <contenttweaker:redstone_ingot_block>, t*10);

AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:1>);
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:1>, <tconstruct:metal>, t*10);

// AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:2>);
// AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:2>, , t*10);

AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:3>);
AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:3>, <thermalfoundation:storage_resource:1>, t*10);

// AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:4>);
// AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:4>, , t*10);

// AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:5>);
// AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:5>, , t*10);
