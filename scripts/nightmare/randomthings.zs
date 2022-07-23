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

import mods.actuallyadditions.Empowerer;
import mods.astralsorcery.Altar;
import mods.bloodmagic.BloodAltar;
import mods.botania.Apothecary;
import mods.botania.RuneAltar;
import mods.enderio.AlloySmelter;
import mods.ic2.Compressor;
import mods.inworldcrafting.FluidToItem;
import mods.jei.JEI;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;
import scripts.functions.calc_scientific;
import scripts.functions.calc_atomic;
import scripts.functions.calc_flawless;

<randomthings:naturecore>.addTooltip(format.green("Unable to contain it's magical energy."));
<randomthings:naturecore>.addTooltip(format.green("Might create a mess. Use with caution."));

JEI.removeAndHide(<randomthings:blockbreaker>);

BloodAltar.addRecipe(<randomthings:rezstone>,<bloodarsenal:blood_diamond:3>,5,1000000000,2000,2000);

Compressor.addRecipe(<randomthings:bottleofair>,<minecraft:glass_bottle>);

recipes.remove(<randomthings:itemcollector>);
Compressor.addRecipe(<randomthings:itemcollector>, <actuallyadditions:block_ranged_collector>);

recipes.remove(<randomthings:ingredient:11>);
RuneAltar.addRecipe(<randomthings:ingredient:11>, [
    <minecraft:egg>,
    <abyssalcraft:transmutationgem>,
    <embers:seed_gold>,
    <embers:seed_gold>,
    <embers:seed_gold>,
    <embers:seed_gold>,
    <embers:seed_gold>,
    <embers:seed_gold>,
    <embers:seed_gold>,
    <embers:seed_gold>
], 15000);

Apothecary.addRecipe(<randomthings:pitcherplant>, [
    <botania:petal:7>,
    <botania:petal:7>,
    <botania:petal:7>,
    <botania:petal:14>,
    <botania:petal:14>,
    <botania:petal:14>,
    <botania:petal:12>,
    <botania:petal:12>,
    <botania:petal:12>,
    <botania:rune>,
    <actuallyadditions:block_black_lotus>
]);

var mapCalcBasic as IIngredient[][IItemStack] = {
    <randomthings:eclipsedclock> : [<minecraft:clock>, <randomthings:ingredient:1>],
    <randomthings:reinforcedenderbucket> : [<randomthings:enderbucket>, <contenttweaker:reinforced_obsidian_ingot>],
    <randomthings:goldencompass> : [<minecraft:compass>, <ore:ingotGold>],
    <randomthings:emeraldcompass> : [<randomthings:goldencompass>, <ore:gemEmerald>],
    <randomthings:advancedredstonetorch_on> : [<minecraft:redstone_torch>, <immersiveengineering:material:27>],
    <randomthings:quartzglass> : [<ore:blockGlass>, <ore:blockQuartz>],
    <randomthings:quartzlamp> : [<minecraft:redstone_lamp>, <ore:blockQuartz>],
    <randomthings:lapisglass> : [<ore:blockGlass>, <ore:blockLapis>],
    <randomthings:lapislamp> : [<minecraft:redstone_lamp>, <ore:blockLapis>],
    <randomthings:advanceditemcollector> : [<randomthings:itemcollector>, <enderio:item_basic_item_filter>],
    <randomthings:specialchest> : [<minecraft:chest>,<minecraft:vine>],
    <randomthings:specialchest:1> : [<minecraft:chest>,<minecraft:prismarine>],
};

for output, inputs in mapCalcBasic {
    var first as IIngredient = inputs[0];
    var second as IIngredient = inputs[1];

    recipes.remove(output);
    calc_basic(output, first, second);
}

recipes.remove(<randomthings:triggerglass>);
calc_atomic(<randomthings:triggerglass>, <randomthings:quartzglass>, <ore:blockRedstone>, <randomthings:lapisglass>);

recipes.remove(<randomthings:enderbucket>);
calc_scientific(<randomthings:enderbucket>, <minecraft:bucket>, <randomthings:stableenderpearl>);

recipes.remove(<randomthings:redstoneobserver>);
calc_atomic(<randomthings:redstoneobserver>, <botania:endereyeblock>, <minecraft:observer>, <ore:blockQuartz>);

recipes.remove(<randomthings:escaperope>);
calc_atomic(<randomthings:escaperope>, <rftools:infused_enderpearl>, <evilcraft:golden_string>, <evilcraft:golden_string>);

recipes.remove(<randomthings:ingredient:1>);
calc_flawless(<randomthings:ingredient:1>, <minecraft:skull:1>, <minecraft:ender_pearl>, <contenttweaker:enddiamond>, <evilcraft:corrupted_tear>);

recipes.remove(<randomthings:stableenderpearl>);
FluidToItem.transform(<randomthings:stableenderpearl>, <liquid:astralsorcery.liquidstarlight>, [<minecraft:ender_pearl>,<ore:dustLapis>,<ic2:itemmisc:9>,<ore:gemDarkCrushed>], false);

recipes.remove(<randomthings:fertilizeddirt>);
recipes.addShaped(<randomthings:fertilizeddirt> * 4, [
    [<tconstruct:soil:4>,<evilcraft:blood_potash>,<tconstruct:soil:4>],
    [<evilcraft:blood_potash>,<sonarcore:reinforceddirtblock>,<evilcraft:blood_potash>],
    [<tconstruct:soil:4>,<evilcraft:blood_potash>,<tconstruct:soil:4>]
]);

recipes.remove(<randomthings:ingredient:8>);
recipes.addShaped(<randomthings:ingredient:8> * 8, [
    [<ore:plateIron>,<minecraft:iron_bars>,<ore:plateIron>],
    [<minecraft:iron_bars>,<minecraft:iron_bars>,<minecraft:iron_bars>],
    [<ore:plateIron>,<minecraft:iron_bars>,<ore:plateIron>]
]);

recipes.remove(<randomthings:advancedredstonerepeater>);
recipes.addShaped(<randomthings:advancedredstonerepeater>, [
    [<minecraft:redstone_torch>,<ore:dustRedstone>,<minecraft:redstone_torch>],
    [<contenttweaker:stone_board>,<ore:plateSteel>,<contenttweaker:stone_board>]
]);

recipes.remove(<randomthings:ingredient:13>);
recipes.addShapeless(<randomthings:ingredient:13> * 2, [<astralsorcery:itemusabledust:1>,<enderzoo:confusingdust>,<enderzoo:witheringdust>,<ic2:itemmisc:150>]);

recipes.remove(<randomthings:ingredient:5>);
recipes.addShapeless(<randomthings:ingredient:5> * 2, [<astralsorcery:itemusabledust:0>,<enderzoo:confusingdust>,<enderzoo:witheringdust>,<ic2:itemmisc:150>]);

recipes.remove(<randomthings:ingredient:3>);
AlloySmelter.addRecipe(<randomthings:ingredient:3>, [<ore:ingotSoularium>,<actuallyadditions:item_crystal_empowered:1>*2,<randomthings:ingredient:12>*4], 100000);

Empowerer.addRecipe(<randomthings:naturecore>, <botania:livingwood:5>, <botania:rune:2>, <astralsorcery:itemcraftingcomponent:4>, <botania:rune:2>, <astralsorcery:itemcraftingcomponent:4>, 8192, 100, [0.1, 0.1, 0.1]);

recipes.remove(<randomthings:imbuingstation>);
Altar.addAttunementAltarRecipe("imbuingstation", <randomthings:imbuingstation>, 500, 800, [
    <botania:manaresource:2>,
    <minecraft:brewing_stand>,
    <botania:manaresource:2>,
    <actuallyadditions:item_crystal:5>,
    <embers:mech_core>,
    <actuallyadditions:item_crystal:5>,
    <botania:livingrock>,
    <botania:rune:8>,
    <botania:livingrock>,
    <astralsorcery:itemcraftingcomponent:3>,
    <astralsorcery:itemcraftingcomponent:3>,
    <minecraft:quartz_block:2>,
    <minecraft:quartz_block:2>,
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <randomthings:spectrecharger> : [
        [
            [<randomthings:ingredient:12>,<randomthings:spectrecoil_normal>,<randomthings:ingredient:12>],
            [<enderutilities:enderpart:15>,<embers:ember_belt>,<enderutilities:enderpart:15>]
        ]
    ],
    <randomthings:spectrecharger:1> : [
        [
            [<randomthings:ingredient:12>,<randomthings:spectrecoil_redstone>,<randomthings:ingredient:12>],
            [<enderutilities:enderpart:16>,<embers:ember_belt>,<enderutilities:enderpart:16>]
        ]
    ],
    <randomthings:spectrecharger:2> : [
        [
            [<randomthings:ingredient:12>,<randomthings:spectrecoil_ender>,<randomthings:ingredient:12>],
            [<enderutilities:enderpart:17>,<embers:ember_belt>,<enderutilities:enderpart:17>]
        ]
    ],
    <randomthings:spectrecoil_normal> : [
        [
            [null,<enderutilities:enderpart:15>,null],
            [<randomthings:ingredient:12>,<quantumflux:rfexciter>,<randomthings:ingredient:12>],
            [<contenttweaker:purifiedobsidian>,<randomthings:ingredient:3>,<contenttweaker:purifiedobsidian>]
        ]
    ],
    <randomthings:spectrecoil_redstone> : [
        [
            [null,<enderutilities:enderpart:16>,null],
            [<randomthings:ingredient:12>,<randomthings:spectrecoil_normal>,<randomthings:ingredient:12>],
            [<contenttweaker:purifiedobsidian>,<randomthings:ingredient:3>,<contenttweaker:purifiedobsidian>]
        ]
    ],
    <randomthings:spectrecoil_ender> : [
        [
            [null,<enderutilities:enderpart:17>,null],
            [<randomthings:ingredient:12>,<randomthings:spectrecoil_redstone>,<randomthings:ingredient:12>],
            [<contenttweaker:purifiedobsidian>,<randomthings:ingredient:3>,<contenttweaker:purifiedobsidian>]
        ]
    ],
    <randomthings:spectrelens> : [
        [
            [<randomthings:ingredient:3>,<actuallyadditions:item_crystal_empowered:2>,<randomthings:ingredient:3>],
            [<actuallyadditions:item_crystal_empowered:4>,<botania:lens:21>,<actuallyadditions:item_crystal_empowered:4>],
            [<randomthings:ingredient:3>,<actuallyadditions:item_crystal_empowered:2>,<randomthings:ingredient:3>]
        ]
    ],
    <randomthings:spectreenergyinjector> : [
        [
            [<contenttweaker:purifiedobsidian>,<randomthings:spectrelens>,<contenttweaker:purifiedobsidian>],
            [<quantumflux:exciterupgrade>,<minecraft:beacon>,<quantumflux:exciterupgrade>],
            [<contenttweaker:purifiedobsidian>,<quantumflux:rfentangler>,<contenttweaker:purifiedobsidian>]
        ]
    ],
    <randomthings:floopouch> : [
        [
            [<randomthings:ingredient:7>,<randomthings:ingredient:7>,<randomthings:ingredient:7>],
            [<randomthings:ingredient:7>,<toolbelt:pouch>,<randomthings:ingredient:7>],
            [<randomthings:ingredient:7>,<randomthings:ingredient:7>,<randomthings:ingredient:7>]
        ]
    ],
    <randomthings:irondropper> : [
        [
            [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],
            [<ore:ingotIron>,<minecraft:dropper>,<ore:ingotIron>],
            [<ore:ingotIron>,<ore:dustRedstone>,<ore:ingotIron>]
        ]
    ],
    <randomthings:peacecandle> : [
        [
            [<randomthings:ingredient:1>],
            [<forestry:candle>],
            [<minecraft:stone_slab:3>]
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

recipes.remove(<randomthings:ingredient:12>);
Crucible.addRecipe(<liquid:ectoplasma> * 10, <randomthings:ingredient:2>, 100000);
Transposer.addFillRecipe(<randomthings:ingredient:12>, <enderutilities:enderpart:21>,  <liquid:ectoplasma> * 1000, 2000);

recipes.remove(<randomthings:weatheregg>);
Transposer.addFillRecipe(<randomthings:weatheregg>, <minecraft:egg>,  <liquid:liquid_sunshine> * 2000, 10000);
recipes.remove(<randomthings:weatheregg:1>);
Transposer.addFillRecipe(<randomthings:weatheregg:1>, <minecraft:egg>,  <liquid:cloud_seed> * 500, 2500);
recipes.remove(<randomthings:weatheregg:2>);
Transposer.addFillRecipe(<randomthings:weatheregg:2>, <minecraft:egg>,  <liquid:cloud_seed_concentrated> * 1000, 5000);

recipes.remove(<randomthings:timeinabottle>);
Altar.addTraitAltarRecipe("timeinabottle",<randomthings:timeinabottle>, 2000, 1000, [
    <rs_ctr:cl_fuel>,
    <extrautils2:opinium:8>,
    <rs_ctr:cl_fuel>,
    <extrautils2:opinium:8>,
    <extrautils2:klein>,
    <extrautils2:opinium:8>,
    <rs_ctr:cl_fuel>,
    <extrautils2:opinium:8>,
    <rs_ctr:cl_fuel>,
    <rs_ctr:cl_fuel>,
    <rs_ctr:cl_fuel>,
    <rs_ctr:cl_fuel>,
    <rs_ctr:cl_fuel>,
    <quantumflux:imaginarytime>,
    <quantumflux:imaginarytime>,
    <quantumflux:imaginarytime>,
    <quantumflux:imaginarytime>,
    <quantumflux:imaginarytime>,
    <quantumflux:imaginarytime>,
    <quantumflux:imaginarytime>,
    <quantumflux:imaginarytime>,
    <rs_ctr:cl_fuel>,
    <rs_ctr:cl_fuel>,
    <rs_ctr:cl_fuel>,
    <rs_ctr:cl_fuel>,
    // Outer Items
    <minecraft:clock>,
    <randomthings:eclipsedclock>,
    <minecraft:clock>,
    <randomthings:eclipsedclock>,
    <minecraft:clock>,
    <randomthings:eclipsedclock>,
    <minecraft:clock>,
    <randomthings:eclipsedclock>
], "astralsorcery.constellation.horologium");
