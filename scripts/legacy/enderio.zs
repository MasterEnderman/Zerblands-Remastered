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

import mods.enderio.SagMill;
import mods.inworldcrafting.FluidToItem;

recipes.addShaped(<enderio:item_broken_spawner>, [
    [null,<actuallyadditions:item_misc:20>,null],
    [<actuallyadditions:item_misc:20>,<enderio:block_decoration1:14>,<actuallyadditions:item_misc:20>],
    [null,<actuallyadditions:item_misc:20>,null]
]);

SagMill.removeRecipe(<enderio:block_infinity>);
SagMill.removeRecipe(<enderio:block_infinity:1>);
SagMill.removeRecipe(<enderio:block_infinity:2>);

FluidToItem.transform(<enderio:item_material:20>, <liquid:astralsorcery.liquidstarlight>, [<ore:dustQuartzBlack>], false);
