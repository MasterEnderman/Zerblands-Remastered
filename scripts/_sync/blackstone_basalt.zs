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

recipes.addShaped(<blackstonebasalt:blackstone_slab> * 6, [[<blackstonebasalt:blackstoneblock>,<blackstonebasalt:blackstoneblock>,<blackstonebasalt:blackstoneblock>]]);
recipes.addShaped(<blackstonebasalt:polished_blackstone_slab> * 6, [[<blackstonebasalt:polished_blackstone>,<blackstonebasalt:polished_blackstone>,<blackstonebasalt:polished_blackstone>]]);
recipes.addShaped(<blackstonebasalt:blackstone_bricks_slab> * 6, [[<blackstonebasalt:blackstonebricks>,<blackstonebasalt:blackstonebricks>,<blackstonebasalt:blackstonebricks>]]);

recipes.remove(<blackstonebasalt:blackstone_wall>);
recipes.addShaped(<blackstonebasalt:blackstone_wall> * 6, [
    [<blackstonebasalt:blackstoneblock>,<blackstonebasalt:blackstoneblock>,<blackstonebasalt:blackstoneblock>],
    [<blackstonebasalt:blackstoneblock>,<blackstonebasalt:blackstoneblock>,<blackstonebasalt:blackstoneblock>]
]);

recipes.remove(<blackstonebasalt:polished_blackstone_wall>);
recipes.addShaped(<blackstonebasalt:polished_blackstone_wall> * 6, [
    [<blackstonebasalt:polished_blackstone>,<blackstonebasalt:polished_blackstone>,<blackstonebasalt:polished_blackstone>],
    [<blackstonebasalt:polished_blackstone>,<blackstonebasalt:polished_blackstone>,<blackstonebasalt:polished_blackstone>]
]);

recipes.remove(<blackstonebasalt:blackstone_bricks_wall>);
recipes.addShaped(<blackstonebasalt:blackstone_bricks_wall> * 6, [
    [<blackstonebasalt:blackstonebricks>,<blackstonebasalt:blackstonebricks>,<blackstonebasalt:blackstonebricks>],
    [<blackstonebasalt:blackstonebricks>,<blackstonebasalt:blackstonebricks>,<blackstonebasalt:blackstonebricks>]
]);
