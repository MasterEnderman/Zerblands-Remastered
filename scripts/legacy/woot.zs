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

import mods.enderio.AlloySmelter;
import mods.jei.JEI;

JEI.removeAndHide(<woot:stygianironore>);

furnace.remove(<woot:stygianironingot>, <woot:stygianironore>);

AlloySmelter.addRecipe(<woot:stygianironingot>, [<ore:ingotIron>*2,<minecraft:soul_sand>,<minecraft:netherrack>], 5000);

recipes.remove(<woot:yahhammer>);
recipes.addShaped(<woot:yahhammer>, [
    [<abyssalcraft:dreadplate>,<abyssalcraft:dreadplate>,<abyssalcraft:dreadplate>],
    [null,<bloodarsenal:base_item:1>,null],
    [null,<bloodarsenal:base_item:1>,null]
]);

recipes.remove(<woot:prism>);
recipes.addShaped(<woot:prism>, [
    [<harvestcraft:epicbaconitem>,<woot:stygianironingot>,<harvestcraft:epicbaconitem>],
    [<woot:stygianironingot>,<extrautils2:decorativeglass:5>,<woot:stygianironingot>],
    [<harvestcraft:epicbaconitem>,<woot:stygianironingot>,<harvestcraft:epicbaconitem>]
]);
