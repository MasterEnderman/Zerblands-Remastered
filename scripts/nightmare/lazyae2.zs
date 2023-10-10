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

import mods.enderio.AlloySmelter;
import mods.forestry.ThermionicFabricator;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.BlastFurnace;
import mods.threng.Aggregator;
import mods.threng.Etcher;

Aggregator.removeRecipe(<threng:material>);
Aggregator.removeRecipe(<threng:material:1>);
// Aggregator.removeRecipe(<threng:material:2>);

Aggregator.removeRecipe(<threng:material:5>);
Aggregator.addRecipe(<threng:material:5>,<astralsorcery:itemcraftingcomponent:4>,<bloodmagic:lava_crystal>,<appliedenergistics2:material:45>);

AlloySmelter.addRecipe(<threng:material:2>, [<ore:ingotRefinedIron>,<appliedenergistics2:material:45>,<threng:material:1>], 15000);

recipes.remove(<threng:material:1>);
recipes.addShapeless(<threng:material:1> * 2, [
    <astralsorcery:itemcraftingcomponent:2>,
    <contenttweaker:sodium_dust>,
    <appliedenergistics2:material:5>,
    <appliedenergistics2:material:8>,
    <immersiveengineering:material:18>,
    <ic2:itemmisc:455>
]);

furnace.remove(<threng:material>);
BlastFurnace.addRecipe(<threng:material>, <threng:material:2>, 4000, <thermalfoundation:material:864>);
ArcFurnace.addRecipe(<threng:material>,<threng:material:2>,<thermalfoundation:material:864>, 400, 512);

recipes.remove(<threng:material:4>);
ThermionicFabricator.addCast(<threng:material:4>, [
    [<threng:material>,<contenttweaker:elementiumprocessor>,<threng:material>],
    [<ic2:itemheatvent:23>,<contenttweaker:terrasteelprocessor>,<ic2:itemheatvent:23>],
    [<threng:material>,<contenttweaker:elementiumprocessor>,<threng:material>]
], <liquid:glass> * 500);

var mapSpeculation as IIngredient[][IItemStack] = {
    <threng:material:8> : [<appliedenergistics2:material:23>,<threng:material:7>],
    <threng:material:9> : [<appliedenergistics2:material:22>,<threng:material:8>],
    <threng:material:10> : [<appliedenergistics2:material:24>,<threng:material:9>],
    <threng:material:11> : [<contenttweaker:elementiumprocessor>,<threng:material:10>],
    <threng:material:12> : [<contenttweaker:terrasteelprocessor>,<threng:material:11>],
    <threng:material:13> : [<threng:material:6>,<threng:material:12>]
};

for output, data in mapSpeculation {
    recipes.remove(output);
    Etcher.addRecipe(output, data[0], <ic2:itemmisc:202>, data[1]);
    recipes.addShaped(output, [
        [null,data[0],null],
        [data[1],<ic2:itemmisc:202>,data[1]],
        [null,data[0],null]
    ]); 
}

var recipeMapShaped as IIngredient[][][][int][IItemStack] = {
    <threng:big_assembler> : {
        4 : [
            [
                [<ore:ingotFluixSteel>,<bloodmagic:component:10>,<ore:ingotFluixSteel>],
                [<bloodmagic:component:10>,<opencomputers:upgrade:11>,<bloodmagic:component:10>],
                [<ore:ingotFluixSteel>,<bloodmagic:component:10>,<ore:ingotFluixSteel>]
            ]
        ]
    },
    <threng:big_assembler:1> : {
        4 : [
            [
                [<threng:big_assembler>,<ic2:itemheatvent:23>,<threng:big_assembler>],
                [<ic2:reactorventspread>,<ic2:itemheatswtiches:3>,<ic2:reactorventspread>],
                [<threng:big_assembler>,<ic2:itemheatvent:23>,<threng:big_assembler>]
            ]
        ]
    },
    <threng:big_assembler:3> : {
        1 : [
            [
                [<threng:big_assembler>,<contenttweaker:terrasteelprocessor>,<threng:big_assembler>],
                [<contenttweaker:storage_module>,<contenttweaker:data_orb>,<contenttweaker:storage_module>],
                [<threng:big_assembler>,<appliedenergistics2:interface>,<threng:big_assembler>]
            ]
        ]
    },
    <threng:big_assembler:4> : {
        1 : [
            [
                [<threng:big_assembler>,<appliedenergistics2:molecular_assembler>,<threng:big_assembler>],
                [<threng:material:6>,<contenttweaker:data_control_circuit>,<threng:material:6>],
                [<threng:big_assembler>,<appliedenergistics2:crafting_accelerator>,<threng:big_assembler>]
            ]
        ]
    },
    <threng:big_assembler:2> : {
        1 : [
            [
                [<threng:big_assembler>,<appliedenergistics2:molecular_assembler>,<threng:big_assembler>],
                [<threng:material:4>,<contenttweaker:circuit8>,<threng:material:4>],
                [<threng:big_assembler>,<appliedenergistics2:controller>,<threng:big_assembler>]
            ]
        ]
    },
    <threng:machine:1> : {
        1 : [
            [
                [<appliedenergistics2:quartz_growth_accelerator>,<embers:reaction_chamber>,<appliedenergistics2:quartz_growth_accelerator>],
                [<appliedenergistics2:quartz_growth_accelerator>,<threng:material:4>,<appliedenergistics2:quartz_growth_accelerator>],
                [<appliedenergistics2:quartz_growth_accelerator>,<threng:material:6>,<appliedenergistics2:quartz_growth_accelerator>]
            ]
        ]
    },
    <threng:machine:5> : {
        1 : [
            [
                [<ore:ingotFluixSteel>,<thermalexpansion:machine:9>,<ore:ingotFluixSteel>],
                [<threng:material:4>,<forestry:flexible_casing>,<threng:material:4>],
                [<ore:ingotFluixSteel>,<appliedenergistics2:dense_energy_cell>,<ore:ingotFluixSteel>]
            ]
        ]
    },
    <threng:machine> : {
        1 : [
            [
                [<ore:ingotFluixSteel>,<appliedenergistics2:condenser>,<ore:ingotFluixSteel>],
                [<threng:material:4>,<forestry:flexible_casing>,<threng:material:4>],
                [<ore:ingotFluixSteel>,<contenttweaker:terrasteelprocessor>,<ore:ingotFluixSteel>]
            ]
        ]
    },
    <threng:machine:2> : {
        1 : [
            [
                [<ore:ingotFluixSteel>,<appliedenergistics2:inscriber>,<ore:ingotFluixSteel>],
                [<threng:material:4>,<forestry:flexible_casing>,<threng:material:4>],
                [<ore:ingotFluixSteel>,<threng:material:14>,<ore:ingotFluixSteel>]
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
