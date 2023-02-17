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

<psicosts:flux_resonator>.addTooltip(format.green("*Converts 1000 RF to 1 PSI.*"));
<psicosts:starlight_resonator>.addTooltip(format.green("*Converts 1 mb to 2 PSI.*"));
<psicosts:ember_resonator>.addTooltip(format.green("*Converts 16 ember to 10 PSI.*"));
<psicosts:blood_resonator>.addTooltip(format.green("*Converts 1 LP to 5 PSI.*"));
<psicosts:mana_resonator>.addTooltip(format.green("*Converts 3 mana to 5 PSI.*"));
