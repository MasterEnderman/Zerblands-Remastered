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

recipes.remove(<rftoolspower:power_core1>);
recipes.addShaped(<rftoolspower:power_core1>, [
    [<ore:ingotRedstoneAlloy>,<ore:gemDiamond>,<ore:ingotRedstoneAlloy>],
    [<ore:gemDiamond>,<enderio:block_cap_bank:1>,<ore:gemDiamond>],
    [<ore:ingotRedstoneAlloy>,<ore:gemDiamond>,<ore:ingotRedstoneAlloy>]
]);

recipes.remove(<rftoolspower:power_core2>);
recipes.addShaped(<rftoolspower:power_core2>, [
    [<actuallyadditions:item_crystal>,<actuallyadditions:item_crystal:2>,<actuallyadditions:item_crystal>],
    [<actuallyadditions:item_crystal:2>,<enderio:block_cap_bank:2>,<actuallyadditions:item_crystal:2>],
    [<actuallyadditions:item_crystal>,<actuallyadditions:item_crystal:2>,<actuallyadditions:item_crystal>]
]);

recipes.remove(<rftoolspower:power_core3>);
recipes.addShaped(<rftoolspower:power_core3>, [
    [<actuallyadditions:item_crystal_empowered>,<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered>],
    [<actuallyadditions:item_crystal_empowered:2>,<enderio:block_cap_bank:3>,<actuallyadditions:item_crystal_empowered:2>],
    [<actuallyadditions:item_crystal_empowered>,<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered>]
]);
