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

recipes.addShaped(<storagedrawers:upgrade_creative>, [
    [<environmentaltech:aethium>,<appliedenergistics2:material:38>,<environmentaltech:aethium>],
    [<appliedenergistics2:material:38>,<storagedrawers:upgrade_template>,<appliedenergistics2:material:38>],
    [<environmentaltech:aethium>,<appliedenergistics2:material:38>,<environmentaltech:aethium>]
]);

<storagedrawers:upgrade_creative>.displayName = "Deep Storage Upgrade";
