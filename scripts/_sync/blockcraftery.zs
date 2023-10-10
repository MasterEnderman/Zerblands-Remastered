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

recipes.remove(<blockcraftery:editable_slab>);
recipes.addShaped(<blockcraftery:editable_slab>*6,[[<blockcraftery:editable_block>,<blockcraftery:editable_block>,<blockcraftery:editable_block>]]);

recipes.remove(<blockcraftery:editable_slab_reinforced>);
recipes.addShaped(<blockcraftery:editable_slab_reinforced>*6,[[<blockcraftery:editable_block_reinforced>,<blockcraftery:editable_block_reinforced>,<blockcraftery:editable_block_reinforced>]]);
