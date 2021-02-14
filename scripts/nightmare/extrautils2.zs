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

recipes.removeByRecipeName("extrautils2:machine_base");
Casting.addBasinRecipe(<extrautils2:machine>, <calculator:calculator>, <liquid:iron>, 144 * 4, true, 2000);

recipes.remove(<extrautils2:resonator>);
Altar.addDiscoveryAltarRecipe("resonator", <extrautils2:resonator>, 200, 200, [
    <contenttweaker:black_iron>, <astralsorcery:blockblackmarble>, <contenttweaker:black_iron>,
    <extrautils2:ingredients>, <embers:mech_core>, <extrautils2:ingredients>,
    <contenttweaker:black_iron>, <embers:dust_ember>, <contenttweaker:black_iron>
]);

recipes.remove(<extrautils2:drum:1>);
basic.addRecipe(<extrautils2:drum>, <calculator:material:3>, <extrautils2:drum:1>);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <extrautils2:ingredients> : [
        [
            [<ore:dustRedstone>,<extrautils2:endershard>,<ore:dustRedstone>],
            [<extrautils2:endershard>,<ore:gemAquamarine>,<extrautils2:endershard>],
            [<ore:dustRedstone>,<extrautils2:endershard>,<ore:dustRedstone>]
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
