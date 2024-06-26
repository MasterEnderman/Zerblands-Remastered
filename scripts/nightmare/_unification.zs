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

import mods.astralsorcery.Grindstone;
import mods.enderio.AlloySmelter;
import mods.enderio.SagMill;
import mods.extrautils2.Crusher as XUCrusher;
import mods.jei.JEI;
import mods.ic2.Macerator;
import mods.ic2.Sawmill as Saw;
import mods.immersiveengineering.AlloySmelter as Kiln;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Sawmill;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

function simpleAlloy(output as IItemStack, input1 as IItemStack, input2 as IItemStack) {
    var recipe as IItemStack[] = [input1,input2];
    recipes.remove(output);
    Kiln.addRecipe(output, input1, input2, 200);
    AlloySmelter.addRecipe(output, recipe, 5000);
    InductionSmelter.addRecipe(output, input1, input2, 2500);
}

JEI.removeAndHide(<appliedenergistics2:material:40>);
JEI.removeAndHide(<enderio:item_material:9>);
JEI.removeAndHide(<enderio:item_material:10>);

recipes.remove(<ore:gearWood>);
recipes.remove(<ore:gearStone>);
recipes.remove(<ore:rodStone>);

recipes.remove(<ore:gearElectrumFlux>);
recipes.remove(<ore:gearGelidEnderium>);

recipes.remove(<ore:plateIron>);
recipes.remove(<ore:plateGold>);
recipes.remove(<ore:plateCopper>);
recipes.remove(<ore:plateDawnstone>);
recipes.remove(<ore:plateGold>);
recipes.remove(<ore:plateSilver>);
recipes.remove(<ore:plateLead>);
recipes.remove(<ore:plateAluminum>);
recipes.remove(<ore:plateNickel>);
recipes.remove(<ore:plateSteel>);
recipes.remove(<ore:plateElectrum>);
recipes.remove(<ore:plateConstantan>);
recipes.remove(<ore:plateUranium>);

recipes.remove(<ore:dustElectrumFlux>);
recipes.remove(<ore:dustElectrum>);
recipes.remove(<ore:dustInvar>);
recipes.remove(<ore:dustBronze>);
recipes.remove(<ore:dustConstantan>);
recipes.remove(<ore:dustSignalum>);
recipes.remove(<ore:dustLumium>);
recipes.remove(<ore:dustEnderium>);

furnace.remove(<ore:ingotUranium>);
furnace.addRecipe(<ic2:itemmisc:180>, <ore:dustUranium>);

furnace.remove(<tconstruct:ingots>, <tconstruct:ore>);
furnace.remove(<tconstruct:ingots:1>, <tconstruct:ore:1>);

ArcFurnace.removeRecipe(<thermalfoundation:material:160>);
ArcFurnace.addRecipe(<thermalfoundation:material:160>,<contenttweaker:reinforcediron_ingot>,<thermalfoundation:material:864>, 400, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:163>,<thermalfoundation:material:129>,null, 400, 512, [<thermalfoundation:material:128>*3]);

InductionSmelter.removeRecipe(<thermalfoundation:material:769>*4,<thermalfoundation:material>);
InductionSmelter.removeRecipe(<thermalfoundation:material:769>*4,<minecraft:iron_ingot>);
InductionSmelter.removeRecipe(<thermalfoundation:material:802>,<thermalfoundation:material>);
InductionSmelter.removeRecipe(<thermalfoundation:material:802>,<minecraft:iron_ingot>);
InductionSmelter.removeRecipe(<thermalfoundation:material:768>*4,<thermalfoundation:material>);
InductionSmelter.removeRecipe(<thermalfoundation:material:768>*4,<minecraft:iron_ingot>);

InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:golden_rail>);
InductionSmelter.removeRecipe(<minecraft:sand>,<minecraft:rail>);

Casting.removeTableRecipe(<thermalfoundation:material:23>);
Casting.addTableRecipe(<thermalfoundation:material:23>,<thermalfoundation:material:22>,<liquid:stone>,288,true,100);

recipes.addShaped("gear_wood", <thermalfoundation:material:22>, [
    [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>],
    [<ore:stickTreatedWood>,<ore:plankTreatedWood>,<ore:stickTreatedWood>],
    [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>]
]);

Compactor.removeGearRecipe(<evilcraft:dark_gem>);

Grindstone.addRecipe(<appliedenergistics2:material>, <appliedenergistics2:material:2>, 0.1f);

Macerator.addRecipe(<enderio:item_material:32>, <minecraft:dye:4>);
Macerator.addRecipe(findFirstItemFromMod("actuallyadditions","dust","diamond"), findFirstItemFromMod("minecraft","gem","diamond"));

var mapSimpleAlloy as IItemStack[][IItemStack] = {
    <earthworks:item_adobe> : [<embers:blend_caminite>,<earthworks:item_mud>],
    <contenttweaker:black_iron> : [<ic2:itemmisc:53>,<actuallyadditions:item_dust:7>],
    <contenttweaker:basic_blade> : [<contenttweaker:bone_shard>,<contenttweaker:flint_shard>],
    <enderio:item_alloy_endergy_ingot> : [<earthworks:item_adobe>,<tconstruct:materials>],
    <appliedenergistics2:part:140> * 4 : [<ic2:itemcable:9>,<appliedenergistics2:material:3>],
    <appliedenergistics2:part:16> : [<appliedenergistics2:part:140>,<appliedenergistics2:material:12>],
    <minecraft:netherbrick> : [<earthworks:item_adobe>,<ic2:itemmisc:11>],
    <contenttweaker:reinforcediron_ingot> : [<ic2:itemmisc:53>,<sonarcore:reinforcedstoneblock>],
    <evilcraft:dark_spike> : [findFirstItemFromMod("immersiveengineering","stick","iron"),<evilcraft:dark_gem_crushed>],
    <rs_ctr:wire_e> : [<rs_ctr:wire>,<minecraft:gold_nugget>],
    <rs_ctr:block_wire> : [<rs_ctr:wire>,<cd4017be_lib:m:402>],
    <rs_ctr:wireless> : [<rs_ctr:wire>,<rftools:dimensional_shard>],
    <enderio:item_alloy_ingot:5> : [<ic2:itemmisc:53>,<extrautils2:endershard>],
    findFirstItemFromMod("contenttweaker","ingot","batteryAlloy") * 5 : [findFirstItemFromMod("thermalfoundation","ingot","lead") * 4,findFirstItemFromMod("contenttweaker","ingot","antimony")],
    findFirstItemFromMod("contenttweaker","ingot","solderingAlloy") * 3 : [findFirstItemFromMod("thermalfoundation","ingot","tin") * 2,findFirstItemFromMod("thermalfoundation","ingot","lead")],
    findFirstItemFromMod("contenttweaker","ingot","redAlloy") : [findFirstItemFromMod("thermalfoundation","ingot","aluminum"),<minecraft:redstone> * 4],
    <immersivepetroleum:stone_decoration> : [<immersiveengineering:stone_decoration:5>, <thermalfoundation:material:892>],
    <quantumflux:darkstone> : [<ic2:blockutility:2>,<minecraft:concrete:15>],
    <ic2:itemmisc:261> : [findFirstItemFromMod("contenttweaker","ingot","ferromagneticAlloy"),<ic2:itemmisc:14> * 8],
    <randomthings:spectreanchor> : [<embers:aspectus_iron>,<randomthings:ingredient:3>*2],
    <thermalfoundation:material:657> : [<architecturecraft:sawblade>, findFirstItemFromMod("thermalfoundation","ingot","steel")],
    <thermalfoundation:material:892> : [<minecraft:flint>,<thermalfoundation:material:833>],
};

ArcFurnace.removeRecipe(findFirstItemFromMod("contenttweaker","ingot","redAlloy"));
ArcFurnace.removeRecipe(findFirstItemFromMod("thermalfoundation","ingot","Bronze"));
Kiln.removeRecipe(findFirstItemFromMod("contenttweaker","ingot","redAlloy"));
furnace.remove(<minecraft:netherbrick>);
recipes.remove(<immersivepetroleum:stone_decoration>);
recipes.remove(<appliedenergistics2:part:140>);

for item, recipe in mapSimpleAlloy {
    var input1 as IItemStack = recipe[0];
    var input2 as IItemStack = recipe[1];

    simpleAlloy(item, input1, input2);
}

simpleAlloy(findFirstItemFromMod("contenttweaker","ingot","batteryAlloy") * 5,findFirstItemFromMod("thermalfoundation","dust","lead") * 4,findFirstItemFromMod("contenttweaker","dust","antimony"));
simpleAlloy(findFirstItemFromMod("contenttweaker","ingot","solderingAlloy") * 3,findFirstItemFromMod("thermalfoundation","dust","tin") * 2,findFirstItemFromMod("thermalfoundation","dust","lead"));
simpleAlloy(findFirstItemFromMod("contenttweaker","ingot","redAlloy"),findFirstItemFromMod("thermalfoundation","dust","aluminum"),<minecraft:redstone> * 4);

ArcFurnace.addRecipe(findFirstItemFromMod("thermalfoundation","ingot","Bronze") * 4, <ore:ingotTin>, null, 100, 512, [<ore:ingotCopper> * 3]);
ArcFurnace.addRecipe(findFirstItemFromMod("thermalfoundation","ingot","Bronze") * 4, <ore:ingotTin>, null, 100, 512, [<ore:dustCopper> * 3]);
ArcFurnace.addRecipe(findFirstItemFromMod("thermalfoundation","ingot","Bronze") * 4, <ore:dustTin>, null, 100, 512, [<ore:dustCopper> * 3]);
ArcFurnace.addRecipe(findFirstItemFromMod("thermalfoundation","ingot","Bronze") * 1, <ore:dustBronze>, null, 100, 256);

var mapSimpleCrush as IItemStack[IItemStack] = {
    <enderio:item_material:22> : <earthworks:item_adobe>,
    <contenttweaker:brick_dust> : <minecraft:brick>,
    <contenttweaker:brick_dust> * 4 : <minecraft:brick_block>,
    <contenttweaker:soil> * 8 : <minecraft:dirt>,
    <contenttweaker:crushed_nether_wart> : <minecraft:nether_wart>,
    <contenttweaker:crushed_nether_wart> * 9 : <minecraft:nether_wart_block>,
    <contenttweaker:small_stone> : <botania:manaresource:21>,
    <enderio:item_material:69> * 16 : <enderio:item_material>,
    <enderio:item_material:2> * 32 : <enderio:item_material:1>,
    <enderio:item_material:68> * 64 : <enderio:item_material:54>,
    <immersiveengineering:material:17> : <thermalfoundation:material:802>,
    <immersiveengineering:material:17> * 9 : <thermalfoundation:storage_resource:1>,
    <pressure:tank_wall> * 16 : <enderio:block_tank:1>,
    <pressure:tank_wall> * 2 : <enderio:block_tank>,
    <fluxnetworks:fluxcore> * 8 : <enderio:block_transceiver>,
    <bigreactors:reactorcasingcores> * 8 : <ic2:blockchambers>,
    <bigreactors:turbinehousingcores> * 8 : <ic2:blockgenerator:7>,
    <contenttweaker:flawless_diamond_shard> * 6 : <contenttweaker:flawless_block>,
    <woot:soulsanddust> * 2 : <minecraft:soul_sand>,
    <contenttweaker:end_stone_dust> : <minecraft:end_stone>,
    <earthworks:item_chalk> * 4 : <earthworks:block_chalk>,
    <appliedenergistics2:material:8> : <appliedenergistics2:material:7>,
    <ic2:itemmisc:12> : <minecraft:coal:1>,
    <enderio:item_capacitor_grainy> * 4 : <enderio:item_basic_capacitor:3>,
    <enderio:item_capacitor_grainy> * 6 : <enderio:item_basic_capacitor:4>,
    <minecraft:fire_charge> * 16 : <randomthings:lavacharm>,
    <embers:dust_ember> : <embers:crystal_ember>,
};

Crusher.removeRecipe(<immersiveengineering:material:17>);
Crusher.removeRecipe(<minecraft:sand>);
Crusher.removeRecipe(<minecraft:clay_ball>);
recipes.remove(<enderio:item_material:68>);
recipes.remove(<enderio:item_material:69>);
recipes.remove(<enderio:item_material:2>);
recipes.remove(<bigreactors:reactorcasingcores>);
recipes.remove(<bigreactors:turbinehousingcores>);
recipes.remove(<woot:soulsanddust>);

for output, input in mapSimpleCrush {
    recipes.remove(output);
    Macerator.addRecipe(output, input);
    SagMill.addRecipe([output], [100], input, "NONE", 1000);
    Pulverizer.addRecipe(output, input, 2000);
    Crusher.addRecipe(output, input, 2048);
    XUCrusher.add(output, input);
}

SagMill.addRecipe([findFirstItemFromMod("contenttweaker","dust","apatite")], [100], <forestry:apatite>, "NONE", 1000);
SagMill.addRecipe([<redstonearsenal:material>], [100], <redstonearsenal:material:32>, "NONE", 1000);
SagMill.addRecipe([<redstonerepository:material>], [100], <redstonerepository:material:1>, "NONE", 1000);
SagMill.addRecipe([<appliedenergistics2:material:45>], [100], <appliedenergistics2:sky_stone_block>, "NONE", 1000);

Crusher.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material>, 2048);
XUCrusher.add(<appliedenergistics2:material:2>, <appliedenergistics2:material>);

Sawmill.addRecipe(<bibliocraft:framingsheet> * 2, <ore:slabWood>.firstItem, 1500);
Saw.addRecipe(<bibliocraft:framingsheet> * 2, <ore:slabWood>);

Sawmill.addRecipe(<bibliocraft:framingsheet> * 4, <ore:slabTreatedWood>.firstItem, 1500);
Saw.addRecipe(<bibliocraft:framingsheet> * 4, <ore:slabTreatedWood>);

Sawmill.addRecipe(<bibliocraft:framingboard>  * 2, <bibliocraft:framingsheet>, 1500);
Saw.addRecipe(<bibliocraft:framingboard>  * 2, <bibliocraft:framingsheet>);

Crusher.addRecipe(<enderio:item_material:30> * 2, <tconstruct:ore:1>, 2048);
Crusher.addRecipe(<enderio:item_material:31> * 2, <tconstruct:ore>, 2048);

Crusher.addRecipe(<actuallyadditions:item_dust:7> * 2, <actuallyadditions:block_misc:3>, 2048);

Macerator.addRecipe(<appliedenergistics2:material:3>, <minecraft:quartz>);

var mapWood as IItemStack[IItemStack] = {
    // minecraft
    <minecraft:log> : <minecraft:planks>,
    <minecraft:log:1> : <minecraft:planks:1>,
    <minecraft:log:2> : <minecraft:planks:2>,
    <minecraft:log:3> : <minecraft:planks:3>,
    <minecraft:log2> : <minecraft:planks:4>,
    <minecraft:log2:1> : <minecraft:planks:5>,
    // botania
    <botania:livingwood> : <botania:livingwood:1>,
    <botania:dreamwood> : <botania:dreamwood:1>,
    // astral sorcery
    <astralsorcery:blockinfusedwood> : <astralsorcery:blockinfusedwood:1>,
    // evilcraft
    <evilcraft:undead_log> : <evilcraft:undead_plank>,
    // random things
    <randomthings:spectrelog> : <randomthings:spectreplank>,
    // blood arsenal
    <bloodarsenal:blood_infused_wooden_log> : <bloodarsenal:blood_infused_wooden_planks>,
    // abyssalcraft
    <abyssalcraft:dreadlog> : <abyssalcraft:dreadplanks>,
    <abyssalcraft:dltlog> : <abyssalcraft:dltplank>,
    // integrated dynamics
    <integrateddynamics:menril_log> : <integrateddynamics:menril_planks>,
    // foretry
    <forestry:logs.0> : <forestry:planks.0>,
    <forestry:logs.0:1> : <forestry:planks.0:1>,
    <forestry:logs.0:2> : <forestry:planks.0:2>,
    <forestry:logs.0:3> : <forestry:planks.0:3>,
    <forestry:logs.1> : <forestry:planks.0:4>,
    <forestry:logs.1:1> : <forestry:planks.0:5>,
    <forestry:logs.1:2> : <forestry:planks.0:6>,
    <forestry:logs.1:3> : <forestry:planks.0:7>,
    <forestry:logs.2> : <forestry:planks.0:8>,
    <forestry:logs.2:1> : <forestry:planks.0:9>,
    <forestry:logs.2:2> : <forestry:planks.0:10>,
    <forestry:logs.2:3> : <forestry:planks.0:11>,
    <forestry:logs.3> : <forestry:planks.0:12>,
    <forestry:logs.3:1> : <forestry:planks.0:13>,
    <forestry:logs.3:2> : <forestry:planks.0:14>,
    <forestry:logs.3:3> : <forestry:planks.0:15>,
    <forestry:logs.4> : <forestry:planks.1>,
    <forestry:logs.4:1> : <forestry:planks.1:1>,
    <forestry:logs.4:2> : <forestry:planks.1:2>,
    <forestry:logs.4:3> : <forestry:planks.1:3>,
    <forestry:logs.5> : <forestry:planks.1:4>,
    <forestry:logs.5:1> : <forestry:planks.1:5>,
    <forestry:logs.5:2> : <forestry:planks.1:6>,
    <forestry:logs.5:3> : <forestry:planks.1:7>,
    <forestry:logs.6> : <forestry:planks.1:8>,
    <forestry:logs.6:1> : <forestry:planks.1:9>,
    <forestry:logs.6:2> : <forestry:planks.1:10>,
    <forestry:logs.6:3> : <forestry:planks.1:11>,
    <forestry:logs.7> : <forestry:planks.1:12>,
    <forestry:logs.fireproof.0> : <forestry:planks.fireproof.0>,
    <forestry:logs.fireproof.0:1> : <forestry:planks.fireproof.0:1>,
    <forestry:logs.fireproof.0:2> : <forestry:planks.fireproof.0:2>,
    <forestry:logs.fireproof.0:3> : <forestry:planks.fireproof.0:3>,
    <forestry:logs.fireproof.1> : <forestry:planks.fireproof.0:4>,
    <forestry:logs.fireproof.1:1> : <forestry:planks.fireproof.0:5>,
    <forestry:logs.fireproof.1:2> : <forestry:planks.fireproof.0:6>,
    <forestry:logs.fireproof.1:3> : <forestry:planks.fireproof.0:7>,
    <forestry:logs.fireproof.2> : <forestry:planks.fireproof.0:8>,
    <forestry:logs.fireproof.2:1> : <forestry:planks.fireproof.0:9>,
    <forestry:logs.fireproof.2:2> : <forestry:planks.fireproof.0:10>,
    <forestry:logs.fireproof.2:3> : <forestry:planks.fireproof.0:11>,
    <forestry:logs.fireproof.3> : <forestry:planks.fireproof.0:12>,
    <forestry:logs.fireproof.3:1> : <forestry:planks.fireproof.0:13>,
    <forestry:logs.fireproof.3:2> : <forestry:planks.fireproof.0:14>,
    <forestry:logs.fireproof.3:3> : <forestry:planks.fireproof.0:15>,
    <forestry:logs.fireproof.4> : <forestry:planks.fireproof.1>,
    <forestry:logs.fireproof.4:1> : <forestry:planks.fireproof.1:1>,
    <forestry:logs.fireproof.4:2> : <forestry:planks.fireproof.1:2>,
    <forestry:logs.fireproof.4:3> : <forestry:planks.fireproof.1:3>,
    <forestry:logs.fireproof.5> : <forestry:planks.fireproof.1:4>,
    <forestry:logs.fireproof.5:1> : <forestry:planks.fireproof.1:5>,
    <forestry:logs.fireproof.5:2> : <forestry:planks.fireproof.1:6>,
    <forestry:logs.fireproof.5:3> : <forestry:planks.fireproof.1:7>,
    <forestry:logs.fireproof.6> : <forestry:planks.fireproof.1:8>,
    <forestry:logs.fireproof.6:1> : <forestry:planks.fireproof.1:9>,
    <forestry:logs.fireproof.6:2> : <forestry:planks.fireproof.1:10>,
    <forestry:logs.fireproof.6:3> : <forestry:planks.fireproof.1:11>,
    <forestry:logs.fireproof.7> : <forestry:planks.fireproof.1:12>,
    <forestry:logs.vanilla.fireproof.0> : <forestry:planks.vanilla.fireproof.0>,
    <forestry:logs.vanilla.fireproof.0:1> : <forestry:planks.vanilla.fireproof.0:1>,
    <forestry:logs.vanilla.fireproof.0:2> : <forestry:planks.vanilla.fireproof.0:2>,
    <forestry:logs.vanilla.fireproof.0:3> : <forestry:planks.vanilla.fireproof.0:3>,
    <forestry:logs.vanilla.fireproof.1> : <forestry:planks.vanilla.fireproof.0:4>,
    <forestry:logs.vanilla.fireproof.1:1> : <forestry:planks.vanilla.fireproof.0:5>
};

for log, plank in mapWood {
    recipes.remove(plank);
    recipes.addShapeless(plank * 2, [log]);
    recipes.addShaped(plank * 3, [
        [<earthworks:tool_saw:*>.transformDamage(3)],
        [log]
    ]);
    Sawmill.addRecipe(<minecraft:stick>*4, plank, 400, <thermalfoundation:material:800>, 10);
}

recipes.remove(<ore:stickWood>);
recipes.addShaped(<minecraft:stick> * 2, [
    [<ore:plankWood>],
    [<ore:plankWood>]
]);
recipes.addShaped(<minecraft:stick> * 4, [
    [<earthworks:tool_saw:*>.transformDamage(3)],
    [<ore:plankWood>],
    [<ore:plankWood>]
]);
/*
    reduced to 4 to be more in line with the deault log -> plank -> stick chain
    1 log -> 2 planks -> 2 sticks
    2 log -> 4 sticks
    1 log + saw -> 3 planks -> 6 sticks
    2 log + saw -> 6 planks -> 12 sticks
    2 log + saw -> 12 sticks
*/
recipes.addShaped(<minecraft:stick> * 4, [
    [<ore:logWood>],
    [<ore:logWood>]
]);
recipes.addShaped(<minecraft:stick> * 12, [
    [<earthworks:tool_saw:*>.transformDamage(6)],
    [<ore:logWood>],
    [<ore:logWood>]
]);

recipes.remove(<immersiveengineering:material>);
Sawmill.addRecipe(<immersiveengineering:material>*4, <immersiveengineering:treated_wood>, 400);
Saw.addRecipe(<immersiveengineering:material> * 6, <ore:plankTreatedWood>);
recipes.addShaped(<immersiveengineering:material> * 2, [
    [<ore:plankTreatedWood>],
    [<ore:plankTreatedWood>]
]);
recipes.addShaped(<immersiveengineering:material> * 4, [
    [<earthworks:tool_saw:*>.transformDamage(3)],
    [<ore:plankTreatedWood>],
    [<ore:plankTreatedWood>]
]);

var rods as IItemStack[] = [
    <immersiveengineering:material:1>,
    <immersiveengineering:material:2>,
    <immersiveengineering:material:3>,
    <tconstruct:stone_stick>
];

var rodfluids as ILiquidStack[] = [
    <liquid:iron>,
    <liquid:steel>,
    <liquid:aluminum>,
    <liquid:stone>
];

for i, item in rods {
    recipes.remove(rods[i]);
	Casting.addTableRecipe(<contenttweaker:cast_stick>, rods[i], <liquid:gold>, 288, true, 100);
	Casting.addTableRecipe(<contenttweaker:cast_stick>, rods[i], <liquid:brass>, 144, true, 100);
	Casting.addTableRecipe(<contenttweaker:cast_stick>, rods[i], <liquid:alubrass>, 144, true, 100);
	Casting.addTableRecipe(rods[i], <contenttweaker:cast_stick>, rodfluids[i], 144, false, 100);
}

Casting.addTableRecipe(<contenttweaker:cast_stick>, <ore:stickTreatedWood>, <liquid:gold>, 288, true, 100);
Casting.addTableRecipe(<contenttweaker:cast_stick>, <ore:stickTreatedWood>, <liquid:brass>, 144, true, 100);
Casting.addTableRecipe(<contenttweaker:cast_stick>, <ore:stickTreatedWood>, <liquid:alubrass>, 144, true, 100);

var wires as IItemStack[] = [
    <immersiveengineering:material:20>,
    <immersiveengineering:material:21>,
    <immersiveengineering:material:22>,
    <immersiveengineering:material:23>,
    findFirstItemFromMod("contenttweaker","wire","redAlloy")

];

var wireplates as IIngredient[] = [
    <ore:plateCopper>,
    <ore:plateElectrum>,
    <ore:plateAluminum>,
    <ore:plateSteel>,
    findFirstItemFromMod("contenttweaker","plate","redAlloy")
];

var wirefluids as ILiquidStack[] = [
    <liquid:copper>,
    <liquid:electrum>,
    <liquid:aluminum>,
    <liquid:steel>,
    <liquid:red_alloy>
];

for i, item in wires {
    recipes.remove(wires[i]);
	Casting.addTableRecipe(<contenttweaker:cast_wire>, wires[i], <liquid:gold>, 288, true, 100);
	Casting.addTableRecipe(<contenttweaker:cast_wire>, wires[i], <liquid:brass>, 144, true, 100);
	Casting.addTableRecipe(<contenttweaker:cast_wire>, wires[i], <liquid:alubrass>, 144, true, 100);
	Casting.addTableRecipe(wires[i], <contenttweaker:cast_wire>, wirefluids[i], 72, false, 100);
	MetalPress.removeRecipe(wires[i]);
	MetalPress.addRecipe(wires[i]*4, wireplates[i], <immersiveengineering:mold:4>, 1024);
}

Casting.addTableRecipe(<contenttweaker:cast_wire>, <immersiveengineering:material:4>, <liquid:gold>, 288, true, 100);
Casting.addTableRecipe(<contenttweaker:cast_wire>, <immersiveengineering:material:4>, <liquid:brass>, 144, true, 100);
Casting.addTableRecipe(<contenttweaker:cast_wire>, <immersiveengineering:material:4>, <liquid:alubrass>, 144, true, 100);

Casting.addTableRecipe(<tconstruct:cast_custom:3>, <embers:plate_caminite>, <liquid:gold>, 288, true, 100);
Casting.addTableRecipe(<tconstruct:cast_custom:3>, <embers:plate_caminite>, <liquid:brass>, 144, true, 100);
Casting.addTableRecipe(<tconstruct:cast_custom:3>, <embers:plate_caminite>, <liquid:alubrass>, 144, true, 100);

var mapPress as IItemStack[] = [
    <immersiveengineering:mold:0>,
    <immersiveengineering:mold:1>,
    <immersiveengineering:mold:2>,
    <immersiveengineering:mold:3>,
    <immersiveengineering:mold:4>,
    <immersiveengineering:mold:5>,
    <immersiveengineering:mold:6>,
    <immersiveengineering:mold:7>,
    <contenttweaker:mold_ingot>,
];

for item in mapPress {
    Melting.addRecipe(getFluid("steel") * 864, item, 190);
}

recipes.addShaped(<enderio:item_alloy_ingot:5>, [
    [<ore:nuggetPulsatingIron>,<ore:nuggetPulsatingIron>,<ore:nuggetPulsatingIron>],
    [<ore:nuggetPulsatingIron>,<ore:nuggetPulsatingIron>,<ore:nuggetPulsatingIron>],
    [<ore:nuggetPulsatingIron>,<ore:nuggetPulsatingIron>,<ore:nuggetPulsatingIron>]
]);

var mapShear as IItemStack[IItemStack] = {
    <minecraft:shears> : <tconstruct:knife_blade>.withTag({Material: "iron"}),
    <botania:manasteelshears> : <tconstruct:knife_blade>.withTag({Material: "manasteel"}),
    <botania:elementiumshears> : <tconstruct:knife_blade>.withTag({Material: "elementium"}),
    <enderio:item_dark_steel_shears> : <tconstruct:knife_blade>.withTag({Material: "dark_steel"}),
};

for shear, mat in mapShear {
    recipes.remove(shear);
    recipes.addShaped(shear,[
        [mat,null],
        [null,mat]
    ]);
}
