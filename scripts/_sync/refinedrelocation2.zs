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
import scripts.functions.firstItemFromOreDict;
import scripts.functions.itemMS;

var msgShift as string = "<Hold SHIFT for more details>";

<refinedrelocation:sorting_upgrade>.addShiftTooltip(
    RR2["sorting_upgrade"],
    msgShift
);

<refinedrelocation:stack_limiter>.addShiftTooltip(
    RR2["stack_limiter"],
    msgShift
);

<refinedrelocation:input_filter>.addShiftTooltip(
    RR2["input_filter"],
    msgShift
);

<refinedrelocation:output_filter>.addShiftTooltip(
    RR2["output_filter"],
    msgShift
);

<refinedrelocation:slot_lock>.addShiftTooltip(
    RR2["slot_lock"],
    msgShift
);

<refinedrelocation:sorting_chest>.addShiftTooltip(
    RR2["sorting_chest"],
    msgShift
);

<refinedrelocation:block_extender>.addShiftTooltip(
    RR2["block_extender"],
    msgShift
);

<refinedrelocation:fast_hopper>.addShiftTooltip(
    RR2["fast_hopper"],
    msgShift
);

<refinedrelocation:filtered_hopper>.addShiftTooltip(
    RR2["filtered_hopper"],
    msgShift
);

<refinedrelocation:sorting_connector>.addShiftTooltip(
    RR2["sorting_connector"],
    msgShift
);

<refinedrelocation:sorting_interface>.addShiftTooltip(
    RR2["sorting_interface"],
    msgShift
);
