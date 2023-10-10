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

import mods.botania.RuneAltar;
import mods.bloodmagic.AlchemyTable;
import mods.enderio.AlloySmelter;
import mods.energycontrol.KitAssembler;
import mods.extrautils2.Resonator;
import mods.forestry.ThermionicFabricator;

import scripts.functions.calc_atomic;

recipes.remove(<enderutilities:enderpart>);
AlloySmelter.addRecipe(<enderutilities:enderpart> * 2, [<contenttweaker:ender_ingot>,<contenttweaker:reinforcediron_ingot>,<contenttweaker:enrichedgold_ingot>], 15000);

recipes.remove(<enderutilities:enderpart:1>);
AlloySmelter.addRecipe(<enderutilities:enderpart:1> * 2, [<enderutilities:enderpart>,<ore:ingotEnderium>,<quantumflux:craftingpiece:3>], 15000);

recipes.remove(<enderutilities:enderpart:2>);
AlloySmelter.addRecipe(<enderutilities:enderpart:2> * 2, [<enderutilities:enderpart:1>,<ore:ingotEndSteel>,<ic2:itemmisc:59>], 15000);

Resonator.add(<enderutilities:enderpart:15>, <enderutilities:enderpart:10>, 12800, false);
Resonator.add(<enderutilities:enderpart:16>, <enderutilities:enderpart:11>, 25600, false);
Resonator.add(<enderutilities:enderpart:17>, <enderutilities:enderpart:12>, 51200, false);

recipes.remove(<enderutilities:enderbucket>);
calc_atomic(<enderutilities:enderbucket>, <randomthings:reinforcedenderbucket>, <enderutilities:enderpart:10>, <enderutilities:enderpart>);

recipes.remove(<enderutilities:portal_panel>);
calc_atomic(<enderutilities:portal_panel>,<enderutilities:frame>,<contenttweaker:advanced_assembly>,<enderutilities:enderpart:16>);

recipes.removeShaped(<enderutilities:enderpart:51>);
KitAssembler.addRecipe(<contenttweaker:storage_module>, <enderutilities:enderpart>, <enderutilities:enderpart:50>, <enderutilities:enderpart:51>, 600);

recipes.remove(<enderutilities:enderpart:53>*2);
KitAssembler.addRecipe(<contenttweaker:storage_module>, <enderutilities:enderpart:2>, <enderutilities:enderpart:50>, <enderutilities:enderpart:53>, 600);

recipes.remove(<enderutilities:frame>);
RuneAltar.addRecipe(<enderutilities:frame>*8, [
    <enderutilities:enderpart>,
    <enderutilities:enderpart>,
    <enderutilities:enderpart>,
    <enderutilities:enderpart>,
    <bloodmagic:teleposition_focus:1>,
    <contenttweaker:purifiedobsidian>,
    <contenttweaker:purifiedobsidian>,
    <contenttweaker:purifiedobsidian>,
    <contenttweaker:purifiedobsidian>
], 12500);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <enderutilities:enderpart:10> : [
        [
            [<contenttweaker:reinforced_obsidian_ingot>,<enderutilities:enderpart>,<contenttweaker:reinforced_obsidian_ingot>],
            [<enderutilities:enderpart>,<extrautils2:ingredients:2>,<enderutilities:enderpart>],
            [<contenttweaker:reinforced_obsidian_ingot>,<enderutilities:enderpart>,<contenttweaker:reinforced_obsidian_ingot>]
        ]
    ],
    <enderutilities:enderpart:11> : [
        [
            [<contenttweaker:reinforced_obsidian_ingot>,<enderutilities:enderpart:1>,<contenttweaker:reinforced_obsidian_ingot>],
            [<enderutilities:enderpart:1>,<enderutilities:enderpart:10>,<enderutilities:enderpart:1>],
            [<contenttweaker:reinforced_obsidian_ingot>,<enderutilities:enderpart:1>,<contenttweaker:reinforced_obsidian_ingot>]
        ]
    ],
    <enderutilities:enderpart:12> : [
        [
            [<contenttweaker:reinforced_obsidian_ingot>,<enderutilities:enderpart:2>,<contenttweaker:reinforced_obsidian_ingot>],
            [<enderutilities:enderpart:2>,<enderutilities:enderpart:11>,<enderutilities:enderpart:2>],
            [<contenttweaker:reinforced_obsidian_ingot>,<enderutilities:enderpart:2>,<contenttweaker:reinforced_obsidian_ingot>]
        ]
    ],
    <enderutilities:enderpart:20> : [
        [
            [null,<forestry:crafting_material:1>,<evilcraft:dark_stick>],
            [<forestry:crafting_material:1>,<enderutilities:enderpart>,<forestry:crafting_material:1>],
            [<evilcraft:dark_stick>,<forestry:crafting_material:1>,null]
        ]
    ],
    <enderutilities:enderpart:21> : [
        [
            [<contenttweaker:cordage_fiber>,<forestry:crafting_material:3>,<contenttweaker:cordage_fiber>],
            [<forestry:crafting_material:1>,<enderutilities:enderpart:10>,<forestry:crafting_material:1>],
            [<contenttweaker:cordage_fiber>,<forestry:crafting_material:3>,<contenttweaker:cordage_fiber>]
        ]
    ],
    <enderutilities:enderpart:40> : [
        [
            [<enderutilities:enderpart:2>,<minecraft:end_crystal>,<enderutilities:enderpart:2>],
            [<minecraft:end_crystal>,<contenttweaker:ender_star>,<minecraft:end_crystal>],
            [<enderutilities:enderpart:2>,<minecraft:end_crystal>,<enderutilities:enderpart:2>]
        ]
    ],
    <enderutilities:linkcrystal> : [
        [
            [<randomthings:runedust:13>,<randomthings:runedust:13>,<randomthings:runedust:13>],
            [<randomthings:runedust:13>,<enderutilities:enderpart:10>,<randomthings:runedust:13>],
            [<randomthings:runedust:13>,<randomthings:runedust:13>,<randomthings:runedust:13>]
        ]
    ],
    <enderutilities:linkcrystal:1> : [
        [
            [<randomthings:runedust:11>,<randomthings:runedust:11>,<randomthings:runedust:11>],
            [<randomthings:runedust:11>,<enderutilities:enderpart:10>,<randomthings:runedust:11>],
            [<randomthings:runedust:11>,<randomthings:runedust:11>,<randomthings:runedust:11>]
        ]
    ],
    <enderutilities:linkcrystal:2> : [
        [
            [<randomthings:runedust:10>,<randomthings:runedust:10>,<randomthings:runedust:10>],
            [<randomthings:runedust:10>,<enderutilities:enderpart:10>,<randomthings:runedust:10>],
            [<randomthings:runedust:10>,<randomthings:runedust:10>,<randomthings:runedust:10>]
        ]
    ],
    <enderutilities:barrel> : [
        [
            [<immersiveengineering:wooden_device0>,<enderutilities:enderpart>,<immersiveengineering:wooden_device0>],
            [<immersiveengineering:wooden_device0>,<storagedrawers:customdrawers>,<immersiveengineering:wooden_device0>],
            [<immersiveengineering:wooden_device0>,<enderutilities:enderpart>,<immersiveengineering:wooden_device0>]
        ]
    ],
    <enderutilities:floor:1> : [
        [
            [<bibliocraft:framingboard>,<bibliocraft:framingboard>,<bibliocraft:framingboard>],
            [null,<ore:stickTreatedWood>,null],
            [<bibliocraft:framingboard>,<bibliocraft:framingboard>,<bibliocraft:framingboard>]
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

recipes.remove(<enderutilities:storage_0>);
AlchemyTable.addRecipe(<enderutilities:storage_0>, [
    <appliedenergistics2:sky_stone_chest>,
    <enderutilities:enderpart>,
    <bloodmagic:slate:1>,
    <contenttweaker:storage_module>,
    <minecraft:repeater>,
    <enderutilities:enderpart:50>
], 1000, 100, 1);

recipes.remove(<enderutilities:storage_0:1>);
AlchemyTable.addRecipe(<enderutilities:storage_0:1>, [
    <enderutilities:storage_0>,
    <enderutilities:enderpart:1>,
    <bloodmagic:slate:1>,
    <contenttweaker:storage_module>,
    <minecraft:repeater>,
    <enderutilities:enderpart:50>
], 1000, 100, 2);

recipes.remove(<enderutilities:storage_0:2>);
AlchemyTable.addRecipe(<enderutilities:storage_0:2>, [
    <enderutilities:storage_0:1>,
    <enderutilities:enderpart:2>,
    <bloodmagic:slate:1>,
    <contenttweaker:storage_module>,
    <minecraft:repeater>,
    <enderutilities:enderpart:50>
], 1000, 100, 3);

recipes.remove(<enderutilities:storage_0:3>);
AlchemyTable.addRecipe(<enderutilities:storage_0:3> * 2, [
    <appliedenergistics2:sky_stone_chest>,
    <appliedenergistics2:sky_stone_chest>,
    <bloodmagic:slate:1>,
    <contenttweaker:storage_module>,
    <extrautils2:ingredients:2>,
   <ic2:itemmemorystick>
], 1000, 100, 1);

recipes.remove(<enderutilities:storage_0:4>);
AlchemyTable.addRecipe(<enderutilities:storage_0:4> * 2, [
    <enderutilities:storage_0:3>,
    <enderutilities:storage_0:3>,
    <bloodmagic:slate:2>,
    <contenttweaker:storage_module>,
    <enderutilities:enderpart:10>,
   <ic2:itemmemorystick>
], 1000, 100, 2);

recipes.remove(<enderutilities:storage_0:5>);
AlchemyTable.addRecipe(<enderutilities:storage_0:5> * 2, [
    <enderutilities:storage_0:4>,
    <enderutilities:storage_0:4>,
    <bloodmagic:slate:3>,
    <contenttweaker:storage_module>,
    <enderutilities:enderpart:11>,
   <ic2:itemmemorystick>
], 1000, 100, 3);

recipes.remove(<enderutilities:storage_0:6>);
AlchemyTable.addRecipe(<enderutilities:storage_0:6> * 2, [
    <enderutilities:storage_0:5>,
    <enderutilities:storage_0:5>,
    <bloodmagic:slate:4>,
    <contenttweaker:storage_module>,
    <enderutilities:enderpart:12>,
   <ic2:itemmemorystick>
], 1000, 100, 4);

var mapMemory as int[IItemStack] = {
    <opencomputers:component:6> : 2,
    <opencomputers:component:7> : 4,
    <opencomputers:component:8> : 8,
    <opencomputers:component:9> : 16,
    <opencomputers:component:10> : 32,
    <opencomputers:component:11> : 64,
};

recipes.remove(<enderutilities:enderpart:50>);
for ram, modifier in mapMemory {
    ThermionicFabricator.addCast(<enderutilities:enderpart:50> * modifier, [
        [<ore:nuggetGold>,<rs_ctr:rs_port:2>,<ore:nuggetGold>],
        [<contenttweaker:plastic>,ram,<contenttweaker:plastic>],
        [<enderutilities:enderpart>,<rftools:storage_control_module>,<enderutilities:enderpart>]
    ], <liquid:glass> * 500);
}
