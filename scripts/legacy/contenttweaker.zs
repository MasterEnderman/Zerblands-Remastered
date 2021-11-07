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

recipes.addShaped(<contenttweaker:creative_block>, [
    [<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>],
    [<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>],
    [<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>]
]);

recipes.addShaped(<contenttweaker:creative> * 9, [
    [<contenttweaker:creative_block>]
]);

recipes.addShaped(<contenttweaker:red_core>, [
    [<extrautils2:ingredients:4>,<abyssalcraft:charcoal>,<extrautils2:ingredients:4>],
    [<abyssalcraft:charcoal>,<extrautils2:ingredients:2>,<abyssalcraft:charcoal>],
    [<extrautils2:ingredients:4>,<abyssalcraft:charcoal>,<extrautils2:ingredients:4>]
]);

AlloySmelter.addRecipe(<contenttweaker:ender_ingot>, [<threng:material>, <enderio:item_alloy_endergy_ingot:3>, <extrautils2:ingredients:17>], 50000);
AlloySmelter.addRecipe(<contenttweaker:enhanced_ender_ingot>, [<immersiveengineering:material:19>, <ic2:itemmisc:60>, <contenttweaker:ender_ingot>], 50000);

var mapSlate as IItemStack[IItemStack] = {
    <contenttweaker:slate_blank> : <bloodmagic:slate>,
    <contenttweaker:slate_reinforced> : <bloodmagic:slate:1>,
    <contenttweaker:slate_imbued> : <bloodmagic:slate:2>,
    <contenttweaker:slate_demonic> : <bloodmagic:slate:3>,
    <contenttweaker:slate_ethereal> : <bloodmagic:slate:4>,
};

for block, slate in mapSlate {
    recipes.remove(slate);
    recipes.addShaped(slate * 9, [
        [block]
    ]);
    recipes.addShaped(block, [
        [slate,slate,slate],
        [slate,slate,slate],
        [slate,slate,slate]
    ]);
}

furnace.addRecipe(<contenttweaker:reinforced_obsidian_ingot>,<enderio:block_reinforced_obsidian>);
