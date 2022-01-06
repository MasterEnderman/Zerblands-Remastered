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

recipes.remove(<buildinggadgets:constructionblockpowder>);
recipes.addShapeless(<buildinggadgets:constructionblockpowder>, [
    <ore:itemSlag>,<ore:crystalCrudeOil>,
    <earthworks:block_chalk>,<ic2:itemmisc:8>
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <buildinggadgets:constructionpastecontainer> : [
        [
            [null,<danknull:dank_null_panel_2>,null],
            [<danknull:dank_null_panel_2>,<ic2:itemarmorcfpack:*>,<danknull:dank_null_panel_2>],
            [null,<danknull:dank_null_panel_2>,null]
        ]
    ],
    <buildinggadgets:constructionpastecontainert2> : [
        [
            [null,<danknull:dank_null_panel_3>,null],
            [<danknull:dank_null_panel_3>,<buildinggadgets:constructionpastecontainer>,<danknull:dank_null_panel_3>],
            [null,<danknull:dank_null_panel_3>,null]
        ]
    ],
    <buildinggadgets:constructionpastecontainert3> : [
        [
            [null,<danknull:dank_null_panel_4>,null],
            [<danknull:dank_null_panel_4>,<buildinggadgets:constructionpastecontainert2>,<danknull:dank_null_panel_4>],
            [null,<danknull:dank_null_panel_4>,null]
        ]
    ],
    <buildinggadgets:constructionpastecontainercreative> : [
        [
            [null,<contenttweaker:creative>,null],
            [<contenttweaker:creative>,<buildinggadgets:constructionpastecontainert3>,<contenttweaker:creative>],
            [null,<contenttweaker:creative>,null]
        ]
    ],
    <buildinggadgets:buildingtool> : [
        [
            [<notenoughwands:building_wand>],
            [<thermalfoundation:material:640>],
            [<thermalexpansion:capacitor:3>]
        ]
    ],
    <buildinggadgets:exchangertool> : [
        [
            [<notenoughwands:swapping_wand>],
            [<thermalfoundation:material:640>],
            [<thermalexpansion:capacitor:4>]
        ]
    ],
    <buildinggadgets:copypastetool> : [
        [
            [<notenoughwands:displacement_wand>,<notenoughwands:building_wand>,<notenoughwands:moving_wand>],
            [<ore:gearElectrumFlux>,<thermalfoundation:material:640>,<ore:gearElectrumFlux>],
            [null,<thermalexpansion:capacitor:4>,null]
        ]
    ],
    <buildinggadgets:destructiontool> : [
        [
            [<notenoughwands:teleportation_wand>,<rftools:shape_card:1>,<enderutilities:void_pickaxe>],
            [<ore:gearGelidEnderium>,<thermalfoundation:material:640>,<ore:gearGelidEnderium>],
            [null,<thermalexpansion:capacitor:4>,null]
        ]
    ],
    <buildinggadgets:templatemanager> : [
        [
            [<ore:paper>,<ore:plateIridium>,<ore:paper>],
            [<actuallyadditions:item_crystal:4>,<thermalexpansion:frame:64>,<actuallyadditions:item_crystal:4>],
            [<ore:dyeBlue>,<opencomputers:printer>,<ore:dyeBlue>]
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
