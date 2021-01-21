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

recipes.remove(<gendustry:power_module>);
recipes.addShaped(<gendustry:power_module>, [
    [<ore:plateSignalum>,<enderio:item_basic_capacitor:1>,<ore:plateSignalum>],
    [<enderio:item_basic_capacitor:1>,<ore:gearEnderium>,<enderio:item_basic_capacitor:1>],
    [<ore:plateSignalum>,<enderio:item_basic_capacitor:1>,<ore:plateSignalum>]
]);

recipes.remove(<gendustry:industrial_apiary>);
recipes.addShaped(<gendustry:industrial_apiary>, [
    [<ore:plateConstantan>,<thermalfoundation:glass_alloy:6>,<ore:plateConstantan>],
    [<gendustry:power_module>,<forestry:alveary.plain>,<gendustry:power_module>],
    [<ore:plateConstantan>,<forestry:hardened_machine>,<ore:plateConstantan>]
]);

recipes.remove(<gendustry:upgrade_frame>);
recipes.addShaped(<gendustry:upgrade_frame>, [
    [<ore:ingotTin>,<minecraft:redstone>,<ore:ingotTin>],
    [<ore:ingotTin>,<ore:plateInvar>,<ore:ingotTin>],
    [<ore:ingotTin>,<opencomputers:material:10>,<ore:ingotTin>]
]);

recipes.remove(<gendustry:genetics_processor>);
recipes.addShaped(<gendustry:genetics_processor>, [
    [<ore:gemDiamond>,<ic2:itemmisc:452>,<ore:gemDiamond>],
    [<minecraft:redstone>,<openmodularturrets:intermediate_tiered:4>,<minecraft:redstone>],
    [<ore:gemDiamond>,<opencomputers:component:1>,<ore:gemDiamond>]
]);

recipes.remove(<gendustry:env_processor>);
recipes.addShaped(<gendustry:env_processor>, [
    [<ore:gemDiamond>,<ic2:itemmisc:452>,<ore:gemDiamond>],
    [<minecraft:dye:4>,<openmodularturrets:intermediate_tiered:4>,<minecraft:dye:4>],
    [<ore:gemDiamond>,<opencomputers:component:1>,<ore:gemDiamond>]
]);
