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

var lead_plate as IItemStack = <tconstruct:large_plate>.withTag({Material: "lead"});
var steel_toughrod as IItemStack = <tconstruct:tough_tool_rod>.withTag({Material: "steel"});

recipes.removeByRecipeName("simplyjetpacks:upgraderecipeshaped20");
recipes.addShaped(<simplyjetpacks:itemfluxpack:7>, [
    [<ore:gearLead>,<thermalexpansion:cell>,<ore:gearLead>],
    [lead_plate,<simplyjetpacks:metaitem:4>,lead_plate]
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <simplyjetpacks:metaitem:4> : [
        [
            [<harvestcraft:hardenedleatheritem>,steel_toughrod,<harvestcraft:hardenedleatheritem>],
            [<harvestcraft:hardenedleatheritem>,steel_toughrod,<harvestcraft:hardenedleatheritem>]
        ]
    ],
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
