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

import mods.inworldcrafting.FluidToItem;

recipes.removeShapeless(<earthworks:block_mud>);
recipes.removeShapeless(<earthworks:block_cob>);

recipes.removeByRecipeName("earthworks:block_dry_stone");
furnace.addRecipe(<earthworks:block_dry_stone>,<extrautils2:decorativesolid:2>);

recipes.remove(<earthworks:item_mud>);
FluidToItem.transform(<earthworks:item_mud>, <liquid:water>, [<earthworks:item_dirt>], false);
FluidToItem.transform(<earthworks:item_mud>, <liquid:water>, [<contenttweaker:soil>], false);

recipes.remove(<earthworks:item_slaked_lime>);
FluidToItem.transform(<earthworks:item_slaked_lime>, <liquid:water>, [<earthworks:item_quicklime>], false);

recipes.remove(<earthworks:item_timber>);
recipes.addShaped(<earthworks:item_timber> * 4, [
    [<ore:stickWood>,<bibliocraft:framingboard>,<ore:stickWood>],
    [<ore:stickWood>,<bibliocraft:framingsheet>,<ore:stickWood>],
    [<ore:stickWood>,<bibliocraft:framingboard>,<ore:stickWood>]
]);
