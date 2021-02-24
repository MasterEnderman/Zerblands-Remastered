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

furnace.remove(<minecraft:coal:1>);
furnace.addRecipe(<forestry:ash>, <ore:logWood>);

furnace.remove(<minecraft:brick>);
furnace.addRecipe(<minecraft:brick>, <contenttweaker:pressed_clay>);

recipes.remove(<minecraft:book>);
recipes.addShapeless(<minecraft:book>, [
    <minecraft:paper>,<minecraft:paper>,<minecraft:paper>,<harvestcraft:hardenedleatheritem>,<minecraft:string>
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <minecraft:chest> : [
        [
            [<tconstruct:pattern>,<tconstruct:pattern>,<tconstruct:pattern>],
            [<tconstruct:pattern>,<minecraft:stone_button>,<tconstruct:pattern>],
            [<tconstruct:pattern>,<tconstruct:pattern>,<tconstruct:pattern>]
        ],
        [
            [<bibliocraft:framingsheet>,<bibliocraft:framingsheet>,<bibliocraft:framingsheet>],
            [<bibliocraft:framingsheet>,<minecraft:stone_button>,<bibliocraft:framingsheet>],
            [<bibliocraft:framingsheet>,<bibliocraft:framingsheet>,<bibliocraft:framingsheet>]
        ]
    ],
    <minecraft:furnace> : [
        [
            [<extrautils2:compressedcobblestone>,<extrautils2:compressedcobblestone>,<extrautils2:compressedcobblestone>],
            [<extrautils2:compressedcobblestone>,<minecraft:coal>|<minecraft:coal:1>,<extrautils2:compressedcobblestone>],
            [<extrautils2:compressedcobblestone>,<extrautils2:compressedcobblestone>,<extrautils2:compressedcobblestone>]
        ],
        [
            [<sonarcore:reinforcedstoneblock>,<sonarcore:reinforcedstoneblock>,<sonarcore:reinforcedstoneblock>],
            [<sonarcore:reinforcedstoneblock>,<minecraft:coal>|<minecraft:coal:1>,<sonarcore:reinforcedstoneblock>],
            [<sonarcore:reinforcedstoneblock>,<sonarcore:reinforcedstoneblock>,<sonarcore:reinforcedstoneblock>]
        ]
    ],
    <minecraft:piston> : [
        [
            [<ore:plankTreatedWood>,<ore:plankTreatedWood>,<ore:plankTreatedWood>],
            [<tconstruct:materials>,<actuallyadditions:item_misc:7>,<tconstruct:materials>],
            [<tconstruct:materials>,<immersiveengineering:wirecoil:5>,<tconstruct:materials>]
        ]
    ],
    <minecraft:hopper> : [
        [
            [<ore:ingotIron>,<ore:gearStone>,<ore:ingotIron>],
            [<ore:stickIron>,<tconstruct:wooden_hopper>,<ore:stickIron>],
            [null,<ore:ingotIron>,null]
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
