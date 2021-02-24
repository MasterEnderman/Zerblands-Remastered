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

import mods.actuallyadditions.Empowerer;
import mods.botania.ManaInfusion;

ManaInfusion.addConjuration(<embers:archaic_brick> * 2, <embers:archaic_brick>, 5000);

recipes.addShaped(<embers:golems_eye>, [
    [null,<embers:archaic_brick>,null],
    [<embers:archaic_brick>,<minecraft:ender_eye>,<embers:archaic_brick>],
    [null,<embers:archaic_brick>,null]
]);

recipes.remove(<embers:shard_ember>);
recipes.addShapeless(<embers:shard_ember> * 6, [<embers:tinker_hammer>,<embers:crystal_ember>]);

recipes.remove(<embers:crystal_ember>);
Empowerer.addRecipe(<embers:crystal_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, 500, 100);

recipes.remove(<embers:codex>);
recipes.addShaped(<embers:codex>, [
    [<embers:archaic_brick>],
    [<embers:golems_eye>],
    [<embers:archaic_brick>]
]);

<embers:archaic_brick>.addTooltip(format.green("Drops from Ancient Golem."));
