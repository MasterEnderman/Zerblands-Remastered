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

import scripts.functions.calc_basic;
import scripts.functions.calc_scientific;

import mods.actuallyadditions.Empowerer;
import mods.astralsorcery.Altar;
import mods.forestry.Carpenter;
import mods.forestry.Centrifuge as FCentrifuge;
import mods.immersiveengineering.BottlingMachine;
import mods.tconstruct.Casting;
import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.Transposer;

furnace.setFuel(<contenttweaker:controlled_fuel>,80000);
furnace.setFuel(<contenttweaker:purified_coal>,10000);
furnace.setFuel(<contenttweaker:firecoal>,25000);
furnace.setFuel(<contenttweaker:enriched_coal>,5000);
furnace.setFuel(<contenttweaker:coal_dust>,1000);

Casting.addBasinRecipe(<contenttweaker:module_energy>, <thermalfoundation:storage_resource:1>, <liquid:stone>, 2304, true, 200);
BottlingMachine.addRecipe(<contenttweaker:module_energy>, <thermalfoundation:storage_resource:1>, <liquid:stone> * 2304);
Transposer.addFillRecipe(<contenttweaker:module_energy>, <thermalfoundation:storage_resource:1>,  <liquid:stone> * 2304, 2000);

Casting.addBasinRecipe(<contenttweaker:calculator_screen>, <extrautils2:decorativeglass:5>, <liquid:stone>, 576, true, 200);
BottlingMachine.addRecipe(<contenttweaker:calculator_screen>, <extrautils2:decorativeglass:5>, <liquid:stone> * 576);
Transposer.addFillRecipe(<contenttweaker:calculator_screen>, <extrautils2:decorativeglass:5>,  <liquid:stone> * 576, 2000);

calc_basic(<contenttweaker:redstone_ingot>,<contenttweaker:reinforcediron_ingot>,<ore:dustRedstone>);
calc_basic(<contenttweaker:enriched_coal>,<ore:fuelCoke>,<ore:dustRedstone>);

calc_scientific(<contenttweaker:weakeneddiamond>*4,<ore:gemDiamond>,<contenttweaker:reinforcediron_ingot>);

Altar.addDiscoveryAltarRecipe("basic_calculator", <contenttweaker:calculator>, 200, 200, [
    <contenttweaker:black_iron>, <contenttweaker:calculator_screen>, <contenttweaker:black_iron>,
    <extrautils2:ingredients>, <contenttweaker:calculator_assembly>, <extrautils2:ingredients>,
    <contenttweaker:black_iron>, <contenttweaker:calculator_assembly>, <contenttweaker:black_iron>
]);

Centrifuge.addRecipe([<contenttweaker:large_amethyst> % 100, <contenttweaker:shard_amethyst> % 100], <extrautils2:ingredients:5>, null, 2000);
Centrifuge.addRecipe([<contenttweaker:small_amethyst> % 100, <contenttweaker:shard_amethyst> % 100], <extrautils2:ingredients:3>, null, 2000);
FCentrifuge.addRecipe([<contenttweaker:large_amethyst> % 100, <contenttweaker:shard_amethyst> % 100], <extrautils2:ingredients:5>, 200);
FCentrifuge.addRecipe([<contenttweaker:small_amethyst> % 100, <contenttweaker:shard_amethyst> % 100], <extrautils2:ingredients:3>, 200);

Centrifuge.addRecipe([<contenttweaker:large_tanzanite> % 100, <contenttweaker:shard_tanzanite> % 100], <forestry:resource_storage>, null, 2000);
Centrifuge.addRecipe([<contenttweaker:small_tanzanite> % 100, <contenttweaker:shard_tanzanite> % 100], <forestry:apatite>, null, 2000);
FCentrifuge.addRecipe([<contenttweaker:large_tanzanite> % 100, <contenttweaker:shard_tanzanite> % 100], <forestry:resource_storage>, 200);
FCentrifuge.addRecipe([<contenttweaker:small_tanzanite> % 100, <contenttweaker:shard_tanzanite> % 100], <forestry:apatite>, 200);

Empowerer.addRecipe(<contenttweaker:atomicbinder>, <contenttweaker:enrichedgold>, findFirstItemFromMod("thermalfoundation","ingot","steel"), <appliedenergistics2:material:1>, findFirstItemFromMod("thermalfoundation","ingot","steel"), <appliedenergistics2:material:1>, 8192, 100, [0.1, 0.1, 0.1]);

Carpenter.addRecipe(<contenttweaker:energy_module>, [
    [<ore:plateBatteryAlloy>,<actuallyadditions:item_battery>,<ore:plateBatteryAlloy>],
    [<ore:plateBatteryAlloy>,<rs_ctr:power_hub>,<ore:plateBatteryAlloy>],
    [<ore:plateBatteryAlloy>,<actuallyadditions:item_battery>,<ore:plateBatteryAlloy>]
], 40, <liquid:sulfuric_acid> * 250, <contenttweaker:module_energy>);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <contenttweaker:calculator_assembly> : [
        [
            [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>],
            [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>],
            [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>]
        ]
    ],
    <contenttweaker:advanced_assembly> : [
        [
            [<contenttweaker:enrichedgold_ingot>,<contenttweaker:calculator_assembly>,<contenttweaker:enrichedgold_ingot>],
            [<contenttweaker:calculator_assembly>,<contenttweaker:reinforcediron_ingot>,<contenttweaker:calculator_assembly>],
            [<contenttweaker:enrichedgold_ingot>,<contenttweaker:calculator_assembly>,<contenttweaker:enrichedgold_ingot>]
        ]
    ],
    <contenttweaker:scientificcalculator> : [
        [
            [<contenttweaker:enrichedgold_ingot>,<contenttweaker:calculator_screen>,<contenttweaker:enrichedgold_ingot>],
            [<contenttweaker:large_amethyst>,<contenttweaker:advanced_assembly>,<contenttweaker:large_amethyst>],
            [<contenttweaker:enrichedgold_ingot>,<contenttweaker:advanced_assembly>,<contenttweaker:enrichedgold_ingot>]
        ]
    ]
};

for key, value in recipeMapShaped {
	var index as int = 0;    
    recipes.remove(key);

    for recipe in value {
        var name as string = "ct_"+toString(key)+"_"+index;
        recipes.addShaped(name, key, recipe);
        index += 1;
    }
}

var comp as IItemStack[IItemStack] = {
    <contenttweaker:tanzanite_block> : <contenttweaker:large_tanzanite>,
    <contenttweaker:large_tanzanite> : <contenttweaker:small_tanzanite>,
    <contenttweaker:small_tanzanite> : <contenttweaker:shard_tanzanite>,
    <contenttweaker:amethyst_block> : <contenttweaker:large_amethyst>,
    <contenttweaker:large_amethyst> : <contenttweaker:small_amethyst>,
    <contenttweaker:small_amethyst> : <contenttweaker:shard_amethyst>,
    <contenttweaker:enriched_gold_block> : <contenttweaker:enrichedgold_ingot>,
    <contenttweaker:reinforced_iron_block> : <contenttweaker:reinforcediron_ingot>,
};

for x,y in comp {
    recipes.addShapeless(x,[y,y,y,y,y,y,y,y,y]);
    recipes.addShapeless(y * 9, [x]);
}
