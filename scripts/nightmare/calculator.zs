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

import mods.astralsorcery.Altar;
import mods.calculator.basic;
import mods.tconstruct.Casting;

recipes.remove(<calculator:powercube>);
Casting.addBasinRecipe(<calculator:powercube>, <thermalfoundation:storage_resource:1>, <liquid:stone>, 4608, true, 200);

recipes.remove(<calculator:calculatorscreen>);
Casting.addBasinRecipe(<calculator:calculatorscreen>, <extrautils2:decorativeglass:5>, <liquid:stone>, 576, true, 200);

basic.removeRecipe(<calculator:wrench>);
basic.addRecipe(<chiselsandbits:wrench_wood>,<sonarcore:reinforcedstoneblock>,<calculator:wrench>);

basic.removeRecipe(<calculator:sickle>);
basic.addRecipe(<extrautils2:sickle_wood>,<sonarcore:reinforcedstoneblock>,<calculator:sickle>);

recipes.remove(<calculator:calculator>);
Altar.addDiscoveryAltarRecipe("basic_calculator", <calculator:calculator>, 200, 200, [
    <contenttweaker:black_iron>, <calculator:calculatorscreen>, <contenttweaker:black_iron>,
    <extrautils2:ingredients>, <calculator:calculatorassembly>, <extrautils2:ingredients>,
    <contenttweaker:black_iron>, <calculator:calculatorassembly>, <contenttweaker:black_iron>
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <calculator:calculatorassembly> : [
        [
            [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>],
            [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>],
            [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>]
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
