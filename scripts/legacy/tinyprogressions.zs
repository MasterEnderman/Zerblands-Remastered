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

import mods.jei.JEI;

JEI.removeAndHide(<tp:quick_sand>);
JEI.removeAndHide(<tp:juicer>);
JEI.removeAndHide(<tp:soul_sandstone>);
JEI.removeAndHide(<tp:ghost_block>);
JEI.removeAndHide(<tp:obsidian_dust>);
JEI.removeAndHide(<tp:stone_hammer>);

recipes.remove(<tp:watering_can>);
recipes.addShaped(<tp:watering_can>, [
    [<ore:ingotIron>,<thermalfoundation:fertilizer>,null],
    [<ore:ingotIron>,<extrautils2:wateringcan>,<ore:ingotIron>],
    [null,<ore:ingotIron>,null]
]);

recipes.addShaped(<tp:watering_can_upgrade>, [
    [<contenttweaker:reinforced_obsidian_ingot>,<minecraft:nether_star>,null],
    [<contenttweaker:reinforced_obsidian_ingot>,<tp:watering_can>,<contenttweaker:reinforced_obsidian_ingot>],
    [null,<contenttweaker:reinforced_obsidian_ingot>,null]
]);

var potion_speed_long = <minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"});

recipes.remove(<tp:growth_upgrade>);
recipes.addShaped(<tp:growth_upgrade>, [
    [<tp:growth_block>,<tp:watering_can_upgrade>,<tp:growth_block>],
    [potion_speed_long,<tp:dirty_glass>,potion_speed_long],
    [<tp:growth_block>,<tp:watering_can_upgrade>,<tp:growth_block>]
]);
