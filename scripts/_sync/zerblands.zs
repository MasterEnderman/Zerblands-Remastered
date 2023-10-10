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

<zerblands:workbench>.addTooltip(format.green("The better Engineer's Workbench."));
<zerblands:workbench>.addTooltip(format.green("Only works in the Nightmare Mode."));

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <zerblands:elven_portal> : [
        [
            [<botanicadds:gaiasteel_ingot>,<botania:alfheimportal>,<botanicadds:gaiasteel_ingot>],
            [<tconevo:metal:44>,<energycontrol:item_component:2>,<tconevo:metal:44>],
            [<botanicadds:gaiasteel_ingot>,<contenttweaker:jump_module>,<botanicadds:gaiasteel_ingot>]
        ]
    ],
    <zerblands:workbench> : [
        [
            [<immersiveengineering:wooden_device0:2>]
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

var guide as IItemStack = <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:zerblands"});

recipes.addShaped(guide, [
    [<extrautils2:endershard>,<extrautils2:endershard>,<extrautils2:endershard>],
    [<extrautils2:endershard>,<minecraft:book>,<extrautils2:endershard>],
    [<extrautils2:endershard>,<extrautils2:endershard>,<extrautils2:endershard>]
]);
