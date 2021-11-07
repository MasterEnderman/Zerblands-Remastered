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
furnace.addRecipe(<ic2:itemmisc:180>,<ore:dustUranium>);

ArcFurnace.removeRecipe(<thermalfoundation:material:160>);
ArcFurnace.addRecipe(<thermalfoundation:material:160>,<contenttweaker:reinforcediron_ingot>,<thermalfoundation:material:864>, 400, 512);
InductionSmelter.removeRecipe(<thermalfoundation:material:769>*4,<thermalfoundation:material>);
InductionSmelter.removeRecipe(<thermalfoundation:material:769>*4,<minecraft:iron_ingot>);
InductionSmelter.removeRecipe(<thermalfoundation:material:802>,<thermalfoundation:material>);
InductionSmelter.removeRecipe(<thermalfoundation:material:802>,<minecraft:iron_ingot>);
InductionSmelter.removeRecipe(<thermalfoundation:material:768>*4,<thermalfoundation:material>);
InductionSmelter.removeRecipe(<thermalfoundation:material:768>*4,<minecraft:iron_ingot>);

Casting.removeTableRecipe(<thermalfoundation:material:23>);
Casting.addTableRecipe(<thermalfoundation:material:23>,<thermalfoundation:material:22>,<liquid:stone>,288,true,100);

recipes.addShaped("gear_wood", <thermalfoundation:material:22>, [
    [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>],
    [<ore:stickTreatedWood>,<ore:plankTreatedWood>,<ore:stickTreatedWood>],
    [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>]
]);

Compactor.removeGearRecipe(<evilcraft:dark_gem>);

Macerator.addRecipe(<actuallyadditions:item_dust:4>, <minecraft:dye:4>);
Macerator.addRecipe(findFirstItemFromMod("actuallyadditions","dust","diamond"), findFirstItemFromMod("minecraft","gem","diamond"));

var mapSimpleAlloy as IItemStack[][IItemStack] = {
    <earthworks:item_adobe> : [<embers:blend_caminite>,<earthworks:item_mud>],
    <contenttweaker:black_iron> : [<ic2:itemmisc:53>,<actuallyadditions:item_dust:7>],
    <contenttweaker:basic_blade> : [<contenttweaker:bone_shard>,<contenttweaker:flint_shard>],
    <enderio:item_alloy_endergy_ingot> : [<earthworks:item_adobe>,<tconstruct:materials>],
    <appliedenergistics2:part:140> : [<ic2:itemcable:9>,<enderio:item_material:51>],
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
    <ic2:itemmisc:261> : [findFirstItemFromMod("contenttweaker","ingot","ferromagneticAlloy"),<ic2:itemmisc:14> * 8]
};

ArcFurnace.removeRecipe(findFirstItemFromMod("contenttweaker","ingot","redAlloy"));
Kiln.removeRecipe(findFirstItemFromMod("contenttweaker","ingot","redAlloy"));
furnace.remove(<minecraft:netherbrick>);
recipes.remove(<immersivepetroleum:stone_decoration>);

for item, recipe in mapSimpleAlloy {
    var input1 as IItemStack = recipe[0];
    var input2 as IItemStack = recipe[1];

    recipes.remove(item);
    Kiln.addRecipe(item, input1, input2, 200);
    AlloySmelter.addRecipe(item, recipe, 5000);
    InductionSmelter.addRecipe(item, input1, input2, 2500);
}

var mapSimpleCrush as IItemStack[IItemStack] = {
    <enderio:item_material:22> : <earthworks:item_adobe>,
    <contenttweaker:brick_dust> : <minecraft:brick>,
    <contenttweaker:brick_dust> * 4 : <minecraft:brick_block>,
    <contenttweaker:soil> * 4 : <minecraft:dirt>,
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
    <contenttweaker:flawless_diamond_shard> * 4 : <contenttweaker:flawless_block>,
    <quantumflux:graphitedust> * 2 : <quantumflux:graphiteore>,
    <woot:soulsanddust> * 2 : <minecraft:soul_sand>,
    <contenttweaker:end_stone_dust> : <minecraft:end_stone>,
    <earthworks:item_chalk> * 4 : <earthworks:block_chalk>
};

Crusher.removeRecipe(<immersiveengineering:material:17>);
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

Sawmill.addRecipe(<bibliocraft:framingsheet> * 2, <ore:slabWood>.firstItem, 1500);
Saw.addRecipe(<bibliocraft:framingsheet> * 2, <ore:slabWood>);

Sawmill.addRecipe(<bibliocraft:framingboard>  * 2, <bibliocraft:framingsheet>, 1500);
Saw.addRecipe(<bibliocraft:framingboard>  * 2, <bibliocraft:framingsheet>);

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
    Sawmill.addRecipe(<minecraft:stick>*4, plank, 400, <thermalfoundation:material:800>, 10);
}

recipes.remove(<ore:stickWood>);
recipes.addShaped(<minecraft:stick> * 2, [
    [<ore:plankWood>],
    [<ore:plankWood>]
]);
recipes.addShaped(<minecraft:stick> * 8, [
    [<ore:logWood>],
    [<ore:logWood>]
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
