#packmode nightmare

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

import mods.jei.JEI;

var removeAndHide as IItemStack[] = [
    <actuallyadditions:item_pickaxe_emerald>,
    <actuallyadditions:item_axe_emerald>,
    <actuallyadditions:item_shovel_emerald>,
    <actuallyadditions:item_sword_emerald>,
    <actuallyadditions:item_hoe_emerald>,
    <actuallyadditions:item_pickaxe_obsidian>,
    <actuallyadditions:item_axe_obsidian>,
    <actuallyadditions:item_shovel_obsidian>,
    <actuallyadditions:item_sword_obsidian>,
    <actuallyadditions:item_hoe_obsidian>,
    <actuallyadditions:item_pickaxe_quartz>,
    <actuallyadditions:item_axe_quartz>,
    <actuallyadditions:item_shovel_quartz>,
    <actuallyadditions:item_sword_quartz>,
    <actuallyadditions:item_hoe_quartz>,
    <actuallyadditions:wooden_paxel>,
    <actuallyadditions:stone_paxel>,
    <actuallyadditions:iron_paxel>,
    <actuallyadditions:gold_paxel>,
    <actuallyadditions:diamond_paxel>,
    <actuallyadditions:emerald_paxel>,
    <actuallyadditions:obsidian_paxel>,
    <actuallyadditions:quartz_paxel>,
    <actuallyadditions:item_pickaxe_crystal_red>,
    <actuallyadditions:item_axe_crystal_red>,
    <actuallyadditions:item_shovel_crystal_red>,
    <actuallyadditions:item_sword_crystal_red>,
    <actuallyadditions:item_hoe_crystal_red>,
    <actuallyadditions:item_helm_crystal_red>,
    <actuallyadditions:item_chest_crystal_red>,
    <actuallyadditions:item_pants_crystal_red>,
    <actuallyadditions:item_boots_crystal_red>,
    <actuallyadditions:item_paxel_crystal_red>,
    <actuallyadditions:item_pickaxe_crystal_blue>,
    <actuallyadditions:item_axe_crystal_blue>,
    <actuallyadditions:item_shovel_crystal_blue>,
    <actuallyadditions:item_sword_crystal_blue>,
    <actuallyadditions:item_hoe_crystal_blue>,
    <actuallyadditions:item_helm_crystal_blue>,
    <actuallyadditions:item_chest_crystal_blue>,
    <actuallyadditions:item_pants_crystal_blue>,
    <actuallyadditions:item_boots_crystal_blue>,
    <actuallyadditions:item_paxel_crystal_blue>,
    <actuallyadditions:item_pickaxe_crystal_light_blue>,
    <actuallyadditions:item_axe_crystal_light_blue>,
    <actuallyadditions:item_shovel_crystal_light_blue>,
    <actuallyadditions:item_sword_crystal_light_blue>,
    <actuallyadditions:item_hoe_crystal_light_blue>,
    <actuallyadditions:item_helm_crystal_light_blue>,
    <actuallyadditions:item_chest_crystal_light_blue>,
    <actuallyadditions:item_pants_crystal_light_blue>,
    <actuallyadditions:item_boots_crystal_light_blue>,
    <actuallyadditions:item_paxel_crystal_light_blue>,
    <actuallyadditions:item_pickaxe_crystal_black>,
    <actuallyadditions:item_axe_crystal_black>,
    <actuallyadditions:item_shovel_crystal_black>,
    <actuallyadditions:item_sword_crystal_black>,
    <actuallyadditions:item_hoe_crystal_black>,
    <actuallyadditions:item_helm_crystal_black>,
    <actuallyadditions:item_chest_crystal_black>,
    <actuallyadditions:item_pants_crystal_black>,
    <actuallyadditions:item_boots_crystal_black>,
    <actuallyadditions:item_paxel_crystal_black>,
    <actuallyadditions:item_pickaxe_crystal_green>,
    <actuallyadditions:item_axe_crystal_green>,
    <actuallyadditions:item_shovel_crystal_green>,
    <actuallyadditions:item_sword_crystal_green>,
    <actuallyadditions:item_hoe_crystal_green>,
    <actuallyadditions:item_helm_crystal_green>,
    <actuallyadditions:item_chest_crystal_green>,
    <actuallyadditions:item_pants_crystal_green>,
    <actuallyadditions:item_boots_crystal_green>,
    <actuallyadditions:item_paxel_crystal_green>,
    <actuallyadditions:item_pickaxe_crystal_white>,
    <actuallyadditions:item_axe_crystal_white>,
    <actuallyadditions:item_shovel_crystal_white>,
    <actuallyadditions:item_sword_crystal_white>,
    <actuallyadditions:item_hoe_crystal_white>,
    <actuallyadditions:item_helm_crystal_white>,
    <actuallyadditions:item_chest_crystal_white>,
    <actuallyadditions:item_pants_crystal_white>,
    <actuallyadditions:item_boots_crystal_white>,
    <actuallyadditions:item_paxel_crystal_white>,
    <actuallyadditions:item_growth_ring>,
    <actuallyadditions:item_suction_ring>,
    <actuallyadditions:item_water_removal_ring>,
    <actuallyadditions:item_potion_ring>,
    <actuallyadditions:item_potion_ring:1>,
    <actuallyadditions:item_potion_ring:2>,
    <actuallyadditions:item_potion_ring:3>,
    <actuallyadditions:item_potion_ring:4>,
    <actuallyadditions:item_potion_ring:5>,
    <actuallyadditions:item_potion_ring:6>,
    <actuallyadditions:item_potion_ring:7>,
    <actuallyadditions:item_potion_ring:8>,
    <actuallyadditions:item_potion_ring:9>,
    <actuallyadditions:item_potion_ring_advanced>,
    <actuallyadditions:item_potion_ring_advanced:1>,
    <actuallyadditions:item_potion_ring_advanced:2>,
    <actuallyadditions:item_potion_ring_advanced:3>,
    <actuallyadditions:item_potion_ring_advanced:4>,
    <actuallyadditions:item_potion_ring_advanced:5>,
    <actuallyadditions:item_potion_ring_advanced:6>,
    <actuallyadditions:item_potion_ring_advanced:7>,
    <actuallyadditions:item_potion_ring_advanced:8>,
    <actuallyadditions:item_potion_ring_advanced:9>,
];

for item in removeAndHide {
    JEI.removeAndHide(item);
}
