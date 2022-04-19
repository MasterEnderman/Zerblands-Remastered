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

import scripts.functions.calc_basic;
import scripts.functions.calc_atomic;
import scripts.functions.calc_flawless;

JEI.removeAndHide(<woot:fakemanual>);

var shardT2 as IIngredient = <minecraft:blaze_rod>|<woot:shard:4>;
var shardT3 as IIngredient = <minecraft:ender_pearl>|<woot:shard:5>;
var shardT4 as IIngredient = <woot:shard:3>|<woot:shard:6>;

recipes.remove(<woot:stygianironplate>);
<ore:ingotStygian>.add(<woot:stygianironingot>);
<ore:plateStygian>.add(<woot:stygianironplate>);
<ore:blockStygian>.add(<woot:stygianiron>);
<ore:oreStygian>.add(<woot:stygianironore>);

recipes.remove(<woot:layout>);
calc_basic(<woot:layout>,<woot:factorybase>,<opencomputers:hologram1>);

recipes.remove(<woot:builder>);
calc_basic(<woot:builder>,<woot:layout>,<woot:yahhammer>);

recipes.remove(<woot:exporter>);
calc_atomic(<woot:exporter>,<woot:factorybase>,<ic2:ic2upgrades:7>,<ic2:ic2upgrades:23>);

recipes.remove(<woot:importer>);
calc_atomic(<woot:importer>,<woot:factorybase>,<ic2:ic2upgrades:5>,<ic2:ic2upgrades:21>);

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
    ],
    <woot:structure> : [
        [
            [<ore:ingotConstructionAlloy>,<minecraft:rotten_flesh>,<ore:ingotConstructionAlloy>],
            [<minecraft:rotten_flesh>,<woot:factorybase>,<minecraft:rotten_flesh>],
            [<ore:ingotConstructionAlloy>,<minecraft:rotten_flesh>,<ore:ingotConstructionAlloy>]
        ]
    ],
    <woot:structure:1> : [
        [
            [<ore:ingotConstructionAlloy>,<minecraft:bone>,<ore:ingotConstructionAlloy>],
            [<minecraft:bone>,<woot:structure>,<minecraft:bone>],
            [<ore:ingotConstructionAlloy>,<minecraft:bone>,<ore:ingotConstructionAlloy>]
        ]
    ],
    <woot:structure:2> : [
        [
            [<ore:ingotConstructionAlloy>,shardT2,<ore:ingotConstructionAlloy>],
            [shardT2,<woot:structure:1>,shardT2],
            [<ore:ingotConstructionAlloy>,shardT2,<ore:ingotConstructionAlloy>]
        ]
    ],
    <woot:structure:3> : [
        [
            [<ore:ingotConstructionAlloy>,shardT3,<ore:ingotConstructionAlloy>],
            [shardT3,<woot:structure:2>,shardT3],
            [<ore:ingotConstructionAlloy>,shardT3,<ore:ingotConstructionAlloy>]
        ]
    ],
    <woot:structure:4> : [
        [
            [<ore:ingotConstructionAlloy>,shardT4,<ore:ingotConstructionAlloy>],
            [shardT4,<woot:structure:3>,shardT4],
            [<ore:ingotConstructionAlloy>,shardT4,<ore:ingotConstructionAlloy>]
        ]
    ],
    <woot:structure:5> : [
        [
            [<ore:ingotConstructionAlloy>,<minecraft:spider_eye>,<ore:ingotConstructionAlloy>],
            [<minecraft:spider_eye>,<woot:structure>,<minecraft:spider_eye>],
            [<ore:ingotConstructionAlloy>,<minecraft:spider_eye>,<ore:ingotConstructionAlloy>]
        ]
    ],
    <woot:structure:6> : [
        [
            [<woot:shard:2>,<minecraft:skull>,<woot:shard:2>],
            [<woot:factorybase>,<woot:factorycore:6>,<woot:factorybase>],
            [<woot:shard:2>,<bloodmagic:decorative_brick>,<woot:shard:2>]
        ]
    ],
    <woot:structure:7> : [
        [
            [<woot:shard>,<minecraft:skull:2>,<woot:shard>],
            [<woot:factorybase>,<woot:structure:6>,<woot:factorybase>],
            [<woot:shard>,<bloodmagic:decorative_brick>,<woot:shard>]
        ]
    ],
    <woot:structure:8> : [
        [
            [<woot:shard:1>,<minecraft:skull:4>,<woot:shard:1>],
            [<woot:factorybase>,<woot:structure:7>,<woot:factorybase>],
            [<woot:shard:1>,<bloodmagic:decorative_brick>,<woot:shard:1>]
        ]
    ],
    <woot:structure:9> : [
        [
            [<woot:shard:3>,<minecraft:skull:1>,<woot:shard:3>],
            [<woot:factorybase>,<woot:structure:8>,<woot:factorybase>],
            [<woot:shard:3>,<bloodmagic:decorative_brick>,<woot:shard:3>]
        ]
    ],
    <woot:yahhammer> : [
        [
            [null,<woot:stygianiron>,<contenttweaker:corruptedstarmetal>],
            [null,<enderio:item_material:8>,<woot:stygianiron>],
            [<enderio:item_material:8>,null,null]
        ]
    ],
    <woot:cell> : [
        [
            [<rftoolspower:power_core1>,<gendustry:power_module>,<rftoolspower:power_core1>],
            [<rftoolspower:power_core1>,<woot:factorycore:5>,<rftoolspower:power_core1>],
            [<rftoolspower:power_core1>,<gendustry:power_module>,<rftoolspower:power_core1>]
        ]
    ],
    <woot:cell:1> : [
        [
            [<rftoolspower:power_core2>,<gendustry:power_module>,<rftoolspower:power_core2>],
            [<rftoolspower:power_core2>,<woot:cell>,<rftoolspower:power_core2>],
            [<rftoolspower:power_core2>,<gendustry:power_module>,<rftoolspower:power_core2>]
        ]
    ],
    <woot:cell:2> : [
        [
            [<rftoolspower:power_core3>,<gendustry:power_module>,<rftoolspower:power_core3>],
            [<rftoolspower:power_core3>,<woot:cell:1>,<rftoolspower:power_core3>],
            [<rftoolspower:power_core3>,<gendustry:power_module>,<rftoolspower:power_core3>]
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

recipes.remove(<woot:prism>);
calc_flawless(<woot:prism>, <contenttweaker:crystal_prism>, <contenttweaker:alfsteel_ingot>, <botania:prism>, <valkyrielib:modifier_component>);

recipes.remove(<woot:stygianironore>);
RuneAltar.addRecipe(<woot:stygianironore>, [<minecraft:iron_ore>, <minecraft:soul_sand>, <minecraft:netherrack>], 15000);

recipes.remove(<woot:factory>);
RuneAltar.addRecipe(<woot:factory>, [<woot:structure:4>,<enderio:item_material:42>,<contenttweaker:malignant_heart>,<woot:factorycore>,<draconicevolution:draconic_core>,<ic2:itemmisc:452>], 250000);
