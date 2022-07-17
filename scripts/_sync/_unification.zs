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

import mods.avaritia.ExtremeCrafting;
import mods.embers.Melter;
import mods.embers.Stamper;
import mods.enderio.SagMill;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Transposer;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

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
<ore:acEssence>.add([
    <abyssalcraft:essence>,
    <abyssalcraft:essence:1>,
    <abyssalcraft:essence:2>,
]);
<ore:kleinStarEin>.add(<projecte:item.pe_klein_star>);
<ore:kleinStarZwei>.add(<projecte:item.pe_klein_star:1>);
<ore:kleinStarDrei>.add(<projecte:item.pe_klein_star:2>);
<ore:kleinStarVier>.add(<projecte:item.pe_klein_star:3>);
<ore:kleinStarSphere>.add(<projecte:item.pe_klein_star:4>);
<ore:kleinStarOmega>.add(<projecte:item.pe_klein_star:5>);
<ore:matterDark>.add(<projecte:item.pe_matter>);
<ore:matterRed>.add(<projecte:item.pe_matter:1>);

Pulverizer.addRecipe(<evilcraft:dark_gem_crushed>, <evilcraft:dark_gem>, 4000);
SagMill.addRecipe([<evilcraft:dark_gem_crushed>], [100], <evilcraft:dark_gem>, "NONE", 5000);
SagMill.addRecipe([<evilcraft:dark_gem> * 2,<evilcraft:dark_gem_crushed>], [100,30], <evilcraft:dark_ore>, "NONE", 5000);
SagMill.addRecipe([<quantumflux:graphitedust> * 2], [100],  <quantumflux:graphiteore>, "NONE", 5000);

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

var listAdditionalMelting as string[string] = {
    "aluminum" : "tin",
    "tin" : "aluminum",
    "nickel" : "iron"
};

for metal, extra in listAdditionalMelting {
    var plate as IIngredient = getOreDict("plate", metal);
    var ingot as IIngredient = getOreDict("ingot", metal);
    var nugget as IIngredient = getOreDict("nugget", metal);
    var ore as IIngredient = getOreDict("ore", metal);
    var fluid as ILiquidStack = getFluid(metal);
    var ex_fluid as ILiquidStack = getFluid(extra);

    Melter.add(fluid * 144, plate);
    Melter.add(fluid * 144, ingot);
    Melter.add(fluid * 16, nugget);
    Melter.add(fluid * 288, ore, ex_fluid * 16);
}

var mapBedrock as IIngredient[IItemStack] = {
    <contenttweaker:bedrockium_nugget> : <extrautils2:compressedcobblestone:7>,
    <contenttweaker:bedrockium_ingot> : <contenttweaker:bedrockium_nugget>,
    <contenttweaker:bedrockium_block> : <contenttweaker:bedrockium_ingot>,
    <minecraft:bedrock> : <contenttweaker:bedrockium_block>,
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

var comp as IItemStack[IItemStack] = {
    <contenttweaker:tanzanite_block> : <contenttweaker:large_tanzanite>,
    <contenttweaker:large_tanzanite> : <contenttweaker:small_tanzanite>,
    <contenttweaker:small_tanzanite> : <contenttweaker:shard_tanzanite>,
    <contenttweaker:amethyst_block> : <contenttweaker:large_amethyst>,
    <contenttweaker:large_amethyst> : <contenttweaker:small_amethyst>,
    <contenttweaker:small_amethyst> : <contenttweaker:shard_amethyst>,
    <contenttweaker:enriched_gold_block> : <contenttweaker:enrichedgold_ingot>,
    <contenttweaker:redstone_ingot_block> : <contenttweaker:redstone_ingot>,
    <contenttweaker:reinforced_iron_block> : <contenttweaker:reinforcediron_ingot>,
    <contenttweaker:flawless_block> : <contenttweaker:flawlessdiamond>,
    <contenttweaker:electric_diamond_block> : <contenttweaker:electricdiamondanimate>,
    <contenttweaker:flawless_fire_block> : <contenttweaker:firediamond>,
    <contenttweaker:weakened_diamond_block> : <contenttweaker:weakeneddiamond>,
    <contenttweaker:end_diamond_block> : <contenttweaker:enddiamond>,
    //
    <contenttweaker:starsteel_ingot> : <contenttweaker:starsteel_nugget>,
    <contenttweaker:starsteel_block> : <contenttweaker:starsteel_ingot>,
    <contenttweaker:alfsteel_ingot> : <contenttweaker:alfsteel_nugget>,
    <contenttweaker:alfsteel_block> : <contenttweaker:alfsteel_ingot>,
    //
    <contenttweaker:slate_blank> : <bloodmagic:slate>,
    <contenttweaker:slate_reinforced> : <bloodmagic:slate:1>,
    <contenttweaker:slate_imbued> : <bloodmagic:slate:2>,
    <contenttweaker:slate_demonic> : <bloodmagic:slate:3>,
    <contenttweaker:slate_ethereal> : <bloodmagic:slate:4>,
    //
    <contenttweaker:creative_block> : <contenttweaker:creative>,
    //
    <contenttweaker:plutonium> : <contenttweaker:small_plutonium>,
};

recipes.remove(<bloodmagic:slate>);
recipes.remove(<bloodmagic:slate:1>);
recipes.remove(<bloodmagic:slate:2>);
recipes.remove(<bloodmagic:slate:3>);
recipes.remove(<bloodmagic:slate:4>);

for x,y in comp {
    recipes.addShapeless(x,[y,y,y,y,y,y,y,y,y]);
    recipes.addShapeless(y * 9, [x]);
}

furnace.setFuel(<contenttweaker:controlled_fuel>,80000);
furnace.setFuel(<contenttweaker:purified_coal>,10000);
furnace.setFuel(<contenttweaker:firecoal>,25000);
furnace.setFuel(<contenttweaker:enriched_coal>,5000);
furnace.setFuel(<contenttweaker:coal_dust>,1000);

furnace.setFuel(<contenttweaker:red_coal>, 16000);

var materialSystem as string[string] = {
    "antimony" : "antimony",
    "batteryAlloy" : "battery_alloy",
    "redAlloy" : "red_alloy",
    "solderingAlloy" : "soldering_alloy",
    "tungsten" : "tungsten",
    "ferromagneticAlloy" : "ferromagnetic_alloy"
};

for material, fluid in materialSystem {
    var nugget as IIngredient = getOreDict("nugget",material);
    var ingot as IIngredient = getOreDict("ingot",material);
    var block as IIngredient = getOreDict("block",material);

    recipes.addShapeless(itemMS("ingot",material),[nugget,nugget,nugget,nugget,nugget,nugget,nugget,nugget,nugget]);
    recipes.addShapeless(itemMS("nugget",material) * 9, [ingot]);
    recipes.addShapeless(itemMS("block",material),[ingot,ingot,ingot,ingot,ingot,ingot,ingot,ingot,ingot]);
    recipes.addShapeless(itemMS("ingot",material) * 9, [block]);

    Casting.addTableRecipe(itemMS("nugget",material), <tconstruct:cast_custom:1>, getFluid(fluid), 16, false);
    Casting.addTableRecipe(itemMS("ingot",material), <tconstruct:cast_custom>, getFluid(fluid), 144, false);
    Casting.addBasinRecipe(itemMS("block",material), null, getFluid(fluid), 1296, false);

    Melting.addRecipe(getFluid(fluid)*16, nugget, 395);
    Melting.addRecipe(getFluid(fluid)*144, ingot, 490);
    Melting.addRecipe(getFluid(fluid)*1296, block, 681);
}

// Mekanism-like Ore Processing for basic Ores

var processingMetals as string[] = [
    "aluminum",
    "ardite",
    "cobalt",
    "copper",
    "gold",
    "iridium",
    "iron",
    "lead",
    "mithril",
    "nickel",
    "platinum",
    "silver",
    "tin",
    "uranium",
];

for metal in processingMetals {
    var ore as IItemStack = firstItemFromOreDict("ore",metal);
    var dust as IItemStack = firstItemFromOreDict("dust",metal);
    var clump as IItemStack = itemMS("clump",metal);
    var crystal as IItemStack = itemMS("crystal",metal);
    var shard as IItemStack = itemMS("shard",metal);
    var dirtyDust as IItemStack = itemMS("dirtyDust",metal);

    Transposer.addFillRecipe(crystal * 5, ore, <liquid:sulfuric_acid> * 200, 5000);

    Transposer.addFillRecipe(shard * 4, ore, <liquid:hydrogen_chlorid> * 200, 4000);
    Transposer.addFillRecipe(shard, crystal, <liquid:hydrogen_chlorid> * 200, 1000);

    Transposer.addFillRecipe(clump * 3, ore, <liquid:oxygen> * 200, 3000);
    Transposer.addFillRecipe(clump, shard, <liquid:oxygen> * 200, 1000);

    Transposer.addFillRecipe(dirtyDust * 2, ore, <liquid:sodium_persulfate> * 200, 2000);
    Transposer.addFillRecipe(dirtyDust, clump, <liquid:sodium_persulfate> * 200, 1000);
    
    Transposer.addFillRecipe(dust, dirtyDust, <liquid:distwater> * 200, 1000);
}

Transposer.addFillRecipe(<enderio:item_material:30>, itemMS("dirtyDust","ardite"), <liquid:distwater> * 200, 1000);
Transposer.addFillRecipe(<enderio:item_material:31>, itemMS("dirtyDust","cobalt"), <liquid:distwater> * 200, 1000);
