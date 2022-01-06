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
import mods.immersiveengineering.BottlingMachine;
import mods.tconstruct.Casting;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;

JEI.removeAndHide(<tp:juicer>);
JEI.removeAndHide(<tp:stone_hammer>);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <tp:cobblegen_block> : [
        [
            [<hammercore:iron_bordered_cobblestone>,<botania:rune>,<hammercore:iron_bordered_cobblestone>],
            [<hammercore:iron_bordered_cobblestone>,<extrautils2:decorativeglass:5>,<hammercore:iron_bordered_cobblestone>],
            [<hammercore:iron_bordered_cobblestone>,<botania:rune:1>,<hammercore:iron_bordered_cobblestone>]
        ],
        [
            [<hammercore:iron_bordered_cobblestone>,<botania:rune:1>,<hammercore:iron_bordered_cobblestone>],
            [<hammercore:iron_bordered_cobblestone>,<extrautils2:decorativeglass:5>,<hammercore:iron_bordered_cobblestone>],
            [<hammercore:iron_bordered_cobblestone>,<botania:rune>,<hammercore:iron_bordered_cobblestone>]
        ]
    ],
    <tp:iron_cobblegen_block> : [
        [
            [<hammercore:quartz_bordered_cobblestone>,<tp:cobblegen_block>,<hammercore:quartz_bordered_cobblestone>],
            [<hammercore:quartz_bordered_cobblestone>,<minecraft:quartz>,<hammercore:quartz_bordered_cobblestone>],
            [<hammercore:quartz_bordered_cobblestone>,<tp:cobblegen_block>,<hammercore:quartz_bordered_cobblestone>]
        ]
    ],
    <tp:diamond_cobblegen_block> : [
        [
            [<hammercore:diamond_bordered_cobblestone>,<tp:iron_cobblegen_block>,<hammercore:diamond_bordered_cobblestone>],
            [<hammercore:diamond_bordered_cobblestone>,<botania:quartz:1>,<hammercore:diamond_bordered_cobblestone>],
            [<hammercore:diamond_bordered_cobblestone>,<tp:iron_cobblegen_block>,<hammercore:diamond_bordered_cobblestone>]
        ]
    ],
    <tp:blaze_cobblegen_block> : [
        [
            [<hammercore:gold_bordered_cobblestone>,<tp:diamond_cobblegen_block>,<hammercore:gold_bordered_cobblestone>],
            [<hammercore:gold_bordered_cobblestone>,<botania:quartz:2>,<hammercore:gold_bordered_cobblestone>],
            [<hammercore:gold_bordered_cobblestone>,<tp:diamond_cobblegen_block>,<hammercore:gold_bordered_cobblestone>]
        ]
    ],
    <tp:emerald_cobblegen_block> : [
        [
            [<hammercore:emerald_bordered_cobblestone>,<tp:blaze_cobblegen_block>,<hammercore:emerald_bordered_cobblestone>],
            [<hammercore:emerald_bordered_cobblestone>,<botania:quartz:5>,<hammercore:emerald_bordered_cobblestone>],
            [<hammercore:emerald_bordered_cobblestone>,<tp:blaze_cobblegen_block>,<hammercore:emerald_bordered_cobblestone>]
        ]
    ],
    <tp:growth_block> : [
        [
            [<tp:dirty_glass>,<minecraft:sea_lantern>,<tp:dirty_glass>],
            [<minecraft:bone_block>,<xreliquary:fertile_lilypad>,<minecraft:bone_block>],
            [<tp:dirty_glass>,<minecraft:sea_lantern>,<tp:dirty_glass>]
        ]
    ],
    <tp:growth_upgrade> : [
        [
            [<tp:growth_block>,<botania:overgrowthseed>,<tp:growth_block>],
            [<botania:rune:2>,<tp:netherstar_block>,<botania:rune:2>],
            [<tp:growth_block>,<botania:overgrowthseed>,<tp:growth_block>]
        ]
    ],
    <tp:growth_upgrade_two> : [
        [
            [<bloodmagic:component:5>,<tp:growth_upgrade>,<bloodmagic:component:5>],
            [<draconicevolution:draconic_core>,<randomthings:naturecore>,<draconicevolution:draconic_core>],
            [<bloodmagic:component:5>,<tp:growth_upgrade>,<bloodmagic:component:5>]
        ]
    ],
    <tp:soul_sandstone> : [
        [
            [<minecraft:soul_sand>,<minecraft:soul_sand>],
            [<minecraft:soul_sand>,<minecraft:soul_sand>]
        ]
    ],
    <tp:watering_can> : [
        [
            [<immersiveengineering:metal_device1:6>,<botania:rune>,null],
            [<ore:plateIron>,<extrautils2:wateringcan>,<ore:plateIron>],
            [null,<ore:plateIron>,null]
        ]
    ],
    <tp:watering_can_upgrade> : [
        [
            [<contenttweaker:reinforced_obsidian_ingot>,<xreliquary:emperor_chalice>.noReturn(),null],
            [<contenttweaker:reinforced_obsidian_ingot>,<tp:watering_can>,<contenttweaker:reinforced_obsidian_ingot>],
            [null,<contenttweaker:purifiedobsidian>,null]
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

recipes.remove(<tp:dirty_glass>);
Casting.addBasinRecipe(<tp:dirty_glass>, <extrautils2:decorativeglass:0>, <liquid:dirt>, 576, true, 200);
BottlingMachine.addRecipe(<tp:dirty_glass>, <extrautils2:decorativeglass:0>, <liquid:dirt> * 576);
Transposer.addFillRecipe(<tp:dirty_glass>, <extrautils2:decorativeglass:0>, <liquid:dirt> * 576, 2000);

recipes.remove(<tp:asphalt_block>);
Casting.addBasinRecipe(<tp:asphalt_block>, <immersivepetroleum:stone_decoration>, <liquid:lubricant>, 500, true, 200);
BottlingMachine.addRecipe(<tp:asphalt_block>, <immersivepetroleum:stone_decoration>, <liquid:lubricant> * 500);
Transposer.addFillRecipe(<tp:asphalt_block>, <immersivepetroleum:stone_decoration>, <liquid:lubricant> * 500, 2000);

recipes.remove(<tp:lava_infused_stone>);
calc_basic(<tp:lava_infused_stone>,<contenttweaker:magma_soaked_cobblestone>,<botania:rune:1>);

var subid as int[] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

for x in subid {
    var glass as IItemStack = getItemMeta("minecraft", "stained_glass", x);
    var lantern as IItemStack = getItemMeta("tp", "colored_lamp", x);

    recipes.remove(lantern);
    calc_basic(lantern, <ore:torch>, glass);
}

recipes.remove(<tp:lamp>);
calc_basic(<tp:lamp>, <ore:torch>, <minecraft:glass>);

recipes.remove(<tp:quick_sand>);
calc_basic(<tp:quick_sand>, <ore:sand>, <ore:dirt>);
