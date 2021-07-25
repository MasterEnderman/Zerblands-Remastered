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

import mods.actuallyadditions.AtomicReconstructor;
import mods.astralsorcery.Altar;
import mods.astralsorcery.Grindstone;
import mods.bloodmagic.AlchemyTable;
import mods.botania.PureDaisy;
import mods.enderio.AlloySmelter;
import mods.evilcraft.BloodInfuser;
import mods.forestry.Carpenter;
import mods.forestry.Centrifuge;
import mods.forestry.ThermionicFabricator;
import mods.ic2.Extractor;
import mods.ic2.Macerator;
import mods.immersiveengineering.AlloySmelter as Kiln;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.immersivetechnology.SolarTower;
import mods.inworldcrafting.ExplosionCrafting;
import mods.inworldcrafting.FluidToItem;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import mods.tconstruct.Melting;
import mods.thermalexpansion.Centrifuge as TECentrifuge;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Infuser;
import mods.thermalexpansion.Refinery as TERefinery;
import mods.thermalexpansion.Transposer;

Mixer.addRecipe(<liquid:sulfuric_acid>*1000, <liquid:distwater>*1000, [<ore:dustSulfur>*4,<ore:dustIron>], 1024);

PureDaisy.addRecipe(<sonarcore:stablestone_normal>, <contenttweaker:runestone>, 100);

ExplosionCrafting.explodeItemRecipe(<contenttweaker:rune_blank> * 2, <contenttweaker:runestone>);

TERefinery.removeRecipe(<liquid:oil>);
TERefinery.removeRecipe(<liquid:crude_oil>);

Casting.addTableRecipe(<contenttweaker:lithium_dust>, null, <liquid:briny_water>, 200, false, 600);
Casting.addTableRecipe(findFirstItemFromMod("contenttweaker","plate","StyreneButadieneRubber"), <tconstruct:cast_custom:3> ,<liquid:styrene_butadiene_rubber>, 200, false, 120);

Mixer.addRecipe(<liquid:hydrogen_chlorid>*250, <liquid:sulfuric_acid>*250, [<ore:dustSalt>*4], 512);
Mixer.addRecipe(<liquid:battery_solution>*250, <liquid:distwater>*250, [
    <contenttweaker:lithium_dust>,
    <contenttweaker:electrotine_dust>,
    <ore:dustApatite>,
    <forestry:phosphor>
], 512);
Mixer.addRecipe(<liquid:battery_solution>*250, <liquid:distwater>*250, [
    <contenttweaker:lithium_dust>,
    <contenttweaker:electrotine_dust>,
    <ore:dustApatite>,
    <abyssalcraft:crystal:7>
], 512);

Refinery.addRecipe(<liquid:ethylene>*8, <liquid:refined_oil>*8, <liquid:steam>*100, 512);
Refinery.addRecipe(<liquid:plastic>*16, <liquid:ethylene>*8, <liquid:hydrogen_chlorid>*8, 512);
Refinery.addRecipe(<liquid:steamed_naphtha>*50, <liquid:refined_oil>*50, <liquid:steam>*100, 512);

Alloy.addRecipe(<liquid:soldering_alloy> * 432, [<liquid:lead> * 144, <liquid:tin> * 288]);
Alloy.addRecipe(<liquid:battery_alloy> * 720, [<liquid:lead> * 576, <liquid:antimony> * 144]);

Casting.addTableRecipe(<contenttweaker:plastic>, <tconstruct:cast_custom:3>, <liquid:plastic>, 512, false);

AlloySmelter.addRecipe(<contenttweaker:ender_ingot>, [<ore:ingotSilver>,<embers:shard_ember>,<ore:dustEnder>], 5000);

AlloySmelter.addRecipe(<contenttweaker:starsteel_ingot>, [<ore:ingotManasteel>,<ore:ingotAstralStarmetal>,<ore:ingotPsi>], 50000);

AlchemyTable.addRecipe(<contenttweaker:crystal_prism>, [
	<astralsorcery:itemrockcrystalsimple>,<tconstruct:edible:30>,<tconstruct:edible:31>,
    <tconstruct:edible:32>,<tconstruct:edible:33>,<tconstruct:edible:34>
], 3000, 100, 0);

AlchemyTable.addRecipe(<contenttweaker:malignant_heart>, [
	<scalinghealth:heartcontainer>,<embers:eldritch_insignia>,<tconstruct:materials:19>,
    <xreliquary:void_tear>,<extrautils2:ingredients:11>,<botania:specialflower>.withTag({type: "fallenKanade"})
], 3000, 100, 0);

ArcFurnace.addRecipe(<contenttweaker:silicon_boule>, <ore:blockCharcoal>, <thermalfoundation:material:864>, 600, 512, [<ore:sand>*16]);

Casting.addBasinRecipe(<contenttweaker:magma_soaked_cobblestone>, <minecraft:magma>, <liquid:stone>, 576, true, 200);
BottlingMachine.addRecipe(<contenttweaker:magma_soaked_cobblestone>, <minecraft:magma>, <liquid:stone> * 576);
Transposer.addFillRecipe(<contenttweaker:magma_soaked_cobblestone>, <minecraft:magma>,  <liquid:stone> * 576, 2000);

Casting.removeTableRecipe(<contenttweaker:ender_ingot>);

InductionSmelter.addRecipe(<contenttweaker:electro_silicon>, <appliedenergistics2:material:5>, <contenttweaker:electrotine_dust> * 4, 5000);

Infuser.addRecipe(<contenttweaker:electrotine_dust>, <actuallyadditions:item_dust:4>, 2500);

// inputStack, inputFluid, tier, outputStack, duration, xp
BloodInfuser.addRecipe(<sonarcore:reinforcedstoneblock>, <liquid:evilcraftblood> * 2000, 0, <contenttweaker:blood_infused_stone>, 100, 10);

BloodInfuser.addRecipe(<contenttweaker:rune_blank>, <liquid:evilcraftblood> * 10000, 0, <contenttweaker:rune_common>, 100, 5);
BloodInfuser.addRecipe(<contenttweaker:rune_common>, <liquid:evilcraftblood> * 40000, 1, <contenttweaker:rune_uncommon>, 100, 5);
BloodInfuser.addRecipe(<contenttweaker:rune_uncommon>, <liquid:evilcraftblood> * 160000, 2, <contenttweaker:rune_rare>, 100, 5);
BloodInfuser.addRecipe(<contenttweaker:rune_rare>, <liquid:evilcraftblood> * 640000, 3, <contenttweaker:rune_legendary>, 100, 5);

// mods.immersivetechnology.SolarTower.addRecipe(ILiquidStack outputFluid, ILiquidStack inputFluid, int time);
SolarTower.removeRecipe(<liquid:water>);
SolarTower.addRecipe(<liquid:brackish_water> * 100, <liquid:water> * 1000, 10);
SolarTower.addRecipe(<liquid:saline_water> * 100, <liquid:brackish_water> * 1000, 10);
SolarTower.addRecipe(<liquid:briny_water> * 100, <liquid:saline_water> * 1000, 10);

Altar.addDiscoveryAltarRecipe("grinding_wheel", <contenttweaker:grind_wheel>, 200, 200, [
    <ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>,
    <ore:stoneMarble>, <ore:gearStone>, <ore:stoneMarble>,
    <ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>
]);

Drying.addRecipe(<contenttweaker:root_dried>,<botania:manaresource:20>,200);
Casting.addTableRecipe(<contenttweaker:root_golden>, <contenttweaker:root_dried>, <liquid:gold>, 288, true);

recipes.addShapeless(<contenttweaker:pattern_ingot>, [
    <actuallyadditions:item_knife:*>.transformDamage(),<tconstruct:pattern>
]);

var mapPressed as IItemStack[IItemStack] = {
    <contenttweaker:pressed_mud> : <earthworks:item_mud>,
    <contenttweaker:pressed_clay> : <minecraft:clay_ball>,
    <contenttweaker:pressed_fireclay> : <contenttweaker:fireclay_dust>
};

for output, input in mapPressed {
    recipes.addShapeless(output, [
        <contenttweaker:pattern_ingot:*>.transformDamage(),input
    ]);
    MetalPress.addRecipe(output, input, <contenttweaker:mold_ingot>, 2048);
}

MetalPress.addRecipe(<contenttweaker:clay_plate_raw>, <minecraft:clay_ball>, <immersiveengineering:mold>, 2048);
furnace.addRecipe(<contenttweaker:clay_plate>, <contenttweaker:clay_plate_raw>);

recipes.addShaped(<contenttweaker:energium_dust> * 9, [
    [<ore:dustRedstone>,<ore:dustDiamond>,<ore:dustRedstone>],
    [<ore:dustDiamond>,<ore:dustRedstone>,<ore:dustDiamond>],
    [<ore:dustRedstone>,<ore:dustDiamond>,<ore:dustRedstone>]
]);

Grindstone.addRecipe(<minecraft:bone>, <contenttweaker:bone_shard>, 0.1f);
Grindstone.addRecipe(<minecraft:flint>, <contenttweaker:flint_shard>, 0.1f);

recipes.addShapeless(<contenttweaker:fireclay_dust> * 2, [
    <contenttweaker:brick_dust>,<ic2:itemmisc:11>,
    <ic2:itemmisc:8>,<ic2:itemmisc:9>
]);

Drying.addRecipe(<contenttweaker:fireclay_dried>,<contenttweaker:pressed_fireclay>,400);
furnace.addRecipe(<contenttweaker:fireclay_brick>,<contenttweaker:fireclay_dried>);

Blueprint.addRecipe("components", <contenttweaker:electric_motor>, [
    <immersiveengineering:material:8> * 1,
    <extrautils2:ingredients:13> * 1,
    <actuallyadditions:item_misc:7> * 1,
    <ic2:itemcable> * 4
]);

Blueprint.addRecipe("components", <contenttweaker:iron_rotor>, [
    <ore:gearIron> * 1,
    <contenttweaker:iron_rotor_blade> * 4
]);

Blueprint.addRecipe("components", <contenttweaker:iron_rotor_blade>, [
    <ore:stickIron> * 3,
    <ore:plateIron> * 2
]);

FluidToItem.transform(<contenttweaker:enrichedgold>, <liquid:astralsorcery.liquidstarlight>, [<ore:dustGold>, <ore:dustRedstone> * 2], false);

Macerator.addRecipe(<contenttweaker:small_stone>,<botania:manaresource:21>);
Macerator.addRecipe(findFirstItemFromMod("contenttweaker","dust","apatite"),<forestry:apatite>);

recipes.addShaped(<contenttweaker:chest_lock> * 1, [
    [<minecraft:stone_button>],
    [<minecraft:stone_button>]
]);
recipes.addShaped(<contenttweaker:chest_lock> * 4, [
    [<ore:nuggetIron>],
    [<minecraft:stone_button>]
]);
recipes.addShaped(<contenttweaker:chest_lock> * 8, [
    [<ore:nuggetSteel>],
    [<minecraft:stone_button>]
]);

ThermionicFabricator.addCast(<contenttweaker:resistor> * 4, [
    [<minecraft:paper>,<ore:wireRedAlloy>,<minecraft:paper>],
    [<contenttweaker:clay_plate>,<ore:dustCoke>,<contenttweaker:clay_plate>],
    [<minecraft:paper>,<ore:wireRedAlloy>,<minecraft:paper>]
], <liquid: glass> * 200);

ThermionicFabricator.addCast(<contenttweaker:diode> * 4, [
    [<minecraft:paper>,<ore:wireRedAlloy>,<minecraft:paper>],
    [<minecraft:paper>,<immersiveengineering:material:26>,<minecraft:paper>],
    [<minecraft:paper>,<ore:wireRedAlloy>,<minecraft:paper>]
], <liquid: glass> * 200);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <contenttweaker:copper_coil> : [
        [
            [null,<immersiveengineering:wirecoil>,<ore:stickIron>],
            [<immersiveengineering:wirecoil>,<ore:gemQuartzBlack>,<immersiveengineering:wirecoil>],
            [<ore:stickIron>,<immersiveengineering:wirecoil>,null]
        ]
    ],
    <contenttweaker:cutting_head> : [
        [
            [<contenttweaker:basic_blade>,<contenttweaker:basic_blade>,<contenttweaker:basic_blade>],
            [<contenttweaker:basic_blade>,<ore:gearStone>,<contenttweaker:basic_blade>],
            [<contenttweaker:basic_blade>,<contenttweaker:basic_blade>,<contenttweaker:basic_blade>]
        ]
    ],
    <contenttweaker:stone_board> : [
        [
            [null,<randomthings:ingredient:8>,null],
            [<contenttweaker:small_stone>,<ore:slimeball>,<contenttweaker:small_stone>],
            [null,<tconstruct:pattern>,null]
        ],
        [
            [null,<randomthings:ingredient:8>,null],
            [<contenttweaker:small_stone>,<ore:slimeball>,<contenttweaker:small_stone>],
            [null,<contenttweaker:clay_plate>,null]
        ]
    ],
    <contenttweaker:gravel_dust> : [
        [
            [<minecraft:gravel>]
        ]
    ],
    <contenttweaker:railbed_wood> : [
        [
            [<contenttweaker:tie_wood>],
            [<contenttweaker:tie_wood>],
            [<contenttweaker:tie_wood>]
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

Casting.addTableRecipe(findFirstItemFromMod("contenttweaker","plate","batteryAlloy"), <tconstruct:cast_custom:3>, <liquid:battery_alloy>, 144, false);
Melting.addRecipe(getFluid("battery_alloy")*144, findFirstItemFromMod("contenttweaker","plate","batteryAlloy"), 550);

Casting.addTableRecipe(findFirstItemFromMod("contenttweaker","plate","redAlloy"), <tconstruct:cast_custom:3>, <liquid:red_alloy>, 144, false);
Melting.addRecipe(getFluid("red_alloy")*144, findFirstItemFromMod("contenttweaker","plate","redAlloy"), 550);

AtomicReconstructor.addRecipe(findFirstItemFromMod("contenttweaker","ingot","antimony"), findFirstItemFromMod("thermalfoundation","ingot","tin"), 400);

Extractor.addRecipe(<contenttweaker:raw_rubber_pulp> * 6, <ic2:itemharz>);
Centrifuge.addRecipe([(<contenttweaker:raw_rubber_pulp> * 2) % 100], <ic2:itemharz>, 100);
TECentrifuge.addRecipe([(<contenttweaker:raw_rubber_pulp> * 4) % 100], <ic2:itemharz>, null, 2000);

Carpenter.addRecipe(<contenttweaker:tie_wood>, [
    [<ore:slabWood>,<ore:slabWood>,<ore:slabWood>]
], 40, <liquid:creosote> * 250);

Carpenter.addRecipe(<contenttweaker:battery_hull>, [
    [null,<ic2:itemcable:1>,null],
    [<ore:plateBatteryAlloy>,<ic2:itemcellempty>,<ore:plateBatteryAlloy>],
    [<ore:plateBatteryAlloy>,<ic2:itemcellempty>,<ore:plateBatteryAlloy>]
], 80, <liquid:soldering_alloy> * 144);

Blueprint.addRecipe("rails", <contenttweaker:rail_wood>, [
    <contenttweaker:tie_wood>,
    <ore:ingotIron>
]);

Blueprint.addRecipe("rails", <contenttweaker:rail_standard> * 6, [
    <ore:plateGold> * 3
]);

Blueprint.addRecipe("rails", <contenttweaker:rail_speed> * 6, [
    <ore:plateIron> * 3
]);

var materialSystem as string[string] = {
    "antimony" : "antimony",
    "batteryAlloy" : "battery_alloy",
    "redAlloy" : "red_alloy",
    "solderingAlloy" : "soldering_alloy",
};

for material, fluid in materialSystem {
    var nugget as IIngredient = getOreDict("nugget",material);
    var ingot as IIngredient = getOreDict("ingot",material);
    var block as IIngredient = getOreDict("block",material);

    recipes.addShapeless(findFirstItemFromMod("contenttweaker","ingot",material),[nugget,nugget,nugget,nugget,nugget,nugget,nugget,nugget,nugget]);
    recipes.addShapeless(findFirstItemFromMod("contenttweaker","nugget",material) * 9, [ingot]);
    recipes.addShapeless(findFirstItemFromMod("contenttweaker","block",material),[ingot,ingot,ingot,ingot,ingot,ingot,ingot,ingot,ingot]);
    recipes.addShapeless(findFirstItemFromMod("contenttweaker","ingot",material) * 9, [block]);

    Casting.addTableRecipe(findFirstItemFromMod("contenttweaker","nugget",material), <tconstruct:cast_custom:1>, getFluid(fluid), 16, false);
    Casting.addTableRecipe(findFirstItemFromMod("contenttweaker","ingot",material), <tconstruct:cast_custom>, getFluid(fluid), 144, false);
    Casting.addBasinRecipe(findFirstItemFromMod("contenttweaker","block",material), null, getFluid(fluid), 1296, false);

    Melting.addRecipe(getFluid(fluid)*16, nugget, 275);
    Melting.addRecipe(getFluid(fluid)*144, ingot, 550);
    Melting.addRecipe(getFluid(fluid)*1296, block, 1100);
}
