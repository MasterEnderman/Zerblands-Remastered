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

recipes.remove(<storagedrawers:controller>);
recipes.addShaped(<storagedrawers:controller>, [
    [<minecraft:iron_ingot>,<enderio:item_material:42>,<minecraft:iron_ingot>],
    [<enderio:item_material:42>,<enderutilities:storage_0:6>,<enderio:item_material:42>],
    [<minecraft:iron_ingot>,<storagedrawers:compdrawers>,<minecraft:iron_ingot>]
]);

recipes.remove(<storagedrawers:compdrawers>);
recipes.addShaped(<storagedrawers:compdrawers>, [
    [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],
    [<minecraft:piston>,<enderutilities:enderpart:50>,<minecraft:piston>],
    [<ore:ingotIron>,<ore:gemDiamond>,<ore:ingotIron>]
]);

recipes.remove(<storagedrawers:upgrade_template>);
recipes.addShaped(<storagedrawers:upgrade_template>, [
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
    [<ore:stickWood>,<enderutilities:enderpart:50>,<ore:stickWood>],
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]
]);

recipes.remove(<storagedrawers:upgrade_void>);
recipes.addShaped(<storagedrawers:upgrade_void>, [
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
    [<actuallyadditions:item_crystal:3>,<extrautils2:minichest>,<actuallyadditions:item_crystal:3>],
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]
]);

recipes.addShaped(<storagedrawers:upgrade_creative>, [
    [<environmentaltech:aethium>,<appliedenergistics2:material:38>,<environmentaltech:aethium>],
    [<appliedenergistics2:material:38>,<storagedrawers:upgrade_template>,<appliedenergistics2:material:38>],
    [<environmentaltech:aethium>,<appliedenergistics2:material:38>,<environmentaltech:aethium>]
]);

<storagedrawers:upgrade_creative>.displayName = "Deep Storage Upgrade";
