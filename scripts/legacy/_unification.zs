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

import mods.jei.JEI;
import mods.enderio.SagMill;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.tconstruct.Casting;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Pulverizer;

JEI.removeAndHide(<appliedenergistics2:material:40>);
JEI.removeAndHide(<enderio:item_material:9>);
JEI.removeAndHide(<enderio:item_material:10>);

Compactor.removeGearRecipe(<evilcraft:dark_gem>);

Casting.removeTableRecipe(<thermalfoundation:material:23>);
Casting.addTableRecipe(<thermalfoundation:material:23>,<thermalfoundation:material:22>,<liquid:stone>,288,true,100);

recipes.remove(<ore:gearWood>);
recipes.remove(<ore:gearStone>);

recipes.addShaped(<thermalfoundation:material:22>, [
    [null,<ore:stickTreatedWood>,null],
    [<ore:stickTreatedWood>,null,<ore:stickTreatedWood>],
    [null,<ore:stickTreatedWood>,null]
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
	Casting.addTableRecipe(<contenttweaker:cast_wire>, wires[i], <liquid:gold>, 288, true, 100);
	Casting.addTableRecipe(<contenttweaker:cast_wire>, wires[i], <liquid:brass>, 144, true, 100);
	Casting.addTableRecipe(<contenttweaker:cast_wire>, wires[i], <liquid:alubrass>, 144, true, 100);
	Casting.addTableRecipe(wires[i], <contenttweaker:cast_wire>, wirefluids[i], 72, false, 100);
	MetalPress.removeRecipe(wires[i]);
	MetalPress.addRecipe(wires[i]*4, wireplates[i], <immersiveengineering:mold:4>, 1024);
}

var tconOre as IItemStack[IItemStack] = {
    <enderio:item_material:31> : <tconstruct:ore>,
    <enderio:item_material:30> : <tconstruct:ore:1>,
    <evilcraft:dark_gem> : <evilcraft:dark_ore>,
    <quantumflux:graphitedust> : <quantumflux:graphiteore>
};

for dust, ore in tconOre {
    Crusher.addRecipe(dust * 2, ore, 2048);
    Pulverizer.addRecipe(dust * 2, ore, 4000);
}
