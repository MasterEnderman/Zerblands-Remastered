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
import mods.jei.JEI;
import mods.immersiveengineering.AlloySmelter as Kiln;
import mods.immersiveengineering.MetalPress;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Sawmill;
import mods.tconstruct.Casting;

JEI.removeAndHide(<appliedenergistics2:material:40>);
JEI.removeAndHide(<enderio:item_material:9>);
JEI.removeAndHide(<enderio:item_material:10>);

<ore:materialFlesh>.add(<evilcraft:werewolf_flesh:1>);
<ore:ingotEnder>.add(<contenttweaker:ender_ingot>);

recipes.remove(<ore:gearWood>);
recipes.remove(<ore:gearStone>);

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

Casting.removeTableRecipe(<thermalfoundation:material:23>);
Casting.addTableRecipe(<thermalfoundation:material:23>,<thermalfoundation:material:22>,<liquid:stone>,288,true,100);

recipes.addShaped("gear_wood", <thermalfoundation:material:22>, [
    [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>],
    [<ore:stickTreatedWood>,<ore:plankTreatedWood>,<ore:stickTreatedWood>],
    [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>]
]);

Compactor.removeGearRecipe(<evilcraft:dark_gem>);

var mapSimpleAlloy as IItemStack[][IItemStack] = {
    <earthworks:item_adobe> : [<embers:blend_caminite>,<earthworks:item_mud>],
    <contenttweaker:black_iron> : [<minecraft:iron_ingot>,<actuallyadditions:item_dust:7>],
    <contenttweaker:ender_ingot> : [<thermalfoundation:material:130>,<tp:ender_dust>],
    <contenttweaker:basic_blade> : [<contenttweaker:bone_shard>,<contenttweaker:flint_shard>],
    <enderio:item_alloy_endergy_ingot> : [<earthworks:item_adobe>,<tconstruct:materials>],
};

AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot>);

for item, recipe in mapSimpleAlloy {
    var input1 as IItemStack = recipe[0];
    var input2 as IItemStack = recipe[1];

    recipes.remove(item);
    Kiln.addRecipe(item, input1, input2, 200);
    AlloySmelter.addRecipe(item, recipe, 5000);
    InductionSmelter.addRecipe(item, input1, input2, 2500);
}

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
recipes.addShaped(<minecraft:stick> * 4, [
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
    <immersiveengineering:material:23>
];

var wireplates as IIngredient[] = [
    <ore:plateCopper>,
    <ore:plateElectrum>,
    <ore:plateAluminum>,
    <ore:plateSteel>
];

var wirefluids as ILiquidStack[] = [
    <liquid:copper>,
    <liquid:electrum>,
    <liquid:aluminum>,
    <liquid:steel>
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
