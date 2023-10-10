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

import mods.botania.PureDaisy;
import mods.inworldcrafting.FluidToItem;
import mods.thermalexpansion.Transposer;

recipes.removeShapeless(<earthworks:block_mud>);
recipes.removeShapeless(<earthworks:block_cob>);

recipes.removeByRecipeName("earthworks:block_dry_stone");
furnace.addRecipe(<earthworks:block_dry_stone>,<extrautils2:decorativesolid:2>);

recipes.remove(<earthworks:item_mud>);

FluidToItem.transform(<earthworks:item_mud>, <liquid:water>, [<earthworks:item_dirt>], false);
Transposer.addFillRecipe(<earthworks:item_mud>, <earthworks:item_dirt>, <liquid:water> * 100, 200);

FluidToItem.transform(<earthworks:item_mud>, <liquid:water>, [<contenttweaker:soil>], false);
Transposer.addFillRecipe(<earthworks:item_mud>, <contenttweaker:soil>, <liquid:water> * 100, 200);

recipes.remove(<earthworks:item_slaked_lime>);
FluidToItem.transform(<earthworks:item_slaked_lime>, <liquid:water>, [<earthworks:item_quicklime>], false);
Transposer.addFillRecipe(<earthworks:item_slaked_lime>, <earthworks:item_quicklime>, <liquid:water> * 100, 200);

recipes.removeByRecipeName("earthworks:item_lime_plaster_alt");
FluidToItem.transform(<earthworks:item_lime_plaster> * 8, <liquid:water>, [<earthworks:item_quicklime> * 4,<earthworks:item_sand> * 4], false);

recipes.remove(<earthworks:item_timber>);
recipes.addShaped(<earthworks:item_timber> * 4, [
    [<ore:stickWood>,<bibliocraft:framingboard>,<ore:stickWood>],
    [<ore:stickWood>,<bibliocraft:framingsheet>,<ore:stickWood>],
    [<ore:stickWood>,<bibliocraft:framingboard>,<ore:stickWood>]
]);

PureDaisy.addRecipe(<chisel:limestone2:7>, <earthworks:block_chalk>, 100);
