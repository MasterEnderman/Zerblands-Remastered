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

import mods.botania.ManaInfusion;
import mods.inworldcrafting.FluidToItem;

FluidToItem.transform(<astralsorcery:blockinfusedwood>, <liquid:astralsorcery.liquidstarlight>, [<ore:logWood>], false);
FluidToItem.transform(<astralsorcery:blockinfusedwood:1>, <liquid:astralsorcery.liquidstarlight>, [<ore:plankWood>], false);

recipes.addShapeless(<astralsorcery:itemknowledgeshare>,[<astralsorcery:itemknowledgeshare>]);

recipes.remove(<astraladditions:block_infused_wood_fence>);
recipes.addShaped(<astraladditions:block_infused_wood_fence>*3, [
    [<astralsorcery:blockinfusedwood:1>,<ore:stickWood>,<astralsorcery:blockinfusedwood:1>],
    [<astralsorcery:blockinfusedwood:1>,<ore:stickWood>,<astralsorcery:blockinfusedwood:1>]
]);

ManaInfusion.addConjuration(<astralsorcery:itemcraftingcomponent> * 2, <astralsorcery:itemcraftingcomponent>, 2400);
