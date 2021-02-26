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

import mods.astralsorcery.Altar;
import mods.jei.JEI;

recipes.remove(<projecte:item.pe_philosophers_stone>);
Altar.addTraitAltarRecipe("philo_stone",<projecte:item.pe_philosophers_stone>, 4500, 12000, [
    <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}).noReturn(),<draconicevolution:chaotic_core>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}).noReturn(),
    <bloodmagic:teleposition_focus:3>,<randomthings:rezstone>,<bloodmagic:teleposition_focus:3>,
    <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}).noReturn(),<xreliquary:alkahestry_tome:*>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}).noReturn(),
    <exponentialpower:endercell>,<exponentialpower:endercell>,<exponentialpower:endercell>,
    <exponentialpower:endercell>,<abyssalcraft:gatekeeperessence>,<abyssalcraft:gatekeeperessence>,
    <abyssalcraft:gatekeeperessence>,<abyssalcraft:gatekeeperessence>,<abyssalcraft:gatekeeperessence>,
    <abyssalcraft:gatekeeperessence>,<abyssalcraft:gatekeeperessence>,<abyssalcraft:gatekeeperessence>,
    <bloodarsenal:blood_diamond:3>,<botanicadds:gaiasteel_block>,<botanicadds:gaiasteel_block>,<bloodarsenal:blood_diamond:3>,
    // Outer Items
    <botania:rune>,<botania:rune:1>,<botania:rune:2>,<botania:rune:3>,<botania:rune:4>,<botania:rune:5>,<botania:rune:6>,
    <botania:rune:7>,<botania:rune:8>,<botania:rune:9>,<botania:rune:10>,<botania:rune:11>,<botania:rune:12>,<botania:rune:13>,
    <botania:rune:14>,<botania:rune:15>,<botanicadds:rune_tp>,<botanicadds:rune_energy>,
], "astralsorcery.constellation.mineralis");

recipes.addShapeless(<projecte:item.pe_manual>, [<minecraft:book>,<projecte:item.pe_covalence_dust>]);

recipes.remove(<projecte:item.pe_covalence_dust>);
recipes.addShapeless(<projecte:item.pe_covalence_dust>, [<extrautils2:ingredients:3>,<evilcraft:garmonbozia>,<astralsorcery:itemcraftingcomponent:2>,<ore:dustFluix>]);

recipes.remove(<projecte:item.pe_covalence_dust:1>);
recipes.addShapeless(<projecte:item.pe_covalence_dust:1>, [<ore:dustLudicrite>,<ore:substanceEbony>,<ore:substanceIvory>,<ore:elvenPixieDust>,<ore:dustPsi>]);

recipes.remove(<projecte:item.pe_covalence_dust:2>);
recipes.addShapeless(<projecte:item.pe_covalence_dust:2>, [<ore:dustDraconium>,<ore:dustDreadium>,<botania:manaresource:5>]);

recipes.remove(<projecte:transmutation_table>);
recipes.addShaped(<projecte:transmutation_table>, [
    [<projecte:matter_block:1>,<extrautils2:compressedcobblestone:7>,<projecte:matter_block:1>],
    [<extrautils2:compressedcobblestone:7>,<projecte:item.pe_philosophers_stone>,<extrautils2:compressedcobblestone:7>],
    [<projecte:matter_block:1>,<extrautils2:compressedcobblestone:7>,<projecte:matter_block:1>]
]);

recipes.remove(<projecte:alchemical_chest>);
recipes.addShaped(<projecte:alchemical_chest>, [
    [<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:2>],
    [<extrautils2:compressedcobblestone:7>,<draconicevolution:wyvern_core>,<extrautils2:compressedcobblestone:7>],
    [<ore:gaiaIngot>,<enderutilities:storage_0:6>,<ore:gaiaIngot>]]);

recipes.remove(<projecte:item.pe_matter:1>);
recipes.addShapeless(<projecte:item.pe_matter:1> * 4, [<projecte:matter_block:1>]);
recipes.addShaped(<projecte:item.pe_matter:1>, [
    [<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>],
    [<projecte:matter_block>,<contenttweaker:supermassiv>,<projecte:matter_block>],
    [<projecte:matter_block>,<projecte:matter_block>,<projecte:matter_block>]
]);

recipes.remove(<projecte:item.pe_matter>);
recipes.addShaped(<projecte:item.pe_matter>, [
    [<projecte:fuel_block:2>,<projecte:fuel_block:2>,<projecte:fuel_block:2>],
    [<projecte:fuel_block:2>,<appliedenergistics2:material:47>,<projecte:fuel_block:2>],
    [<projecte:fuel_block:2>,<projecte:fuel_block:2>,<projecte:fuel_block:2>]
]);

recipes.remove(<projecte:item.pe_transmutation_tablet>);
recipes.addShaped(<projecte:item.pe_transmutation_tablet>, [
    [<projecte:matter_block:1>,<draconicevolution:chaos_shard>,<projecte:matter_block:1>],
    [<draconicevolution:chaos_shard>,<projecte:transmutation_table>,<draconicevolution:chaos_shard>],
    [<projecte:matter_block:1>,<draconicevolution:chaos_shard>,<projecte:matter_block:1>]
]);

recipes.remove(<projecte:condenser_mk1>);
recipes.addShaped(<projecte:condenser_mk1>, [
    [<draconicevolution:infused_obsidian>,<draconicevolution:awakened_core>,<draconicevolution:infused_obsidian>],
    [<contenttweaker:end_diamond_block>,<projecte:alchemical_chest>,<contenttweaker:end_diamond_block>],
    [<draconicevolution:infused_obsidian>,<contenttweaker:end_diamond_block>,<draconicevolution:infused_obsidian>]
]);

recipes.remove(<projecte:collector_mk1>);
recipes.addShaped(<projecte:collector_mk1>, [
    [<ore:glowstone>,<ore:blockGlass>,<ore:glowstone>],
    [<ore:glowstone>,<projecte:fuel_block:2>,<ore:glowstone>],
    [<ore:glowstone>,<minecraft:furnace>,<ore:glowstone>]
]);

recipes.remove(<projecte:relay_mk1>);
recipes.addShaped(<projecte:relay_mk1>, [
    [<ore:obsidian>,<ore:blockGlass>,<ore:obsidian>],
    [<ore:obsidian>,<projecte:fuel_block:2>,<ore:obsidian>],
    [<ore:obsidian>,<ore:obsidian>,<ore:obsidian>]
]);

recipes.remove(<projecte:item.pe_tome>);
recipes.addShaped(<projecte:item.pe_tome>, [
    [<projecte:item.pe_covalence_dust:2>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust>],
    [<projecte:item.pe_klein_star:5>,<minecraft:bedrock>,<projecte:item.pe_klein_star:5>],
    [<projecte:item.pe_covalence_dust>,<projecte:item.pe_covalence_dust:1>,<projecte:item.pe_covalence_dust:2>]
]);
