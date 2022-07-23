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

import mods.ic2.Extractor;

import scripts.functions.calc_basic;
import scripts.functions.calc_atomic;

recipes.remove(<rs_ctr:wire>);
recipes.addShapeless(<rs_ctr:wire> * 2, [<immersiveengineering:wirecoil:5>]);
recipes.addShapeless(<rs_ctr:wire> * 4, [<ic2:itemtoolcutter:*>.transformDamage(8), <immersiveengineering:wirecoil:5>]);
Extractor.addRecipe(<rs_ctr:wire> * 8, <immersiveengineering:wirecoil:5>);

recipes.remove(<rs_ctr:wire_anchor>);
recipes.addShapeless(<rs_ctr:wire_anchor> * 4, [<appliedenergistics2:nether_quartz_cutting_knife:*>, <appliedenergistics2:part:120>]);
recipes.addShapeless(<rs_ctr:wire_anchor> * 4, [<appliedenergistics2:certus_quartz_cutting_knife:*>, <appliedenergistics2:part:120>]);
Extractor.addRecipe(<rs_ctr:wire_anchor> * 4, <appliedenergistics2:part:120>);

recipes.remove(<rs_ctr:rs_port>);
calc_basic(<rs_ctr:rs_port>,<contenttweaker:stone_board>,<ore:dustRedstone>);

recipes.remove(<rs_ctr:rs_port:1>);
calc_basic(<rs_ctr:rs_port:1>,<contenttweaker:stone_board>,<contenttweaker:enrichedgold>);

recipes.remove(<rs_ctr:rs_port:2>);
calc_basic(<rs_ctr:rs_port:2>,<contenttweaker:stone_board>,<ore:dustLapis>);

recipes.remove(<rs_ctr:rs_port:3>);
calc_basic(<rs_ctr:rs_port:3>,<contenttweaker:stone_board>,<cd4017be_lib:m:402>);

recipes.remove(<rs_ctr:frame>);
calc_atomic(<rs_ctr:frame>,<bloodmagic:component:10>,<energycontrol:item_component:2>,<cd4017be_lib:m:402>);

recipes.remove(<rs_ctr:solar_cell>);
calc_basic(<rs_ctr:solar_cell>,<minecraft:daylight_detector>,<enderio:item_material:3>);

recipes.remove(<rs_ctr:block_breaker>);
calc_basic(<rs_ctr:block_breaker>,<rs_ctr:block_breaker1>,<minecraft:diamond_pickaxe>);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <rs_ctr:power_hub> : [
        [
            [<rs_ctr:wire_e>,<ore:plateGold>,<rs_ctr:wire_e>],
            [<rs_ctr:wire_e>,<energycontrol:item_component:2>,<rs_ctr:wire_e>]
        ]
    ],
    <rs_ctr:teleporter1> : [
        [
            [<minecraft:obsidian>,<enderio:item_material:44>,<minecraft:obsidian>],
            [<minecraft:ender_eye>,<cd4017be_lib:m:401>,<minecraft:ender_eye>],
            [<rs_ctr:rs_port>,<contenttweaker:jump_module>,<rs_ctr:rs_port:1>]
        ]
    ],
    <rs_ctr:cl_fuel> * 4 : [
        [
            [<ic2:blockutility:3>,<cd4017be_lib:m:402>,<ic2:blockutility:3>],
            [<cd4017be_lib:m:402>,<minecraft:ender_eye>,<cd4017be_lib:m:402>],
            [<ic2:blockutility:3>,<cd4017be_lib:m:402>,<ic2:blockutility:3>]
        ]
    ],
    <rs_ctr:block_breaker1> : [
        [
            [<minecraft:golden_pickaxe>,<ore:ingotSteel>,<minecraft:hopper>],
            [<ore:ingotSteel>,<cd4017be_lib:m:401>,<ore:ingotSteel>],
            [<rs_ctr:rs_port>,<energycontrol:item_component:2>,<rs_ctr:rs_port:1>]
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
