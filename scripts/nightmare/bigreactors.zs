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

import mods.actuallyadditions.AtomicReconstructor;
import mods.bloodmagic.BloodAltar;

AtomicReconstructor.addRecipe(<bigreactors:ingotgraphite>, <quantumflux:graphitedust>, 3000);

recipes.remove(<bigreactors:reactorcontroller>);
BloodAltar.addRecipe(<bigreactors:reactorcontroller>, <ic2:blockmachinemv:10>, 4, 100000,100,50);

var recipeMapShaped as IIngredient[][][][int][IItemStack] = {
    <bigreactors:reactorcasing> : {
        4 : [
            [
                [<ic2:blockutility:2>,<ore:ingotGraphite>,<ic2:blockutility:2>],
                [<immersiveengineering:stone_decoration:7>,<bigreactors:reactorcasingcores>,<immersiveengineering:stone_decoration:7>],
                [<ic2:blockutility:2>,<ore:ingotGraphite>,<ic2:blockutility:2>]
            ]
        ]
    },
    <bigreactors:reactorglass> : {
        2 : [
            [
                [<bigreactors:reactorcasing>,<ic2:blockutility:3>,<bigreactors:reactorcasing>]
            ]
        ]
    },
    <bigreactors:reactoraccessport> : {
        1 : [
            [
                [<ic2:ic2upgrades:5>],
                [<bigreactors:reactorcasing>],
                [<ic2:ic2upgrades:7>]
            ]
        ]
    },
    <bigreactors:reactorcoolantport> : {
        1 : [
            [
                [<ic2:ic2upgrades:21>],
                [<bigreactors:reactorcasing>],
                [<ic2:ic2upgrades:23>]
            ]
        ]
    },
    <bigreactors:reactorpowertaprf> : {
        1 : [
            [
                [<contenttweaker:energy_module>],
                [<bigreactors:reactorcasing>],
                [<thermalexpansion:frame:147>]
            ]
        ]
    },
    <bigreactors:reactorredstoneport> : {
        1 : [
            [
                [<ic2:ic2upgrades:3>],
                [<bigreactors:reactorcasing>],
                [<ic2:ic2upgrades:12>]
            ]
        ]
    },
    <bigreactors:reactorcomputerport> : {
        1 : [
            [
                [<bigreactors:reactorcasing>,<opencomputers:component:3>,<bigreactors:reactorcasing>],
                [<openmodularturrets:intermediate_regular>,<opencomputers:component>,<openmodularturrets:intermediate_regular>],
                [<bigreactors:reactorcasing>,<opencomputers:card:6>,<bigreactors:reactorcasing>]
            ]
        ]
    },
    <bigreactors:reactorcontrolrod> : {
        1 : [
            [
                [null,<ic2:ic2upgrades:12>,null],
                [<contenttweaker:electric_motor>,<bigreactors:reactorcasing>,<contenttweaker:electric_motor>],
                [null,<immersiveengineering:graphite_electrode>,null]
            ]
        ]
    },
    <bigreactors:reactorfuelrod> : {
        1 : [
            [
                [<pressure:tank_wall>,<ore:plateIridium>,<pressure:tank_wall>],
                [<ore:platePlatinum>,<ic2:itemcellempty>,<ore:platePlatinum>],
                [<pressure:tank_wall>,<ore:plateIridium>,<pressure:tank_wall>]
            ]
        ]
    }
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
