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

recipes.remove(<rftools:machine_frame>);
recipes.addShaped(<rftools:machine_frame>, [
    [<ore:ingotSteel>,<ore:gemLapis>,<ore:ingotSteel>],
    [<ore:gemLapis>,<ore:gearAluminum>,<ore:gemLapis>],
    [<ore:ingotSteel>,<ore:gemLapis>,<ore:ingotSteel>]
]);

recipes.remove(<rftools:machine_base>);
recipes.addShaped(<rftools:machine_base>, [
    [<ore:gemLapis>,<ore:gearAluminum>,<ore:gemLapis>],
    [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]
]);

recipes.remove(<rftools:environmental_controller>);
recipes.addShaped(<rftools:environmental_controller>, [
    [<randomthings:stableenderpearl>,<minecraft:beacon>,<randomthings:stableenderpearl>],
    [<rftools:infused_enderpearl>,<rftools:machine_frame>,<rftools:infused_enderpearl>],
    [<randomthings:stableenderpearl>,<actuallyadditions:block_crystal_empowered:4>,<randomthings:stableenderpearl>]
]);
