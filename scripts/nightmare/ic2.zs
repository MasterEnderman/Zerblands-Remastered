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

import mods.tconstruct.Casting;
import mods.thermalexpansion.InductionSmelter;

var mapCable as ILiquidStack[IItemStack] = {
    <ic2:itemcable> : <liquid:copper>,
    <ic2:itemcable:13> : <liquid:bronze>,
    <ic2:itemcable:2> : <liquid:gold>,
    <ic2:itemcable:5> : <liquid:steel>,
    <ic2:itemcable:10> : <liquid:tin>
};

for cable, metal in mapCable {
    recipes.remove(cable);
    Casting.addTableRecipe(<contenttweaker:cast_cable>, cable, <liquid:gold>, 288, true, 100);
	Casting.addTableRecipe(<contenttweaker:cast_cable>, cable, <liquid:brass>, 144, true, 100);
	Casting.addTableRecipe(<contenttweaker:cast_cable>, cable, <liquid:alubrass>, 144, true, 100);
	Casting.addTableRecipe(cable, <contenttweaker:cast_cable>, metal, 72, false, 100);
}

recipes.remove(<ic2:blockmachinelv:15>);
recipes.addShaped(<ic2:blockmachinelv:15>, [
    [<contenttweaker:cutting_head>,<contenttweaker:cutting_head>,<contenttweaker:cutting_head>],
    [<sonarcore:stablestone_normal>,<contenttweaker:electric_motor>,<sonarcore:stablestone_normal>],
    [<sonarcore:stablestone_normal>,<extrautils2:machine>,<sonarcore:stablestone_normal>]
]);

var mapRubber as IItemStack[][] = [
    [<ic2:itemcable>,<ic2:itemcable:1>],
    [<ic2:itemcable:13>,<ic2:itemcable:14>,<ic2:itemcable:15>],
    [<ic2:itemcable:2>,<ic2:itemcable:3>,<ic2:itemcable:4>],
    [<ic2:itemcable:5>,<ic2:itemcable:6>,<ic2:itemcable:7>,<ic2:itemcable:8>]
];

for cable in mapRubber {
    var index as int = 1;
    while index < cable.length {
        recipes.remove(cable[index]);
        InductionSmelter.addRecipe(cable[index], cable[index - 1], <ic2:itemmisc:450>, 2500);
        index += 1;
    }
}
