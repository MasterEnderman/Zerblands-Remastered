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

ExtremeCrafting.addShaped("creativeingot",<contenttweaker:creative>,[
    [<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>],
    [<ore:ingotInfinity>,<ore:ingotCosmicNeutronium>,<contenttweaker:creativecore>,<contenttweaker:creativecore>,<ore:ingotCosmicNeutronium>,<contenttweaker:creativecore>,<contenttweaker:creativecore>,<ore:ingotCosmicNeutronium>,<ore:ingotInfinity>],
    [<ore:ingotInfinity>,<contenttweaker:creativecore>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<contenttweaker:creativecore>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<contenttweaker:creativecore>,<ore:ingotInfinity>],
    [<ore:ingotInfinity>,<ore:ingotCosmicNeutronium>,<contenttweaker:creativecore>,<contenttweaker:creativecore>,<ore:ingotCosmicNeutronium>,<contenttweaker:creativecore>,<contenttweaker:creativecore>,<ore:ingotCosmicNeutronium>,<ore:ingotInfinity>],
    [<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>],
]);

ExtremeCrafting.addShaped("creativecore",<contenttweaker:creativecore> * 11, [
    [null,null,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,null,null],
    [null,<bloodmagic:decorative_brick:2>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<bloodmagic:decorative_brick:2>,null],
    [<bloodmagic:decorative_brick:2>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<bloodmagic:decorative_brick:2>],
    [<bloodmagic:decorative_brick:2>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<bloodmagic:decorative_brick:2>],
    [<bloodmagic:decorative_brick:2>,<draconicevolution:chaotic_core>,<draconicevolution:chaotic_core>,<draconicevolution:chaotic_core>,<avaritia:resource:5>,<draconicevolution:chaotic_core>,<draconicevolution:chaotic_core>,<draconicevolution:chaotic_core>,<bloodmagic:decorative_brick:2>],
    [<bloodmagic:decorative_brick:2>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<bloodmagic:decorative_brick:2>],
    [<bloodmagic:decorative_brick:2>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<bloodmagic:decorative_brick:2>],
    [null,<bloodmagic:decorative_brick:2>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<bloodmagic:decorative_brick:2>,null],
    [null,null,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,null,null]
]);

<contenttweaker:orb_armok>.addTooltip(format.green("A homage to the original"));
<contenttweaker:orb_armok>.addTooltip(format.green("Avaritia Mod back in 1.7.10"));
BloodAltar.addRecipe(<contenttweaker:orb_armok>,<contenttweaker:orb_armok_clean>,5,2147483647,1000,1000);
ExtremeCrafting.addShaped("orb_armok",<contenttweaker:orb_armok_clean>, [
    [null,null,null,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,null,null,null],
    [null,null,<ore:ingotInfinity>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}).noReturn(),<ore:ingotInfinity>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}).noReturn(),<ore:ingotInfinity>,null,null],
    [null,null,<ore:ingotInfinity>,<ore:ingotInfinity>,<avaritia:resource:5>,<ore:ingotInfinity>,<ore:ingotInfinity>,null,null],
    [null,<ore:ingotCosmicNeutronium>,<ore:ingotInfinity>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}).noReturn(),<ore:ingotInfinity>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}).noReturn(),<ore:ingotInfinity>,<ore:ingotCosmicNeutronium>,null],
    [<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>],
    [null,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,null],
    [null,null,null,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,null,null,null],
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,null,null,null,null,null,null]
]);

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

var mapBedrock as IIngredient[IItemStack] = {
    <contenttweaker:bedrockium_nugget> : <extrautils2:compressedcobblestone:7>,
    <contenttweaker:bedrockium_ingot> : <contenttweaker:bedrockium_nugget>,
    <contenttweaker:bedrockium_block> : <contenttweaker:bedrockium_ingot>,
    <minecraft:bedrock> : <contenttweaker:bedrockium_block>
};

var index as int = 0;

for output, input in mapBedrock {
    ExtremeCrafting.addShaped("bedrock_"~index,output, [
        [input,input,input,input,input,input,input,input,input],
        [input,input,input,input,input,input,input,input,input],
        [input,input,input,input,input,input,input,input,input],
        [input,input,input,input,input,input,input,input,input],
        [input,input,input,input,input,input,input,input,input],
        [input,input,input,input,input,input,input,input,input],
        [input,input,input,input,input,input,input,input,input],
        [input,input,input,input,input,input,input,input,input],
        [input,input,input,input,input,input,input,input,input]
    ]);
    index += 1;
}
