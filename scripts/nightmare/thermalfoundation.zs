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

var recipeMapShaped as IIngredient[][][IItemStack] = {
    <thermalfoundation:material:513> : [
    	[null,<actuallyadditions:item_crystal>,<ore:ingotGold>],
    	[<actuallyadditions:item_crystal>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal>],
    	[<ore:ingotGold>,<actuallyadditions:item_crystal>,null]
    ],
    <thermalfoundation:material:514> : [
    	[null,<actuallyadditions:item_crystal>,<ore:ingotSilver>],
    	[<actuallyadditions:item_crystal>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal>],
    	[<ore:ingotSilver>,<actuallyadditions:item_crystal>,null]
    ],
    <thermalfoundation:material:515> : [
    	[null,<actuallyadditions:item_crystal>,<ore:ingotElectrum>],
    	[<actuallyadditions:item_crystal>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal>],
    	[<ore:ingotElectrum>,<actuallyadditions:item_crystal>,null]	
    ],
	<thermalfoundation:material:23> : [
		[null,<tconstruct:materials>,null],
		[<tconstruct:materials>,<thermalfoundation:material:22>,<tconstruct:materials>],
		[null,<tconstruct:materials>,null]
	]
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}
