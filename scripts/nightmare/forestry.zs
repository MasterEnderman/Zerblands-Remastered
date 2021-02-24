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

import mods.jei.JEI;

JEI.removeAndHide(<forestry:bottler>);

JEI.addItem(<forestry:thermionic_tubes:8>);

recipes.remove(<forestry:ash_stairs>);
recipes.addShaped(<forestry:ash_stairs> * 4, [
    [<forestry:ash_brick>,null,null],
    [<forestry:ash_brick>,<forestry:ash_brick>,null],
    [<forestry:ash_brick>,<forestry:ash_brick>,<forestry:ash_brick>]
]);

recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped(<forestry:sturdy_machine>, [
    [<ore:plateBronze>,<immersiveengineering:material:27>,<ore:plateBronze>],
    [<calculator:redstoneingot>,<extrautils2:machine>,<calculator:redstoneingot>],
    [<ore:plateBronze>,<actuallyadditions:item_misc:8>,<ore:plateBronze>]
]);

recipes.remove(<forestry:carpenter>);
recipes.addShaped(<forestry:carpenter>, [
    [<ore:plateBronze>,<immersiveengineering:metal_device0:5>,<ore:plateBronze>],
    [<ore:gearConstantan>,<forestry:sturdy_machine>,<ore:gearConstantan>],
    [<ore:plateBronze>,<enderio:block_tank>,<ore:plateBronze>]
]);

recipes.remove(<forestry:fabricator>);
recipes.addShaped(<forestry:fabricator>, [
    [<ore:plateGold>,<calculator:craftingcalculator>,<ore:plateGold>],
    [<calculator:advancedassembly>,<actuallyadditions:block_misc:9>,<calculator:advancedassembly>],
    [<contenttweaker:copper_coil>,<extrautils2:ingredients:13>,<contenttweaker:copper_coil>]
]);
