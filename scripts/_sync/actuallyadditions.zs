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
import mods.enderio.SagMill;
import mods.immersiveengineering.Mixer;

Mixer.addRecipe(<liquid:crystaloil>*1000,<liquid:refinedcanolaoil>*1000,[<actuallyadditions:item_misc:23>], 1000);
Mixer.addRecipe(<liquid:empoweredoil>*1000,<liquid:crystaloil>*1000,[<actuallyadditions:item_misc:24>], 1000);

SagMill.removeRecipe(<minecraft:emerald>);
SagMill.addRecipe([<actuallyadditions:item_dust:3>], [100], <minecraft:emerald>, "NONE", 5000);

SagMill.addRecipe([<actuallyadditions:item_dust:7>], [100], <actuallyadditions:item_misc:5>, "NONE", 5000);

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
