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

recipes.addShaped(<chisel:basalt2:7> * 64, [
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [<ore:cobblestone>, <minecraft:coal>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);

var recipeMapShaped as IIngredient[][][IItemStack] = {
        <chisel:chisel_iron> : [
    	[null,<ore:plateIron>],
    	[<ore:stickTreatedWood>,null]
    ],
    <chisel:chisel_diamond>	: [
    	[null,<ore:gemDiamond>],
    	[<chisel:chisel_iron>,null]
    ],
    <chisel:auto_chisel> : [
    	[null,<ore:blockGlassHardened>,null],
    	[<minecraft:piston>,<thermalexpansion:frame>,<minecraft:piston>],
    	[<ore:gearAluminum>,<thermalfoundation:material:513>,<ore:gearAluminum>]
    ],
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}
