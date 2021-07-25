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
import mods.immersiveengineering.CokeOven;

furnace.remove(<minecraft:coal:1>);
furnace.addRecipe(<forestry:ash>, <ore:logWood>);
CokeOven.addRecipe(<minecraft:coal:1> * 4, 1600, <forestry:wood_pile>, 2000);
CokeOven.addRecipe(<thermalfoundation:material:802>, 400, <minecraft:coal:1>, 250);
CokeOven.addRecipe(<thermalfoundation:storage_resource:1>, 4000, <thermalfoundation:storage_resource>, 2500);

furnace.remove(<minecraft:brick>);
furnace.addRecipe(<minecraft:brick>, <contenttweaker:pressed_clay>);

recipes.remove(<minecraft:paper>);
recipes.remove(<minecraft:book>);
recipes.addShapeless(<minecraft:book>, [
    <minecraft:paper>,<minecraft:paper>,<minecraft:paper>,<harvestcraft:hardenedleatheritem>,<minecraft:string>
]);

recipes.removeShapeless(<minecraft:obsidian>);
recipes.removeShaped(<minecraft:trapped_chest>);

recipes.remove(<minecraft:flint_and_steel>);
recipes.addShaped(<minecraft:flint_and_steel:64>,[
    [<ore:stickIron>,null],
    [null,<contenttweaker:flint_shard>]
]);
recipes.addShaped(<minecraft:flint_and_steel>,[
    [<ore:stickSteel>,null],
    [null,<contenttweaker:flint_shard>]
]);

recipes.remove(<minecraft:iron_bars>);
recipes.addShaped(<minecraft:iron_bars> * 4, [
    [<ore:stickIron>,<ore:stickIron>,<ore:stickIron>],
    [<ore:stickIron>,<ore:stickIron>,<ore:stickIron>]
]);

recipes.addShaped(<minecraft:gravel>, [
    [<contenttweaker:gravel_dust>,<contenttweaker:gravel_dust>],
    [<contenttweaker:gravel_dust>,<contenttweaker:gravel_dust>]
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <minecraft:chest> : [
        [
            [<tconstruct:pattern>,<tconstruct:pattern>,<tconstruct:pattern>],
            [<tconstruct:pattern>,<contenttweaker:chest_lock>,<tconstruct:pattern>],
            [<tconstruct:pattern>,<tconstruct:pattern>,<tconstruct:pattern>]
        ],
        [
            [<bibliocraft:framingsheet>,<bibliocraft:framingsheet>,<bibliocraft:framingsheet>],
            [<bibliocraft:framingsheet>,<contenttweaker:chest_lock>,<bibliocraft:framingsheet>],
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
            [<tconstruct:materials>,<contenttweaker:redstone_ingot>,<tconstruct:materials>]
        ]
    ],
    <minecraft:hopper> : [
        [
            [<ore:ingotIron>,<ore:gearStone>,<ore:ingotIron>],
            [<ore:stickIron>,<tconstruct:wooden_hopper>,<ore:stickIron>],
            [null,<ore:plateIron>,null]
        ]
    ],
    <minecraft:bucket> : [
        [
            [<ore:plateIron>,<minecraft:bowl>,<ore:plateIron>],
            [null,<ore:plateIron>,null]
        ],
        [
            [<ore:plateIron>,<claybucket:claybucket>,<ore:plateIron>],
            [null,<ore:plateIron>,null]
        ]
    ],
    <minecraft:cobblestone> : [
        [
            [<botania:manaresource:21>,<botania:manaresource:21>],
            [<botania:manaresource:21>,<botania:manaresource:21>]
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

var rails as IIngredient[][IItemStack] = {
    <minecraft:golden_rail> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_standard>*6,<contenttweaker:rail_speed>*6,<ore:dustRedstone>*8],
    <minecraft:detector_rail> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_standard>*6,<ore:dustRedstone>*4,<minecraft:stone_pressure_plate>*16],
    <minecraft:rail> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_standard>*6],
    <minecraft:activator_rail> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_standard>*6,<ore:dustRedstone>*8,<minecraft:redstone_torch>*4],
    <tconstruct:wood_rail> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_wood>*6],
    <tconstruct:wood_rail_trapdoor> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_wood>*6,<minecraft:trapdoor>*4],
    <enderio:block_exit_rail> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_standard>*6,<minecraft:piston>*4,<minecraft:stone_pressure_plate>*16],
    <botania:ghostrail> : [<contenttweaker:railbed_wood>,<contenttweaker:rail_standard>*6,<botania:platform:1>*4],
};

for rail, recipe in rails {
    recipes.remove(rail);
    Blueprint.addRecipe("rails", rail * 16, recipe);
}
