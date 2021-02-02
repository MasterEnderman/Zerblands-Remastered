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

import mods.abyssalcraft.InfusionRitual;

for item in loadedMods["projecte"].items {
    recipes.remove(item);
}

InfusionRitual.addRitual("darkmatter", 4, 6, 100000, true, <projecte:item.pe_matter>, <appliedenergistics2:material:47>, [
    <forge:bucketfilled>.withTag({FluidName: "liquidantimatter", Amount: 1000}),
    <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}),
    <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}),
    <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}),
    <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}),
    <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}),
    <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}),
    <abyssalcraft:gatekeeperessence>
], true);

game.setLocalization("ac.ritual.darkmatter", "Dark Matter");
game.setLocalization("ac.ritual.darkmatter.desc", "How did you get here? I'll wait for you. See me on the other side. ~ Ender");
