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

import mods.embers.Alchemy;

import scripts.functions.calc_basic;

recipes.addShaped(<embers:creative_ember_source>, [
    [<embers:block_dawnstone>,<embers:block_dawnstone>,<embers:block_dawnstone>],
    [<embers:block_dawnstone>,<contenttweaker:infinite>,<embers:block_dawnstone>],
    [<embers:block_dawnstone>,<embers:block_dawnstone>,<embers:block_dawnstone>]
]);

<embers:archaic_brick>.addTooltip(format.green("Drops from Ancient Golem."));
<embers:golems_eye>.addTooltip(format.green("Drops from Ancient Golem,"));
<embers:golems_eye>.addTooltip(format.green("when killed with a pickaxe."));

<embers:crystal_ember>.addTooltip(format.green("Is obtained with an Ember Bore."));
<embers:shard_ember>.addTooltip(format.green("Is obtained with an Ember Bore."));
<embers:dust_ember>.addTooltip(format.green("Is obtained with an Ember Bore."));

calc_basic(<embers:spark_plug>, <embers:aspectus_copper>, <ore:blockGlass>);

// Hash to 0 fix

var seeds as IIngredient = <embers:seed_iron>|<embers:seed_gold>|<embers:seed_copper>|<embers:seed_silver>|<embers:seed_lead>|<embers:seed_dawnstone>;

Alchemy.remove(<embers:dust_metallurgic>);
Alchemy.add(<embers:dust_metallurgic> * 3, [seeds, <embers:dust_ember>, <minecraft:redstone>, null, null], {
    "dawnstone": 8 to 16,
    "iron": 8 to 16,
    "copper": 8 to 16,
    "silver": 8 to 16,
    "lead": 8 to 16
});
