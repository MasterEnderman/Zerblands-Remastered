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

import mods.actuallyadditions.Empowerer;
import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;
import mods.enderio.AlloySmelter;
import mods.ic2.Compressor;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.MetalPress;
import mods.jei.JEI;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import mods.tconstruct.Melting;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_atomic;

JEI.removeAndHide(<tconstruct:throwball:1>);
JEI.addItem(<tconstruct:slime_boots:3>);

furnace.remove(<tconstruct:seared:4>);
furnace.remove(<tconstruct:brownstone:4>);

Drying.addRecipe(<tconstruct:materials:1>, <contenttweaker:pressed_mud>, 600);

Drying.removeRecipe(<tconstruct:materials:2>);
Drying.addRecipe(<tconstruct:materials:2>, <contenttweaker:pressed_clay>, 600);

Compressor.addRecipe(<tconstruct:spaghetti>,<actuallyadditions:item_food:7>);

furnace.remove(<tconstruct:ingots>);
furnace.remove(<tconstruct:ingots:1>);

calc_atomic(<tconstruct:materials:50>,<minecraft:skull:3>,<ore:blockEnchantedMetal>,<quantumflux:craftingpiece:1>);

InductionSmelter.removeRecipe(<tconstruct:ingots:0>, <tconstruct:ingots:1>);
Alloy.removeRecipe(<liquid:manyullyn>);
Alloy.addRecipe(<liquid:manyullyn> * 288, [<liquid:ardite> * 144, <liquid:cobalt> * 144, <liquid:platinum> * 144]);
AlloySmelter.addRecipe(<tconstruct:ingots:2> * 2, [<ore:ingotCobalt>, <ore:ingotArdite>, <ore:ingotPlatinum>], 10000);
ArcFurnace.removeRecipe(<tconstruct:ingots:2>);
ArcFurnace.addRecipe(<tconstruct:ingots:2> * 2, <ore:ingotCobalt>, null, 100, 512, [<ore:ingotArdite>, <ore:ingotPlatinum>]);

Melting.removeRecipe(<liquid:stone>);
Melting.addRecipe(<liquid:stone>*288, <tconstruct:seared>, 500);
Melting.addRecipe(<liquid:stone>*144, <tconstruct:soil>, 500);
Melting.addRecipe(<liquid:stone>*72, <tconstruct:materials>, 500);
Melting.addRecipe(<liquid:stone>*144*7, <tconstruct:casting>, 500);
Melting.addRecipe(<liquid:stone>*144*7, <tconstruct:casting:1>, 500);
Melting.addRecipe(<liquid:stone>*240, <tconstruct:channel>, 500);
Melting.addRecipe(<liquid:stone>*144*3, <tconstruct:faucet>, 500);
Melting.addRecipe(<liquid:stone>*144*6, <tconstruct:smeltery_io>, 500);

furnace.remove(<tconstruct:materials>);
CokeOven.addRecipe(<tconstruct:materials>, 0, <tconstruct:soil>, 200);

Melting.addRecipe(<liquid:dirt>*36, <earthworks:item_mud>, 500);
Melting.addRecipe(<liquid:dirt>*144, <earthworks:block_mud>, 500);

Melting.removeEntityMelting(<entity:minecraft:villager>);
Melting.removeEntityMelting(<entity:minecraft:horse>);

recipes.remove(<tconstruct:throwball>);
Transposer.addFillRecipe(<tconstruct:throwball>, <minecraft:snowball>, <liquid:glowstone> * 50, 400);

recipes.remove(<tconstruct:materials:18>);
ManaInfusion.addInfusion(<tconstruct:materials:18>, <ic2:itemmisc:350>, 1000);
RuneAltar.addRecipe(<tconstruct:materials:19>,[<tconstruct:materials:18>, <randomthings:imbue:2>, <botania:grassseeds>], 2000);

Empowerer.addRecipe(<tconstruct:slime_sapling:0>, <minecraft:deadbush>, <tconstruct:slime_congealed>, <tconstruct:slime_congealed:1>, <tconstruct:slime_congealed>, <tconstruct:slime_congealed:1>, 4000, 1200, [0.7, 0.6, 0.1]);
Empowerer.addRecipe(<tconstruct:slime_sapling:1>, <minecraft:deadbush>, <tconstruct:slime_congealed>, <tconstruct:slime_congealed:2>, <tconstruct:slime_congealed>, <tconstruct:slime_congealed:2>, 4000, 1200, [0.8, 0.2, 0.8]);
Empowerer.addRecipe(<tconstruct:slime_sapling:2>, <minecraft:deadbush>, <tconstruct:slime_congealed:3>, <tconstruct:slime_congealed:4>, <tconstruct:slime_congealed:3>, <tconstruct:slime_congealed:4>, 4000, 1200, [0.4, 0.1, 0.4]);

recipes.remove(<tconstruct:materials:16>);
Empowerer.addRecipe(<tconstruct:materials:16>, <actuallyadditions:item_crystal_empowered:4>, <tconstruct:materials:15>, <tconstruct:materials:15>, <tconstruct:materials:15>, <tconstruct:materials:15>, 2000, 1200, [0.9,0.9,0.2]);

recipes.remove(<tconstruct:stone_stick>);
MetalPress.addRecipe(<tconstruct:stone_stick>*2, <ore:cobblestone>, <immersiveengineering:mold:2>, 64);
MetalPress.addRecipe(<tconstruct:stone_stick>*4, <ore:stone>, <immersiveengineering:mold:2>, 64);

Melting.removeRecipe(<liquid:dirt>, <earthworks:item_adobe>);
Melting.removeRecipe(<liquid:starmetal>, <astralsorcery:blockcustomore:1>);

Crucible.addRecipe(<liquid:stone> * 144, <tconstruct:soil>, 2000);

Melting.removeRecipe(<liquid:glowstone>);
Melting.removeRecipe(<liquid:redstone>);
Melting.removeRecipe(<liquid:ender>);
Casting.removeTableRecipe(<minecraft:ender_pearl>);

recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.remove(<tconstruct:tinker_tank_controller>);
Casting.addBasinRecipe(<tconstruct:tinker_tank_controller>, <extrautils2:drum>, <liquid:stone>, 576, true, 100);

recipes.remove(<tconstruct:materials:15>);
Casting.addTableRecipe(<tconstruct:materials:15>, <forestry:crafting_material:3>, <liquid:gold>, 288, true, 100);

recipes.remove(<tconstruct:brownstone:1>);
calc_basic(<tconstruct:brownstone:1>,<minecraft:redstone>,<chisel:brownstone>);

recipes.remove(<tconstruct:firewood:1>);
calc_basic(<tconstruct:firewood:1>,<tconstruct:firewood>,<embers:dust_ember>);
calc_basic(<tconstruct:firewood:1>,<ore:plankTreatedWood>,<randomthings:imbue>);

recipes.remove(<tconstruct:pattern>);
recipes.addShaped(<tconstruct:pattern> * 2,[
	[<ore:stickWood>,<ore:plankWood>],
	[<ore:plankWood>,<ore:stickWood>]
]);
recipes.addShaped(<tconstruct:pattern> * 2,[
	[<ore:plankWood>,<ore:stickWood>],
	[<ore:stickWood>,<ore:plankWood>]
]);
recipes.addShaped(<tconstruct:pattern> * 4,[
	[<ore:plankTreatedWood>,<ore:stickTreatedWood>],
	[<ore:stickTreatedWood>,<ore:plankTreatedWood>]
]);
recipes.addShaped(<tconstruct:pattern> * 4,[
	[<ore:stickTreatedWood>,<ore:plankTreatedWood>],
    [<ore:plankTreatedWood>,<ore:stickTreatedWood>]
]);

recipes.remove(<tconstruct:soil>);
recipes.addShaped(<tconstruct:soil> * 2, [
	[<embers:blend_caminite>,<contenttweaker:gravel_dust>],
	[<contenttweaker:gravel_dust>,<embers:blend_caminite>]
]);
recipes.addShaped(<tconstruct:soil> * 2, [
	[<contenttweaker:gravel_dust>,<embers:blend_caminite>],
	[<embers:blend_caminite>,<contenttweaker:gravel_dust>]
]);

recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped(<tconstruct:smeltery_controller>, [
	[<tconstruct:materials>,<immersiveengineering:stone_decoration>,<tconstruct:materials>],
	[<immersiveengineering:stone_decoration>,<thermalfoundation:material:23>,<immersiveengineering:stone_decoration>],
	[<tconstruct:materials>,<immersiveengineering:stone_decoration>,<tconstruct:materials>]
]);

recipes.remove(<tconstruct:soil:3>);
recipes.addShaped(<tconstruct:soil:3>, [
	[<minecraft:dye:15>,<minecraft:rotten_flesh>,<minecraft:dye:15>],
	[<minecraft:rotten_flesh>,<extrautils2:compresseddirt>,<minecraft:rotten_flesh>],
	[<minecraft:dye:15>,<minecraft:rotten_flesh>,<minecraft:dye:15>]
]);
recipes.addShaped(<tconstruct:soil:3>, [
	[<minecraft:dye:15>,<minecraft:rotten_flesh>,<minecraft:dye:15>],
	[<minecraft:rotten_flesh>,<earthworks:block_mud>,<minecraft:rotten_flesh>],
	[<minecraft:dye:15>,<minecraft:rotten_flesh>,<minecraft:dye:15>]
]);

recipes.remove(<tconstruct:wooden_hopper>);
recipes.addShaped(<tconstruct:wooden_hopper>, [
	[<ore:plankWood>,<ore:gearWood>,<ore:plankWood>],
	[<ore:stickTreatedWood>,<minecraft:chest>,<ore:stickTreatedWood>],
	[null,<ore:plankWood>,null]
]);
recipes.addShaped(<tconstruct:wooden_hopper>, [
	[<ore:plankWood>,<ore:gearWood>,<ore:plankWood>],
	[<bibliocraft:framingboard>,<minecraft:chest>,<bibliocraft:framingboard>],
	[null,<ore:plankWood>,null]
]);

recipes.remove(<tconstruct:materials:14>);
recipes.addShaped(<tconstruct:materials:14>, [
    [<enderio:block_reinforced_obsidian>,<embers:plate_dawnstone>,<enderio:block_reinforced_obsidian>],
    [<embers:plate_dawnstone>,<ore:cast>,<embers:plate_dawnstone>],
    [<enderio:block_reinforced_obsidian>,<embers:plate_dawnstone>,<enderio:block_reinforced_obsidian>]
]);

val slimebo = [
	<tconstruct:slime_boots>,
	<tconstruct:slime_boots:1>,
	<tconstruct:slime_boots:2>,
	<tconstruct:slime_boots:3>,
	<tconstruct:slime_boots:4>,
	<tconstruct:slime_boots:5>
] as IItemStack[];

val slimebl = [
	<minecraft:slime>,
	<tconstruct:slime:1>,
	<tconstruct:slime:2>,
	<tconstruct:slime:3>,
	<tconstruct:slime:4>,
	<tconstruct:slime:5>
] as IItemStack[];

for i, item in slimebo {
	recipes.remove(slimebo[i]);
	recipes.addShaped(slimebo[i],[[slimebl[i],<minecraft:diamond_boots>,slimebl[i]],[slimebl[i],null,slimebl[i]]]);
}

val bricks = [
    <minecraft:brick>,
    <minecraft:netherbrick>,
    <earthworks:item_adobe>,
    <tconstruct:materials>,
    <tconstruct:materials:1>,
    <tconstruct:materials:2>,
] as IItemStack[];

Casting.removeTableRecipe(<tconstruct:cast_custom:0>);

for item in bricks {
	Casting.addTableRecipe(<tconstruct:cast_custom:0>, item, <liquid:gold>, 288, true);
	Casting.addTableRecipe(<tconstruct:cast_custom:0>, item, <liquid:brass>, 144, true);
	Casting.addTableRecipe(<tconstruct:cast_custom:0>, item, <liquid:alubrass>, 144, true);
}

var mapBlood as int[IItemStack] = {
    <minecraft:porkchop> : 200,
    <minecraft:beef> : 200,
    <minecraft:chicken> : 200,
    <minecraft:rabbit> : 200,
    <minecraft:mutton> : 200,
    <harvestcraft:turkeyrawitem> : 200,
    <harvestcraft:venisonrawitem> : 200,
    <harvestcraft:duckrawitem> : 200,
    <minecraft:rotten_flesh> : 250,
	<harvestcraft:grubitem> : 100,
	<cannibalism:villagerflesh> : 800,
	<cannibalism:witchflesh> : 1000,
};

Melting.removeRecipe(<liquid:blood>);

for item, amount in mapBlood {
    Melting.addRecipe(<liquid:blood> * amount, item, 500);
}

Melting.addRecipe(<liquid:blood> * 500, <ore:listAllFlesh>, 500);

for i in 1 to 11 {
    var melt_brick as IItemStack = <tconstruct:seared>.definition.makeStack(i);
    Melting.addRecipe(<liquid:stone> * 288, melt_brick, 500);
}

var mapTorch as IIngredient[][][][int] = {
    2 : [
        [
            [<actuallyadditions:item_misc:10>],
            [<ore:rodStone>]
        ],
        [
            [<actuallyadditions:item_misc:11>],
            [<ore:rodStone>]
        ]
    ],
    3 : [
        [
            [<forestry:beeswax>],
            [<forestry:beeswax>],
            [<ore:rodStone>]
        ],
        [
            [<harvestcraft:beeswaxitem>],
            [<harvestcraft:beeswaxitem>],
            [<ore:rodStone>]
        ],
        [
            [<ic2:itemharz>],
            [<ic2:itemharz>],
            [<ore:rodStone>]
        ]
    ],
    4 : [
        [
            [<actuallyadditions:item_misc:10>],
            [<contenttweaker:cordage_fiber>],
            [<ore:rodStone>]
        ],
        [
            [<actuallyadditions:item_misc:11>],
            [<contenttweaker:cordage_fiber>],
            [<ore:rodStone>]
        ]
    ],
    8 : [
        [
            [<thermalfoundation:material:832>],
            [<ore:rodStone>]
        ],
        [
            [<thermalfoundation:material:833>],
            [<ore:rodStone>]
        ],
        [
            [<evilcraft:blood_waxed_coal>],
            [<ore:rodStone>]
        ],
        [
            [<abyssalcraft:charcoal>],
            [<ore:rodStone>]
        ]
    ],
    12 : [
        [
            [null,<forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}),null],
            [<harvestcraft:wovencottonitem>,<harvestcraft:wovencottonitem>,<harvestcraft:wovencottonitem>],
            [<ore:rodStone>,<ore:rodStone>,<ore:rodStone>]
        ]
    ]
};

recipes.remove(<tconstruct:stone_torch>);

for amount, recipe_map in mapTorch {
    for entry in recipe_map {
        recipes.addShaped(<tconstruct:stone_torch> * amount, entry);
    }
}
