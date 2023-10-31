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

recipes.remove(<chisel:chisel_hitech>);

recipes.remove(<chisel:brownstone>);
Casting.addBasinRecipe(<chisel:brownstone>, <minecraft:sandstone>, <liquid:clay>, 576, true, 200);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <chisel:chisel_iron> : [
        [
            [null,<ore:plateIron>],
            [<actuallyadditions:item_misc:3>,null]
        ]
    ],
    <chisel:chisel_diamond> : [
        [
            [null,<contenttweaker:flawlessdiamond>],
            [<actuallyadditions:item_misc:3>,null]
        ]
    ],
    <chisel:chisel_hitech>.withTag({Unbreakable:1}) : [
        [
            [<ic2:itemmisc:451>,<contenttweaker:enddiamond>],
            [<chisel:chisel_diamond:*>,<thermalfoundation:material:640>]
        ]
    ],
    <chisel:auto_chisel> : [
        [
            [<ore:blockGlassHardened>,<minecraft:anvil>,<ore:blockGlassHardened>],
            [<botania:rune:2>,<thermalexpansion:frame>,<botania:rune:2>],
            [<ore:gearConstantan>,<thermalfoundation:material:513>,<ore:gearConstantan>]
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
