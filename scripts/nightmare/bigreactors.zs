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
import mods.enderio.AlloySmelter;
import mods.thermalexpansion.InductionSmelter;

AtomicReconstructor.addRecipe(<bigreactors:ingotgraphite>, <quantumflux:graphitedust>, 3000);

recipes.remove(<bigreactors:reactorcontroller>);
BloodAltar.addRecipe(<bigreactors:reactorcontroller>, <ic2:blockmachinemv:10>, 4, 100000,100,50);

recipes.remove(<bigreactors:turbinecontroller>);
BloodAltar.addRecipe(<bigreactors:turbinecontroller>, <ic2:blockgenerator:7>, 4, 100000,100,50);

recipes.removeShaped(<bigreactors:ingotblutonium>);
InductionSmelter.addRecipe(<bigreactors:ingotblutonium>,<bigreactors:ingotcyanite>,<contenttweaker:plutonium>,5000);

recipes.removeShaped(<bigreactors:blockludicrite>);
AlloySmelter.addRecipe(<bigreactors:ingotludicrite>,[<ore:ingotUUMatter>,<advancedsolars:enrichedsunnarium>,<ore:ingotBlutonium>],500000);

var recipeMapShaped as IIngredient[][][][int][IItemStack] = {
    <bigreactors:reactorcasing> : {
        4 : [
            [
                [<ic2:blockutility:2>,<ic2:itemreactorplating>,<ic2:blockutility:2>],
                [<immersiveengineering:stone_decoration:7>,<bigreactors:reactorcasingcores>,<immersiveengineering:stone_decoration:7>],
                [<ic2:blockutility:2>,<ic2:itemreactorplating>,<ic2:blockutility:2>]
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
                [<ore:plateEnergium>,<ic2:ic2upgrades:12>,<ore:plateEnergium>],
                [<contenttweaker:electric_motor>,<bigreactors:reactorcasing>,<contenttweaker:electric_motor>],
                [<ore:plateEnergium>,<immersiveengineering:graphite_electrode>,<ore:plateEnergium>]
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
    },
    <bigreactors:turbinefluidport> : {
        1 : [
            [
                [<ic2:ic2upgrades:21>],
                [<bigreactors:turbinehousing>],
                [<ic2:ic2upgrades:23>]
            ]
        ]
    },
    <bigreactors:turbinecomputerport> : {
        1 : [
            [
                [<bigreactors:turbinehousing>,<opencomputers:component:3>,<bigreactors:turbinehousing>],
                [<openmodularturrets:intermediate_regular>,<opencomputers:component>,<openmodularturrets:intermediate_regular>],
                [<bigreactors:turbinehousing>,<opencomputers:card:6>,<bigreactors:turbinehousing>]
            ]
        ]
    },
    <bigreactors:turbineglass> : {
        2 : [
            [
                [<bigreactors:turbinehousing>,<ic2:blockutility:3>,<bigreactors:turbinehousing>]
            ]
        ]
    },
    <bigreactors:turbinebearing> : {
        1 : [
            [
                [<ore:plateEnergium>,<bigreactors:turbinerotorshaft>,<ore:plateEnergium>],
                [<immersiveengineering:metal_decoration0:6>,<bigreactors:turbinehousing>,<immersiveengineering:metal_decoration0:6>],
                [<ore:plateEnergium>,<immersiveengineering:metal_decoration0:6>,<ore:plateEnergium>]
            ]
        ]
    },
    <bigreactors:turbinehousing> : {
        4 : [
            [
                [<ic2:blockutility:2>,<pressure:interface>,<ic2:blockutility:2>],
                [<ore:plateTungsten>,<bigreactors:turbinehousingcores>,<ore:plateTungsten>],
                [<ic2:blockutility:2>,<pressure:interface>,<ic2:blockutility:2>]
            ]
        ]
    },
    <bigreactors:turbinerotorblade> : {
        1 : [
            [
                [<ore:ingotCyanite>,<contenttweaker:iron_rotor_blade>,<contenttweaker:iron_rotor_blade>],
                [<ore:stickSteel>,<contenttweaker:iron_rotor_blade>,<contenttweaker:iron_rotor_blade>]
            ]
        ]
    },
    <bigreactors:turbinerotorshaft> : {
        1 : [
            [
                [null,<ore:plateTungsten>,null],
                [<ore:plateTungsten>,<immersiveengineering:material:9>,<ore:plateTungsten>],
                [null,<ore:plateTungsten>,null]
            ]
        ]
    },
    <bigreactors:turbinepowertaprf> : {
        1 : [
            [
                [<contenttweaker:energy_module>],
                [<bigreactors:turbinehousing>],
                [<thermalexpansion:frame:147>]
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
