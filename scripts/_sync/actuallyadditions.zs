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

import mods.avaritia.ExtremeCrafting;

recipes.remove(<actuallyadditions:item_wings_of_the_bats>);
ExtremeCrafting.addShaped("bat_wings",<actuallyadditions:item_wings_of_the_bats>, [
    [<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,null,null,null,null,null,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>],
    [<actuallyadditions:item_misc:15>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:item_misc:15>,null,null,null,<actuallyadditions:item_misc:15>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:item_misc:15>],
    [null,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,null,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,null],
    [null,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,null],
    [null,null,<actuallyadditions:item_misc:15>,<avaritia:resource:1>,<simplyjetpacks:metaitem:4>,<avaritia:resource:1>,<actuallyadditions:item_misc:15>,null,null],
    [null,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,null],
    [null,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,null,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,null],
    [<actuallyadditions:item_misc:15>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:item_misc:15>,null,null,null,<actuallyadditions:item_misc:15>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:item_misc:15>],
    [<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>,null,null,null,null,null,<actuallyadditions:item_misc:15>,<actuallyadditions:item_misc:15>]
]);
