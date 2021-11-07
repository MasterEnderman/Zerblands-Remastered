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

import mods.astralsorcery.Altar;
import mods.botania.RuneAltar;
import mods.jei.JEI;

import scripts.functions.calc_flawless;

JEI.removeAndHide(<woot:fakemanual>);

recipes.remove(<woot:stygianironplate>);
<ore:ingotStygian>.add(<woot:stygianironingot>);
<ore:plateStygian>.add(<woot:stygianironplate>);
<ore:blockStygian>.add(<woot:stygianiron>);
<ore:oreStygian>.add(<woot:stygianironore>);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <woot:anvil> : [
        [
            [<woot:stygianiron>,<woot:stygianiron>,<woot:stygianiron>],
            [null,<enderio:block_dark_steel_anvil>,null],
            [<minecraft:obsidian>,<contenttweaker:purifiedobsidian>,<minecraft:obsidian>]
        ]
    ],
    <woot:soulstone> : [
        [
            [<woot:soulsanddust>,<woot:soulsanddust>,<woot:soulsanddust>],
            [<woot:soulsanddust>,<contenttweaker:runestone>,<woot:soulsanddust>],
            [<woot:soulsanddust>,<woot:soulsanddust>,<woot:soulsanddust>]
        ]
    ],
    <woot:factorybase> : [
        [
            [<woot:soulstone>,<ore:plateStygian>,<woot:soulstone>],
            [<ore:plateStygian>,<environmentaltech:interconnect>,<ore:plateStygian>],
            [<woot:soulstone>,<ore:plateStygian>,<woot:soulstone>]
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

recipes.remove(<woot:prism>);
calc_flawless(<woot:prism>, <contenttweaker:crystal_prism>, <contenttweaker:alfsteel_ingot>, <botania:prism>, <valkyrielib:modifier_component>);

recipes.remove(<woot:stygianironore>);
RuneAltar.addRecipe(<woot:stygianironore>, [<minecraft:iron_ore>, <minecraft:soul_sand>, <minecraft:netherrack>], 15000);
