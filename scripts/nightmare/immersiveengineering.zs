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

import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.Fermenter;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Refinery;
import mods.tconstruct.Casting;

Fermenter.removeFluidRecipe(<liquid:ethanol>);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*6,<thermalfoundation:material:818>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*8,<thermalfoundation:material:819>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*6,<thermalfoundation:material:816>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*8,<thermalfoundation:material:817>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*2,<actuallyadditions:item_misc:1>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*4,<actuallyadditions:item_misc:21>, 256);

Refinery.removeRecipe(<liquid:biodiesel>);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*8, <liquid:plantoil>*8, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*8, <liquid:canolaoil>*8, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*8, <liquid:biocrude>*8, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*4, <liquid:refinedcanolaoil>*12, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*4, <liquid:refined_biofuel>*12, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*12, <liquid:seed.oil>*4, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*12, <liquid:seed_oil>*4, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*12, <liquid:hootch>*4, 256);

MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>);

recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood");
Casting.addBasinRecipe(<immersiveengineering:treated_wood>, <ore:plankWood>, <liquid:creosote>, 100, true, 100);

recipes.remove(<immersiveengineering:material:8>);
Blueprint.removeRecipe(<immersiveengineering:material:8>);
Blueprint.addRecipe("components", <immersiveengineering:material:8>, [
    <ore:stickIron> * 4,
    <ore:plateCopper> * 2,
    <ore:gearLead> * 1
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <immersiveengineering:stone_decoration:10> : [
        [
            [<minecraft:brick>,<tconstruct:materials:2>,<minecraft:brick>],
            [<tconstruct:materials:2>,<embers:block_caminite_brick>,<tconstruct:materials:2>],
            [<minecraft:brick>,<tconstruct:materials:2>,<minecraft:brick>]
        ],
        [
            [<minecraft:brick>,<tconstruct:materials:2>,<minecraft:brick>],
            [<tconstruct:materials:2>,<tconstruct:deco_ground>,<tconstruct:materials:2>],
            [<minecraft:brick>,<tconstruct:materials:2>,<minecraft:brick>]
        ]
    ],
    <immersiveengineering:stone_decoration> : [
        [
            [<earthworks:item_lime_plaster>,<earthworks:item_adobe>,<earthworks:item_lime_plaster>],
            [<tconstruct:materials:1>,<forestry:ash_brick>,<tconstruct:materials:1>],
            [<earthworks:item_lime_plaster>,<earthworks:item_adobe>,<earthworks:item_lime_plaster>]
        ],
        [
            [<earthworks:item_lime_plaster>,<earthworks:item_adobe>,<earthworks:item_lime_plaster>],
            [<tconstruct:materials:2>,<forestry:ash_brick>,<tconstruct:materials:2>],
            [<earthworks:item_lime_plaster>,<earthworks:item_adobe>,<earthworks:item_lime_plaster>]
        ]
    ],
    <immersiveengineering:tool> : [
        [
            [null,<embers:archaic_brick>,<immersiveengineering:material:4>],
            [null,<ore:stickWood>,<embers:archaic_brick>],
            [<ore:stickWood>,null,null]
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
