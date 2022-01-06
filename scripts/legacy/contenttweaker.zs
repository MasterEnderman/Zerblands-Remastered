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

import mods.avaritia.ExtremeCrafting;
import mods.bloodmagic.BloodAltar;
import mods.botania.PureDaisy;
import mods.enderio.AlloySmelter;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.tconstruct.Casting;

PureDaisy.addRecipe(<botanicadds:dreamrock>, <contenttweaker:runestone>, 100);

furnace.addRecipe(<contenttweaker:blood_infused_stone>,<evilcraft:bloody_cobblestone>);

recipes.addShaped(<contenttweaker:supermassiv>, [
    [<extrautils2:compressedcobblestone:7>,<extrautils2:compressedcobblestone:7>,<extrautils2:compressedcobblestone:7>],
    [<extrautils2:compressedcobblestone:7>,<appliedenergistics2:material:47>,<extrautils2:compressedcobblestone:7>],
    [<extrautils2:compressedcobblestone:7>,<extrautils2:compressedcobblestone:7>,<extrautils2:compressedcobblestone:7>]
]);

recipes.addShaped(<contenttweaker:glass_bell>, [
    [null,<minecraft:glass>,null],
    [<minecraft:glass>,<ore:rodStone>,<minecraft:glass>],
    [<minecraft:glass>,<minecraft:stone_button>,<minecraft:glass>]
]);

recipes.addShaped(<contenttweaker:red_core>, [
    [<extrautils2:ingredients:4>,<abyssalcraft:charcoal>,<extrautils2:ingredients:4>],
    [<abyssalcraft:charcoal>,<extrautils2:ingredients:2>,<abyssalcraft:charcoal>],
    [<extrautils2:ingredients:4>,<abyssalcraft:charcoal>,<extrautils2:ingredients:4>]
]);

Casting.removeTableRecipe(<contenttweaker:ender_ingot>);
AlloySmelter.addRecipe(<contenttweaker:ender_ingot>, [<threng:material>, <enderio:item_alloy_endergy_ingot:3>, <extrautils2:ingredients:17>], 50000);
AlloySmelter.addRecipe(<contenttweaker:enhanced_ender_ingot>, [<immersiveengineering:material:19>, <ic2:itemmisc:60>, <contenttweaker:ender_ingot>], 50000);

furnace.addRecipe(<contenttweaker:reinforced_obsidian_ingot>,<enderio:block_reinforced_obsidian>);

Mixer.addRecipe(<liquid:sulfuric_acid>*100, <liquid:distwater>*100, [<ore:dustSulfur>*4,<ore:dustIron>], 1024);
Refinery.addRecipe(<liquid:hydrogen_chlorid> * 200, <liquid:chlorine> * 100, <liquid:hydrogen> * 100, 512);
