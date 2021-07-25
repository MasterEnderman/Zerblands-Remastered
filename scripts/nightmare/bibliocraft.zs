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

recipes.remove(<bibliocraft:framingsheet>);
recipes.addShaped(<bibliocraft:framingsheet> * 4, [
    [<earthworks:tool_saw:*>.transformDamage(3)],
    [<ore:plankWood>]
]);

recipes.remove(<bibliocraft:framingboard>);
recipes.addShaped(<bibliocraft:framingboard> * 2, [
    [<earthworks:tool_saw:*>.transformDamage(3)],
    [<bibliocraft:framingsheet>]
]);
