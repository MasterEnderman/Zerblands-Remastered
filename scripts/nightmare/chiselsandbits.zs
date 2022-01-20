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

import scripts.functions.calc_basic;

recipes.remove(<chiselsandbits:tape_measure>);
calc_basic(<chiselsandbits:tape_measure>,<bibliocraft:tapemeasure>,<bibliocraft:plumbline>);

recipes.removeByRecipeName("chiselsandbits:chisel_stone");
recipes.removeByRecipeName("chiselsandbits:chisel_iron");
recipes.removeByRecipeName("chiselsandbits:chisel_gold");
recipes.removeByRecipeName("chiselsandbits:chisel_diamond");

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <chiselsandbits:chisel_stone> : [
        [
            [null,<botania:manaresource:21>],
            [<actuallyadditions:item_misc:3>,null]
        ]
    ],
    <chiselsandbits:chisel_iron> : [
        [
            [null,<ore:nuggetIron>],
            [<actuallyadditions:item_misc:3>,null]
        ]
    ],
    <chiselsandbits:chisel_gold> : [
        [
            [null,<ore:nuggetGold>],
            [<actuallyadditions:item_misc:3>,null]
        ]
    ],
    <chiselsandbits:chisel_diamond> : [
        [
            [null,<ore:nuggetDiamond>],
            [<actuallyadditions:item_misc:3>,null]
        ]
    ],
    <chiselsandbits:wrench_wood> : [
        [
            [null,<ore:plankTreatedWood>,null],
            [null,<ore:stickTreatedWood>,<ore:plankTreatedWood>],
            [<ore:stickTreatedWood>,null,null]
        ]
    ],
    <chiselsandbits:bittank> : [
        [
            [<ore:rodStone>,<ore:blockGlassColorless>,<ore:rodStone>],
            [<ore:blockGlassColorless>,<extrautils2:drum>,<ore:blockGlassColorless>],
            [<ore:rodStone>,<thermalfoundation:material:512>,<ore:rodStone>]
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
