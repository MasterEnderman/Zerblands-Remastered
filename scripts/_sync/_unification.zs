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
import mods.embers.Stamper;
import mods.thermalexpansion.InductionSmelter;

<ore:ingotReinforcedObsidian>.add(<contenttweaker:reinforced_obsidian_ingot>);
<ore:ingotStarSteel>.add(<contenttweaker:starsteel_ingot>);
<ore:ingotAlfSteel>.add(<contenttweaker:alfsteel_ingot>);
<ore:ingotEnrichedGold>.add(<contenttweaker:enrichedgold_ingot>);
<ore:blockEnrichedGold>.add(<contenttweaker:enriched_gold_block>);
<ore:materialFlesh>.add(<evilcraft:werewolf_flesh:1>);
<ore:ingotEnder>.add(<contenttweaker:ender_ingot>);
<ore:dustEndstone>.add(<contenttweaker:end_stone_dust>);
<ore:shoggothFlesh>.add([
    <abyssalcraft:shoggothflesh>,
    <abyssalcraft:shoggothflesh:1>,
    <abyssalcraft:shoggothflesh:2>,
    <abyssalcraft:shoggothflesh:3>,
    <abyssalcraft:shoggothflesh:4>,
]);

var thermalGlass as IItemStack[string] = {
    "copper" : <thermalfoundation:glass:0>,
    "tin" : <thermalfoundation:glass:1>,
    "silver" : <thermalfoundation:glass:2>,
    "lead" : <thermalfoundation:glass:3>,
    "aluminum" : <thermalfoundation:glass:4>,
    "nickel" : <thermalfoundation:glass:5>,
    "platinum" : <thermalfoundation:glass:6>,
    "iridium" : <thermalfoundation:glass:7>,
    "mithril" : <thermalfoundation:glass:8>,
    "steel" : <thermalfoundation:glass_alloy:0>,
    "electrum" : <thermalfoundation:glass_alloy:1>,
    "invar" : <thermalfoundation:glass_alloy:2>,
    "bronze" : <thermalfoundation:glass_alloy:3>,
    "constantan" : <thermalfoundation:glass_alloy:4>,
    "signalum" : <thermalfoundation:glass_alloy:5>,
    "lumium" : <thermalfoundation:glass_alloy:6>,
    "enderium" : <thermalfoundation:glass_alloy:7>,
};

for metal, item in thermalGlass {
    var ingot as IItemStack = findFirstItemFromMod("thermalfoundation","ingot",metal);
    var dust as IItemStack = findFirstItemFromMod("thermalfoundation","dust",metal);
    var glass as IItemStack = thermalGlass[metal];

    <ore:blockGlassHardened>.remove(item);

    if (metal == "lead") {
        InductionSmelter.removeRecipe(dust, <thermalfoundation:material:770>);
        // InductionSmelter.removeRecipe(<thermalfoundation:glass>, dust); -- I've no idea what removed this recipe...
    } else {
        if (metal != "mithril") {
            InductionSmelter.removeRecipe(thermalGlass["lead"], dust);
        }
    }

    InductionSmelter.addRecipe(glass, <extrautils2:decorativeglass>, ingot * 2, 2500);
    InductionSmelter.addRecipe(glass, <extrautils2:decorativeglass>, dust * 2, 2500);
}

var listGears as string[] = [
    "iron",
    "gold",
    "lead",
    "copper",
    "silver",
    "tin",
    "bronze"
];

// mods.embers.Stamper.add(IItemStack output, ILiquidStack liquid, IIngredient stamp, @Optional IIngredient input);
for material in listGears {

    var gear as IItemStack = findFirstItemFromMod("thermalfoundation", "gear", material);
    var fluid as ILiquidStack = getFluid(material);

    recipes.remove(gear);
    Stamper.add(gear, fluid * 576, <embers:stamp_gear>);
}

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
