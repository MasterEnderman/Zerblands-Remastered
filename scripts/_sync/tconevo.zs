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

import mods.enderio.AlloySmelter;
import mods.forestry.ThermionicFabricator;
import mods.thermalexpansion.InductionSmelter;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

recipes.remove(<tconevo:metal:4>);
recipes.remove(<tconevo:metal:9>);
recipes.remove(<tconevo:metal:14>);
recipes.remove(<tconevo:metal:29>);
recipes.remove(<tconevo:metal:34>);
recipes.remove(<tconevo:metal:39>);
recipes.remove(<tconevo:metal:44>);

// add missing oredicts --> map items to materials

<ore:plateAdvancedAlloy>.add(<ic2:itemmisc:257>);
<ore:plateCarbon>.add(<ic2:itemmisc:256>);
<ore:itemSunnarium>.add(<advancedsolars:sunnarium>);
<ore:sheetHDPE>.add(<contenttweaker:hdpe_sheet>);
<ore:slimeballPink>.add(<contenttweaker:pink_slime>);
<ore:ingotPinkMetal>.add(<contenttweaker:pink_slime_ingot>);

// add recipes to missing materials

Casting.addTableRecipe(<tconevo:edible>, <tconstruct:cast_custom>, <liquid:protein>, 250, false, 100);

ThermionicFabricator.addCast(<contenttweaker:pink_slime>, [
    [null,<ore:dyePink>,null],
    [<ore:dyePink>,<ore:slimeball>,<ore:dyePink>],
    [null,<ore:dyePink>,null]
], <liquid: glass> * 100, <botania:pinkinator>);

AlloySmelter.addRecipe(<contenttweaker:pink_slime_ingot>, [<ore:ingotKnightslime>,<contenttweaker:pink_slime> * 2, <contenttweaker:flawless_diamond_shard>], 50000);

AlloySmelter.addRecipe(<tconevo:metal_block:3>, [<tconevo:material> * 3, <abyssalcraft:cpearl>, <abyssalcraft:essence> * 4], 15000);

InductionSmelter.addRecipe(<tconevo:metal:35>, <contenttweaker:energium_dust> * 3, <tconevo:material>, 15000);

InductionSmelter.addRecipe(<tconevo:metal:40>, <ic2:itemmisc:202>, <tconevo:material>, 15000);

Melting.addRecipe(<liquid:essence_metal>*1296, <tconevo:metal_block:3>, 800);
