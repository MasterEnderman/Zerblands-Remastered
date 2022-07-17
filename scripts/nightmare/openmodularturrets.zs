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

import mods.jei.JEI;

JEI.removeAndHide(<openmodularturrets:lever_block>);

var recipeMapShaped as IIngredient[][][][int][IItemStack] = {
    <openmodularturrets:intermediate_tiered:10> : {
        1 : [
            [
                [<minecraft:stonebrick>,<earthworks:block_dry_stone>,<minecraft:stonebrick>],
                [null,<earthworks:item_timber>,null],
                [<minecraft:stonebrick>,<earthworks:block_dry_stone>,<minecraft:stonebrick>]
            ]
        ]
    },
    <openmodularturrets:intermediate_regular> : {
        4 : [
            [
                [<ore:plateRedAlloy>,<rs_ctr:bin_comb>,<ore:plateRedAlloy>],
                [<rs_ctr:split_s>,<cd4017be_lib:m:400>,<rs_ctr:split_s>],
                [<ore:plateRedAlloy>,<rs_ctr:bin_split>,<ore:plateRedAlloy>]
            ],
            [
                [<ore:plateRedAlloy>,<rs_ctr:bin_split>,<ore:plateRedAlloy>],
                [<rs_ctr:split_s>,<cd4017be_lib:m:400>,<rs_ctr:split_s>],
                [<ore:plateRedAlloy>,<rs_ctr:bin_comb>,<ore:plateRedAlloy>]
            ]
        ]
    },
    <openmodularturrets:intermediate_tiered> :{
        1 : [
            [
                [null,<ore:dustRedAlloy>,null],
                [<ore:dustRedAlloy>,<forestry:impregnated_casing>,<ore:dustRedAlloy>],
                [null,<ore:dustRedAlloy>,null]
            ]
        ]
    },
    <openmodularturrets:intermediate_tiered:5> :{
        1 : [
            [
                [<minecraft:stonebrick>,<earthworks:block_dry_stone>,<minecraft:stonebrick>],
                [null,<botania:spreader>,<ore:dustRedAlloy>],
                [<minecraft:stonebrick>,<earthworks:block_dry_stone>,<minecraft:stonebrick>]
            ],
            [
                [<minecraft:stonebrick>,<earthworks:block_dry_stone>,<minecraft:stonebrick>],
                [null,<tconstruct:slimesling:*>,<ore:dustRedAlloy>],
                [<minecraft:stonebrick>,<earthworks:block_dry_stone>,<minecraft:stonebrick>]
            ]
        ]
    },
    <openmodularturrets:turret_base> :{
        1 : [
            [
                [<ore:plankTreatedWood>,<forestry:impregnated_casing>,<ore:plankTreatedWood>],
                [<openmodularturrets:intermediate_regular>,<openmodularturrets:intermediate_tiered>,<openmodularturrets:intermediate_regular>],
                [<ore:plankTreatedWood>,<cd4017be_lib:m:400>,<ore:plankTreatedWood>]
            ]
        ]
    },
};

for key, value in recipeMapShaped {
	var index as int = 0;    
    recipes.remove(key);
    for amount, entry in value {
        for recipe in entry {
            var name as string = "ct_"+toString(key)+"_"+index;
            recipes.addShaped(name, key * amount, recipe);
            index += 1;
        }
    }
}
