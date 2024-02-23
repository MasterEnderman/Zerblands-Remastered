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
import mods.actuallyadditions.Empowerer;
import mods.astralsorcery.Altar;
import mods.astralsorcery.Grindstone;
import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.BloodAltar;
import mods.botania.RuneAltar;
import mods.botania.PureDaisy;
import mods.embers.Alchemy;
import mods.enderio.AlloySmelter;
import mods.enderio.SagMill;
import mods.enderio.SliceNSplice;
import mods.enderio.SoulBinder;
import mods.energycontrol.KitAssembler;
import mods.evilcraft.BloodInfuser;
import mods.forestry.Carpenter;
import mods.forestry.Centrifuge;
import mods.forestry.Still;
import mods.forestry.ThermionicFabricator;
import mods.ic2.Compressor;
import mods.ic2.Extractor;
import mods.ic2.Macerator;
import mods.immersiveengineering.AlloySmelter as Kiln;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.immersiveengineering.Squeezer;
import mods.immersivetechnology.Distiller;
import mods.immersivetechnology.SolarTower;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import mods.tconstruct.Melting;
import mods.thermalexpansion.Centrifuge as TECentrifuge;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Refinery as TERefinery;
import mods.thermalexpansion.Transposer;

import moretweaker.draconicevolution.FusionCrafting;

import scripts.mod_functions.betterCharging;
import scripts.mod_functions.betterExplosion;

<contenttweaker:eternalslate>.addTooltip("Infused stone inside of a");
<contenttweaker:eternalslate>.addTooltip("Blood Altar");

<contenttweaker:potatos>.addTooltip(format.darkPurple("aka PotatOS"));

BloodInfuser.addRecipe(<thermalfoundation:material:23>, <liquid:evilcraftblood> * 4000, 0, <contenttweaker:runic_gear>, 100, 2);
BloodAltar.addRecipe(<contenttweaker:runic_gear>, <thermalfoundation:material:23>, 0, 2000,5,5);
Distiller.addRecipe(<liquid:refined_life_essence> * 300, <liquid:lifeessence> * 100, <evilcraft:hardened_blood_shard>, 2048, 20, 0.1);
Still.addRecipe(<liquid:refined_life_essence> * 300, <liquid:lifeessence> * 100, 20);

Mixer.addRecipe(<liquid:sulfuric_acid>*100, <liquid:iron_chloride>*100, [<ore:dustSulfur>], 1024);

PureDaisy.addRecipe(<sonarcore:stablestone_normal>, <contenttweaker:runestone>, 100);

/* disabled until v2.3.0 to fix the world corruption bug
Squeezer.addRecipe(<harvestcraft:fishtrapbaititem>, <liquid:fish_oil> * 400, <harvestcraft:groundfishitem> * 8, 2048);
Distiller.addRecipe(<liquid:evilcraftpoison> * 100, <liquid:fish_oil> * 200, <ic2:itemmisc:150>, 2048, 20, 0.1);
Still.addRecipe(<liquid:evilcraftpoison> * 100, <liquid:fish_oil> * 200, 20);
*/
Squeezer.addRecipe(<harvestcraft:fishtrapbaititem>, <liquid:evilcraftpoison> * 100, <harvestcraft:groundfishitem> * 8, 2048);

RuneAltar.addRecipe(<contenttweaker:infusion_block>,[
    <botania:rune:11>,
    <bloodmagic:slate:1>,
    <botania:rune:15>,
    <bloodmagic:slate:1>,
    <botania:rune:14>,
    <bloodmagic:slate:1>,
    <botania:rune:9>,
    <bloodmagic:slate:1>
], 2000);

betterExplosion(<contenttweaker:rune_blank> * 2, <contenttweaker:runestone>);
betterExplosion(<contenttweaker:q1> * 64, <advancedsolars:enrichedsunnarium>);

TERefinery.removeRecipe(<liquid:oil>);
TERefinery.removeRecipe(<liquid:crude_oil>);

SagMill.addRecipe([<contenttweaker:small_stone>], [100], <thermalfoundation:material:864>, "NONE", 1000);
Crusher.addRecipe(<contenttweaker:small_stone>, <thermalfoundation:material:864>, 2048);

Casting.addTableRecipe(<contenttweaker:lithium_dust>, null, <liquid:briny_water>, 200, false, 600);
Casting.addTableRecipe(findFirstItemFromMod("contenttweaker","plate","StyreneButadieneRubber"), <tconstruct:cast_custom:3> ,<liquid:styrene_butadiene_rubber>, 200, false, 120);

var cast_pan as IItemStack = <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"});
Casting.addTableRecipe(<contenttweaker:petri_dish>, cast_pan, <liquid:glass>, 200, false, 200);

KitAssembler.addRecipe(<bloodmagic:component:25> * 16, <contenttweaker:stemcells> * 64, <bloodmagic:component:26> * 16, <contenttweaker:dense_neuron_chip>, 1200);
KitAssembler.addRecipe(<contenttweaker:dense_neuron_chip> * 3, <rs_ctr:wireless_b> * 64, <contenttweaker:neuro_processor>, <contenttweaker:wetware_assembly>, 1200);

Mixer.addRecipe(<liquid:iron_chloride>*1000, <liquid:hydrochloric_acid>*1000, [<ore:oreIron>], 1024);
Mixer.addRecipe(<liquid:sodium_hydroxide>*500, <liquid:water>*500, [<contenttweaker:sodium_dust>], 512);
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
Mixer.addRecipe(<liquid:grog>*500, <liquid:evilcraftpoison>*500, [
    <minecraft:bone>,
    <minecraft:fermented_spider_eye>,
    <minecraft:sugar>,
    <xreliquary:mob_ingredient:6>,
    <ore:slimeball>
], 512);

Refinery.addRecipe(<liquid:plastic> * 16, <liquid:ethylene> * 8, <liquid:hydrogen_chlorid> * 8, 512);
Refinery.addRecipe(<liquid:ethylene> * 10, <liquid:refined_biofuel> * 6, <liquid:hydrogen> * 4, 512);
Refinery.addRecipe(<liquid:steamed_naphtha> * 50, <liquid:refined_oil> * 50, <liquid:steam> * 100, 512);
Refinery.addRecipe(<liquid:hydrochloric_acid> * 100, <liquid:water> * 50, <liquid:hydrogen_chlorid> * 50, 512);
Refinery.addRecipe(<liquid:hydrogen_chlorid> * 200, <liquid:chlorine> * 100, <liquid:hydrogen> * 100, 512);

BloodAltar.addRecipe(<contenttweaker:eternalslate>, <bloodmagic:slate:4>, 5, 60000,80,200);

BloodAltar.addRecipe(<contenttweaker:corruptedstarmetal>, <astralsorcery:itemcraftingcomponent:1>, 2, 10000,200,50);
BloodInfuser.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <liquid:evilcraftblood> * 64000, 3, <contenttweaker:corruptedstarmetal>, 1000, 5);

Alloy.addRecipe(<liquid:soldering_alloy> * 3, [<liquid:lead> * 1, <liquid:tin> * 2]);
Alloy.addRecipe(<liquid:battery_alloy> * 5, [<liquid:lead> * 4, <liquid:antimony> * 1]);
Alloy.addRecipe(<liquid:ferromagnetic_alloy> * 1, [<liquid:iron> * 1, <liquid:cobalt> * 1, <liquid:nickel> * 1]);

Casting.addTableRecipe(<contenttweaker:plastic>, <tconstruct:cast_custom:3>, <liquid:plastic>, 512, false);

AlloySmelter.addRecipe(<contenttweaker:ender_ingot>, [<ore:ingotSilver>,<embers:shard_ember>,<ore:dustEnder>], 5000);
ArcFurnace.addRecipe(<contenttweaker:ender_ingot>, <ore:ingotSilver>, <thermalfoundation:material:864>, 600, 512, [<embers:shard_ember>,<ore:dustEnder>]);

AlloySmelter.addRecipe(<contenttweaker:starsteel_ingot>*2, [<ore:ingotManasteel>,<ore:ingotAstralStarmetal>,<ore:ingotPsi>], 50000);
ArcFurnace.addRecipe(<contenttweaker:starsteel_ingot>*2, <ore:ingotManasteel>, <thermalfoundation:material:864>, 600, 512, [<ore:ingotAstralStarmetal>,<ore:ingotPsi>]);

AlloySmelter.addRecipe(<contenttweaker:enhanced_ender_ingot>*2, [<contenttweaker:ender_ingot>, <extrautils2:ingredients:17>, <ore:ingotLudicrite>], 500000);
ArcFurnace.addRecipe(<contenttweaker:enhanced_ender_ingot>*2, <contenttweaker:ender_ingot>, <thermalfoundation:material:864>, 600, 512, [<extrautils2:ingredients:17>, <ore:ingotLudicrite>]);

AlloySmelter.addRecipe(findFirstItemFromMod("contenttweaker","ingot","ferromagneticAlloy")*2, [<ore:ingotIron>,<ore:ingotNickel>,<ore:ingotCobalt>], 10000);
ArcFurnace.addRecipe(findFirstItemFromMod("contenttweaker","ingot","ferromagneticAlloy")*2, <ore:ingotIron>, <thermalfoundation:material:864>, 600, 512, [<ore:ingotNickel>,<ore:ingotCobalt>]);

AlchemyTable.addRecipe(<contenttweaker:crystal_prism>, [
	<astralsorcery:itemrockcrystalsimple>,<tconstruct:edible:30>,<tconstruct:edible:31>,
    <tconstruct:edible:32>,<tconstruct:edible:33>,<tconstruct:edible:34>
], 3000, 100, 1);

AlchemyTable.addRecipe(<contenttweaker:malignant_heart>, [
	<scalinghealth:heartcontainer>,<embers:eldritch_insignia>,<tconstruct:materials:19>,
    <xreliquary:void_tear>,<extrautils2:ingredients:11>,<botania:specialflower>.withTag({type: "fallenKanade"})
], 3000, 100, 1);

ArcFurnace.addRecipe(<contenttweaker:silicon_boule>, <ore:blockCharcoal>, <thermalfoundation:material:864>, 600, 512, [<ore:sand>*16]);

Casting.addBasinRecipe(<contenttweaker:magma_soaked_cobblestone>, <minecraft:magma>, <liquid:stone>, 576, true, 200);
BottlingMachine.addRecipe(<contenttweaker:magma_soaked_cobblestone>, <minecraft:magma>, <liquid:stone> * 576);
Transposer.addFillRecipe(<contenttweaker:magma_soaked_cobblestone>, <minecraft:magma>,  <liquid:stone> * 576, 2000);

Transposer.addFillRecipe(<contenttweaker:stemcells>, <contenttweaker:petri_dish>,  <liquid:protein> * 4000, 200000);

Casting.removeTableRecipe(<contenttweaker:ender_ingot>);

InductionSmelter.addRecipe(<contenttweaker:electro_silicon>, <appliedenergistics2:material:5>, <contenttweaker:electrotine_dust> * 4, 5000);

betterCharging(<contenttweaker:electrotine_dust>, <enderio:item_material:32>, 2500);
Alchemy.add(<contenttweaker:electrotine_dust> * 4, [<botania:spark>, <ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>], {"dawnstone": 16 to 32, "lead": 16 to 32});

// inputStack, inputFluid, tier, outputStack, duration, xp
BloodInfuser.addRecipe(<sonarcore:reinforcedstoneblock>, <liquid:evilcraftblood> * 2000, 0, <contenttweaker:blood_infused_stone>, 100, 10);
BloodInfuser.addRecipe(<earthworks:block_dry_stone>, <liquid:evilcraftblood> * 4000, 0, <contenttweaker:blood_infused_stone>, 100, 10);

BloodInfuser.addRecipe(<contenttweaker:rune_blank>, <liquid:evilcraftblood> * 10000, 0, <contenttweaker:rune_common>, 100, 5);
BloodInfuser.addRecipe(<contenttweaker:rune_common>, <liquid:evilcraftblood> * 40000, 1, <contenttweaker:rune_uncommon>, 100, 5);
BloodInfuser.addRecipe(<contenttweaker:rune_uncommon>, <liquid:evilcraftblood> * 160000, 2, <contenttweaker:rune_rare>, 100, 5);
BloodInfuser.addRecipe(<contenttweaker:rune_rare>, <liquid:evilcraftblood> * 640000, 3, <contenttweaker:rune_legendary>, 100, 5);

// mods.immersivetechnology.SolarTower.addRecipe(ILiquidStack outputFluid, ILiquidStack inputFluid, int time);
SolarTower.removeRecipe(<liquid:water>);
SolarTower.addRecipe(<liquid:brackish_water> * 100, <liquid:water> * 1000, 60);
SolarTower.addRecipe(<liquid:saline_water> * 100, <liquid:brackish_water> * 1000, 60);
SolarTower.addRecipe(<liquid:briny_water> * 100, <liquid:saline_water> * 1000, 60);

Altar.addDiscoveryAltarRecipe("grinding_wheel", <contenttweaker:grind_wheel>, 200, 200, [
    <ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>,
    <ore:stoneMarble>, <ore:gearStone>, <ore:stoneMarble>,
    <ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>
]);

Drying.addRecipe(<contenttweaker:root_dried>,<botania:manaresource:20>,200);
Casting.addTableRecipe(<contenttweaker:root_golden>, <contenttweaker:root_dried>, <liquid:gold>, 288, true);
Transposer.addFillRecipe(<contenttweaker:root_golden>, <contenttweaker:root_dried>,  <liquid:gold> * 288, 2000);

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
    Compressor.addRecipe(output, input);
    Compactor.addPressRecipe(output, input, 2000);
}

Compactor.addStorageRecipe(<contenttweaker:clay_plate_raw>, <minecraft:clay_ball>, 4000);
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

furnace.addRecipe(<contenttweaker:reinforced_obsidian_ingot>,<enderio:block_reinforced_obsidian>);

Blueprint.addRecipe("components", <contenttweaker:electric_motor:0>, [
    <immersiveengineering:material:8> * 1,
    <contenttweaker:heating_coil:0> * 1,
    <actuallyadditions:item_misc:7> * 1,
    <ic2:itemcable:0> * 4
]);

Blueprint.addRecipe("components", <contenttweaker:iron_rotor:0>, [
    <ore:gearIron> * 1,
    <contenttweaker:iron_rotor_blade:0> * 4
]);

Blueprint.addRecipe("components", <contenttweaker:iron_rotor_blade:0>, [
    <ore:stickIron> * 3,
    <ore:plateIron> * 2
]);

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
        ],
        [
            [<ic2:itemmisc:303>,<ic2:itemmisc:303>,<ic2:itemmisc:303>],
            [<ic2:itemmisc:303>,<ore:gearStone>,<ic2:itemmisc:303>],
            [<ic2:itemmisc:303>,<ic2:itemmisc:303>,<ic2:itemmisc:303>]
        ]
    ],
    <contenttweaker:cutting_head_iron> : [
        [
            [<ic2:itemmisc:301>,<ic2:itemmisc:301>,<ic2:itemmisc:301>],
            [<ic2:itemmisc:301>,<contenttweaker:cutting_head>,<ic2:itemmisc:301>],
            [<ic2:itemmisc:301>,<ic2:itemmisc:301>,<ic2:itemmisc:301>]
        ]
    ],
    <contenttweaker:cutting_head_diamond> : [
        [
            [<contenttweaker:flawless_diamond_shard>,<contenttweaker:flawless_diamond_shard>,<contenttweaker:flawless_diamond_shard>],
            [<contenttweaker:flawless_diamond_shard>,<contenttweaker:cutting_head>,<contenttweaker:flawless_diamond_shard>],
            [<contenttweaker:flawless_diamond_shard>,<contenttweaker:flawless_diamond_shard>,<contenttweaker:flawless_diamond_shard>]
        ],
        [
            [null,<contenttweaker:flawless_diamond_shard>,null],
            [<contenttweaker:flawless_diamond_shard>,<contenttweaker:cutting_head_iron>,<contenttweaker:flawless_diamond_shard>],
            [null,<contenttweaker:flawless_diamond_shard>,null]
        ]
    ],
    <contenttweaker:gravel_dust> * 4 : [
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
    ],
    <contenttweaker:heat_conductor> * 4 : [
        [
            [<ore:plateCopper>,<ore:ingotConductiveIron>,<ore:plateCopper>],
            [<ic2:itemmisc:450>,<ore:plateStyreneButadieneRubber>,<ic2:itemmisc:450>],
            [<ore:plateCopper>,<ore:ingotConductiveIron>,<ore:plateCopper>]
        ]
    ],
    <contenttweaker:cordage_fiber> : [
        [
            [<immersiveengineering:material:4>,<immersiveengineering:material:4>,<immersiveengineering:material:4>],
            [<immersiveengineering:material:4>,<immersiveengineering:material:4>,<immersiveengineering:material:4>]
        ]
    ],
    <contenttweaker:iridium_alloy_ingot> : [
        [
            [<ic2:itemmisc:181>,<ic2:itemmisc:181>,<ic2:itemmisc:181>],
            [<ore:plateTungsten>,<ic2:itemmisc:257>,<ore:plateTungsten>],
            [<ic2:itemmisc:181>,<ic2:itemmisc:181>,<ic2:itemmisc:181>]
        ]
    ],
    <contenttweaker:block_machine_hv> : [
        [
            [<ore:plateTungsten>,<contenttweaker:hdpe_sheet>,<ore:plateTungsten>],
            [<enderio:item_material:68>,<ic2:blockelectric:2>,<enderio:item_material:68>],
            [<ore:plateTungsten>,<contenttweaker:hdpe_sheet>,<ore:plateTungsten>]
        ]
    ],
    findFirstItemFromMod("contenttweaker","dust","tungsten") : [
        [
            [findFirstItemFromMod("contenttweaker","dustSmall","tungsten"),findFirstItemFromMod("contenttweaker","dustSmall","tungsten")],
            [findFirstItemFromMod("contenttweaker","dustSmall","tungsten"),findFirstItemFromMod("contenttweaker","dustSmall","tungsten")]
        ],
        [
            [findFirstItemFromMod("contenttweaker","dustTiny","tungsten"),findFirstItemFromMod("contenttweaker","dustTiny","tungsten"),findFirstItemFromMod("contenttweaker","dustTiny","tungsten")],
            [findFirstItemFromMod("contenttweaker","dustTiny","tungsten"),findFirstItemFromMod("contenttweaker","dustTiny","tungsten"),findFirstItemFromMod("contenttweaker","dustTiny","tungsten")],
            [findFirstItemFromMod("contenttweaker","dustTiny","tungsten"),findFirstItemFromMod("contenttweaker","dustTiny","tungsten"),findFirstItemFromMod("contenttweaker","dustTiny","tungsten")]
        ]
    ],
    <contenttweaker:potatos> : [
        [
            [<ore:nuggetAluminum>,<minecraft:potato>],
            [<contenttweaker:module_energy>,<ore:nuggetCopper>]
        ],
        [
            [<ore:nuggetCopper>,<minecraft:potato>],
            [<contenttweaker:module_energy>,<ore:nuggetAluminum>]
        ]
    ],
    <contenttweaker:advanced_powermodule> : [
        [
            [<draconicevolution:draconic_ingot>,<woot:factorycore:5>,<draconicevolution:draconic_ingot>],
            [<redstonerepository:material:3>,<gendustry:power_module>,<redstonerepository:material:3>],
            [<draconicevolution:draconic_ingot>,<contenttweaker:flux_module>,<draconicevolution:draconic_ingot>]
        ]
    ],
    <contenttweaker:rtg_pellet> : [
        [
            [<ic2:itemreactorplating>,<contenttweaker:plutonium>,<ic2:itemreactorplating>],
            [<ic2:itemreactorplating>,<contenttweaker:plutonium>,<ic2:itemreactorplating>],
            [<ic2:itemreactorplating>,<contenttweaker:plutonium>,<ic2:itemreactorplating>]
        ]
    ],
    <contenttweaker:pearl_lattice> : [
        [
            [<avaritia:resource>,<contenttweaker:wetware_assembly>,<avaritia:resource>],
            [<contenttweaker:wetware_assembly>,<contenttweaker:big_pearl>,<contenttweaker:wetware_assembly>],
            [<avaritia:resource>,<contenttweaker:wetware_assembly>,<avaritia:resource>]
        ]
    ],
    <contenttweaker:omega_core> : [
        [
            [<projecte:item.pe_klein_star:5>,<projecte:item.pe_klein_star:5>,<projecte:item.pe_klein_star:5>],
            [<projecte:item.pe_klein_star:5>,<tconevo:metal_block:2>,<projecte:item.pe_klein_star:5>],
            [<projecte:item.pe_klein_star:5>,<projecte:item.pe_klein_star:5>,<projecte:item.pe_klein_star:5>]
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

recipes.addShaped(<contenttweaker:cutting_head> * 2, [
    [<ic2:itemmisc:303>,<ic2:itemmisc:303>,<ic2:itemmisc:303>],
    [<ic2:itemmisc:303>,<ore:gearStone>,<ic2:itemmisc:303>],
    [<ic2:itemmisc:303>,<ic2:itemmisc:303>,<ic2:itemmisc:303>]
]);

Casting.addTableRecipe(findFirstItemFromMod("contenttweaker","plate","batteryAlloy"), <tconstruct:cast_custom:3>, <liquid:battery_alloy>, 144, false);
Melting.addRecipe(getFluid("battery_alloy")*144, findFirstItemFromMod("contenttweaker","plate","batteryAlloy"), 550);

Casting.addTableRecipe(findFirstItemFromMod("contenttweaker","plate","redAlloy"), <tconstruct:cast_custom:3>, <liquid:red_alloy>, 144, false);
Melting.addRecipe(getFluid("red_alloy")*144, findFirstItemFromMod("contenttweaker","plate","redAlloy"), 550);

AtomicReconstructor.addRecipe(findFirstItemFromMod("contenttweaker","ingot","antimony"), findFirstItemFromMod("thermalfoundation","ingot","tin"), 400);

Extractor.addRecipe(<contenttweaker:raw_rubber_pulp> * 6, <ic2:itemharz>);
Centrifuge.addRecipe([(<contenttweaker:raw_rubber_pulp> * 2) % 100], <ic2:itemharz>, 100);
TECentrifuge.addRecipe([(<contenttweaker:raw_rubber_pulp> * 4) % 100], <ic2:itemharz>, <liquid:resin> * 20, 2000);

TECentrifuge.addRecipe([
    (findFirstItemFromMod("thermalfoundation","dust","platinum")) % 5,
    (findFirstItemFromMod("contenttweaker","dustSmall","tungsten")) % 10,
    (findFirstItemFromMod("contenttweaker","dustTiny","tungsten")) % 20
], <contenttweaker:end_stone_dust>, <liquid:ender> * 1, 20000);

furnace.remove(<ore:ingotTungsten>);
InductionSmelter.addRecipe(findFirstItemFromMod("contenttweaker","ingot","tungsten"), findFirstItemFromMod("contenttweaker","dust","tungsten"), <thermalfoundation:material:1024> * 4, 50000);
InductionSmelter.addRecipe(findFirstItemFromMod("contenttweaker","ingot","tungsten"), findFirstItemFromMod("contenttweaker","dustSmall","tungsten") * 4, <thermalfoundation:material:1024> * 4, 50000);
InductionSmelter.addRecipe(findFirstItemFromMod("contenttweaker","ingot","tungsten"), findFirstItemFromMod("contenttweaker","dustTiny","tungsten") * 9, <thermalfoundation:material:1024> * 4, 50000);

Carpenter.addRecipe(<contenttweaker:tie_wood>, [
    [<ore:slabWood>,<ore:slabWood>,<ore:slabWood>]
], 10, <liquid:creosote> * 250);

Carpenter.addRecipe(<contenttweaker:battery_hull>, [
    [null,<ic2:itemcable:1>,null],
    [<ore:plateBatteryAlloy>,<ic2:itemcellempty>,<ore:plateBatteryAlloy>],
    [<ore:plateBatteryAlloy>,<ic2:itemcellempty>,<ore:plateBatteryAlloy>]
], 10, <liquid:soldering_alloy> * 144);

Carpenter.addRecipe(<contenttweaker:neuro_processor>, [
    [<draconicevolution:draconic_ingot>,<cd4017be_lib:m:405>,<draconicevolution:draconic_ingot>],
    [<advancedsolars:enrichedsunnariumalloy>,<opencomputers:component:2>,<advancedsolars:enrichedsunnariumalloy>],
    [<draconicevolution:draconic_ingot>,<contenttweaker:circuit8>,<draconicevolution:draconic_ingot>]
], 40, <liquid:mana> * 1000, <contenttweaker:stemcells>);

Carpenter.addRecipe(<contenttweaker:big_pearl>, [
    [<abyssalcraft:gatekeeperessence>,<abyssalcraft:gatekeeperessence>,<abyssalcraft:gatekeeperessence>],
    [<abyssalcraft:gatekeeperessence>,<avaritia:endest_pearl>,<abyssalcraft:gatekeeperessence>],
    [<abyssalcraft:gatekeeperessence>,<abyssalcraft:gatekeeperessence>,<abyssalcraft:gatekeeperessence>]
], 10, <liquid:mana> * 10000);

Blueprint.addRecipe("rails", <contenttweaker:rail_wood:0>, [
    <contenttweaker:tie_wood:0>,
    <ore:ingotIron>
]);

Blueprint.addRecipe("rails", <contenttweaker:rail_standard:0> * 6, [
    <ore:plateIron> * 3
]);

Blueprint.addRecipe("rails", <contenttweaker:rail_speed:0> * 6, [
    <ore:plateGold> * 3
]);

SoulBinder.addRecipe(<contenttweaker:antispider_eye>,<abyssalcraft:antispidereye>,["minecraft:spider","minecraft:cave_spider","abyssalcraft:antispider"], 50000, 225);

furnace.setFuel(<contenttweaker:bio_fuel>, 1600);
Transposer.addFillRecipe(<contenttweaker:bio_fuel>, <forestry:wood_pulp>,  <liquid:biomass> * 500, 4000);
Transposer.addFillRecipe(<contenttweaker:hdpe_substrate>, <contenttweaker:bio_fuel>,  <liquid:hydrogen> * 500, 4000);
Transposer.addFillRecipe(<contenttweaker:hdpe_pellet>, <contenttweaker:hdpe_substrate>,  <liquid:ethylene> * 500, 4000);
Compressor.addRecipe(<contenttweaker:hdpe_sheet>, <contenttweaker:hdpe_pellet> * 4);

FusionCrafting.add(<contenttweaker:q2>, <appliedenergistics2:material:48> * 2, FusionCrafting.BASIC, 100000000, [
    <contenttweaker:q1>,
    <contenttweaker:q1>,
    <contenttweaker:q1>,
    <contenttweaker:q1>,
    <contenttweaker:q1>,
    <contenttweaker:q1>,
    <contenttweaker:q1>,
    <contenttweaker:q1>
]);

FusionCrafting.add(<contenttweaker:q3>, <randomthings:redstoneobserver>, FusionCrafting.BASIC, 100000000, [
    <contenttweaker:q1>,
    <contenttweaker:q1>,
    <contenttweaker:q1>,
    <contenttweaker:q1>,
    <contenttweaker:q1>,
    <contenttweaker:q1>,
    <contenttweaker:q1>,
    <contenttweaker:q1>
]);

Empowerer.addRecipe(<contenttweaker:q4>, <contenttweaker:q3>, <contenttweaker:q2>, <contenttweaker:q2>, <contenttweaker:q2>, <contenttweaker:q2>, 10000000, 100, [0.1, 0.9, 0.1]);

FusionCrafting.add(<contenttweaker:crystal_cluster_core>, <woot:prism>, FusionCrafting.WYVERN, 4294967296, [
    <environmentaltech:litherite_crystal>,
    <environmentaltech:erodium_crystal>,
    <environmentaltech:kyronite_crystal>,
    <environmentaltech:pladium_crystal>,
    <environmentaltech:ionite_crystal>,
    <environmentaltech:aethium_crystal>
]);

SliceNSplice.addRecipe(<contenttweaker:engraved_crystal_chip> * 4, [
    <contenttweaker:q1>, <opencomputers:material:9>, <contenttweaker:q1>,
    <forestry:thermionic_tubes:9>,<actuallyadditions:item_crystal_empowered:4>,<forestry:thermionic_tubes:9>
], 40000);

SliceNSplice.addRecipe(<contenttweaker:engraved_crystal_chip>, [
    <contenttweaker:terrasteelprocessor>, <opencomputers:material:9>, <contenttweaker:terrasteelprocessor>,
    <forestry:thermionic_tubes:9>,<actuallyadditions:item_crystal_empowered:4>,<forestry:thermionic_tubes:9>
], 40000);

SliceNSplice.addRecipe(<contenttweaker:engraved_lapotronic_chip> * 4, [
    <contenttweaker:lapotronic_energy_orb>, <opencomputers:material:9>, <contenttweaker:lapotronic_energy_orb>,
    <forestry:thermionic_tubes:11>,<actuallyadditions:item_crystal_empowered:1>,<forestry:thermionic_tubes:11>
], 40000);

SliceNSplice.addRecipe(<contenttweaker:engraved_lapotronic_chip>, [
    <ic2:itembatlamacrystal>, <opencomputers:material:9>, <ic2:itembatlamacrystal>,
    <forestry:thermionic_tubes:11>,<actuallyadditions:item_crystal_empowered:1>,<forestry:thermionic_tubes:11>
], 40000);

ThermionicFabricator.addCast(<contenttweaker:data_storage_circuit> * 4, [
    [<ore:plateAluminum>,<ore:circuitAdvanced>,<ore:plateAluminum>],
    [<contenttweaker:hdpe_sheet>,<contenttweaker:engraved_crystal_chip>,<contenttweaker:hdpe_sheet>],
    [<ore:plateAluminum>,<ore:circuitAdvanced>,<ore:plateAluminum>]
], <liquid: glass> * 200);

ThermionicFabricator.addCast(<contenttweaker:data_control_circuit> * 4, [
    [<ore:circuitAdvanced>,<contenttweaker:data_storage_circuit>,<ore:circuitAdvanced>],
    [<contenttweaker:data_storage_circuit>,<ic2:itemmisc:258>,<contenttweaker:data_storage_circuit>],
    [<ore:circuitAdvanced>,<contenttweaker:data_storage_circuit>,<ore:circuitAdvanced>]
], <liquid: glass> * 200);

ThermionicFabricator.addCast(<contenttweaker:energy_flow_circuit> * 4, [
    [<ore:circuitAdvanced>,<ore:plateTungsten>,<ore:circuitAdvanced>],
    [<contenttweaker:engraved_lapotronic_chip>,<ic2:itemmisc:258>,<contenttweaker:engraved_lapotronic_chip>],
    [<ore:circuitAdvanced>,<ore:plateTungsten>,<ore:circuitAdvanced>]
], <liquid: glass> * 200);

SliceNSplice.addRecipe(<contenttweaker:data_orb>, [
    <contenttweaker:data_storage_circuit>, <contenttweaker:data_control_circuit>, <contenttweaker:data_storage_circuit>,
    <contenttweaker:data_storage_circuit>,<contenttweaker:energy_flow_circuit>,<contenttweaker:data_storage_circuit>
], 400000);

ThermionicFabricator.addCast(<contenttweaker:lapotronic_energy_orb>, [
    [<ic2:itembatlamacrystal>,<ic2:itembatlamacrystal>,<ic2:itembatlamacrystal>],
    [<ic2:itembatlamacrystal>,<ic2:itemmisc:258>,<ic2:itembatlamacrystal>],
    [<ic2:itembatlamacrystal>,<ic2:itembatlamacrystal>,<ic2:itembatlamacrystal>]
], <liquid: glass> * 200);

var mapPlutonium as int[IItemStack] = {
    <ic2:itemmisc:553> : 3,
    <ic2:itemmisc:551> : 4,
    <ic2:itemmisc:550> : 5,
    <ic2:itemmisc:552> : 6,
    <ic2:itemmisc:555> : 7,
    <ic2:itemmisc:554> : 8,
};

for item, mul in mapPlutonium {
    Extractor.addRecipe(<contenttweaker:small_plutonium> * (mul * 8), item);
}

var mapStoneboard as int[IIngredient][string] = {
    "top" : {
        <randomthings:ingredient:8> : 3,
        <ic2:itemmisc:260> : 6,
        <woot:factorybase> : 9
    },
    "mid" : {
        <ore:slimeball> : 1,
        <ore:itemRawRubber> : 2,
        <ore:slimeballPink> : 3
    },
    "bot" : {
        <tconstruct:pattern> : 1,
        <contenttweaker:clay_plate> : 2
    },
};

for a, amount_a in mapStoneboard["top"] {
    for b, amount_b in mapStoneboard["mid"] {
        for c, amount_c in mapStoneboard["bot"] {
            var amount as int = amount_a * amount_b * amount_c;
            recipes.addShaped(<contenttweaker:stone_board> * amount, [
                [null,a,null],
                [<contenttweaker:small_stone>,b,<contenttweaker:small_stone>],
                [null,c,null]
            ]);
        }
    }
}

recipes.addShapeless(<contenttweaker:coke_pellet>*16,[<ore:fuelCoke>]);
