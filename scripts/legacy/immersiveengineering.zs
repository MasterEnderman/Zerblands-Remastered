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

import mods.ic2.Compressor;
import mods.ic2.Macerator;

Compressor.addRecipe(<immersiveengineering:material:18>, <immersiveengineering:material:17> * 8);
Macerator.addRecipe(<immersiveengineering:material:17>, <thermalfoundation:material:802>);

recipes.addShaped(<immersiveengineering:treated_wood> * 8, [
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [<ore:plankWood>,getBucketDefault("oil"),<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
]);

recipes.addShaped(<immersiveengineering:treated_wood> * 8, [
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [<ore:plankWood>,getBucketDefault("tree_oil"),<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
]);

recipes.addShaped(<immersiveengineering:treated_wood> * 8, [
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [<ore:plankWood>,getBucketDefault("canolaoil"),<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
]);

recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1>, [
    [<immersiveengineering:stone_decoration_slab:1>],
    [<immersiveengineering:stone_decoration_slab:1>]
]);
recipes.addShaped(<immersiveengineering:stone_decoration:1>, [
    [<earthworks:item_mud>,<earthworks:block_concrete>,<earthworks:item_mud>],
    [<earthworks:block_concrete>,<minecraft:furnace>,<earthworks:block_concrete>],
    [<earthworks:item_mud>,<earthworks:block_concrete>,<earthworks:item_mud>]
]);
