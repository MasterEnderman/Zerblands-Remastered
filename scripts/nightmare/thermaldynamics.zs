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

import mods.forestry.Carpenter;
import mods.thermalexpansion.InductionSmelter;

recipes.removeShaped(<thermaldynamics:servo:1>);
recipes.removeShaped(<thermaldynamics:servo:2>);
recipes.removeShaped(<thermaldynamics:servo:3>);
recipes.removeShaped(<thermaldynamics:servo:4>);
recipes.removeShaped(<thermaldynamics:filter:1>);
recipes.removeShaped(<thermaldynamics:filter:2>);
recipes.removeShaped(<thermaldynamics:filter:3>);
recipes.removeShaped(<thermaldynamics:filter:4>);
recipes.removeShaped(<thermaldynamics:retriever:1>);
recipes.removeShaped(<thermaldynamics:retriever:2>);
recipes.removeShaped(<thermaldynamics:retriever:3>);
recipes.removeShaped(<thermaldynamics:retriever:4>);

var recipeMapShaped as IIngredient[][][][int][IItemStack] = {
    <thermaldynamics:duct_0> : {
        3 : [
            [
                [<enderio:item_material:4>,<enderio:item_material:75>,<enderio:item_material:4>],
                [<ore:ingotConductiveIron>,<ore:gearLead>,<ore:ingotConductiveIron>],
                [<enderio:item_material:4>,<enderio:item_material:75>,<enderio:item_material:4>]
            ]
        ]
    },
    <thermaldynamics:duct_0:1> : {
        2 : [
            [
                [<enderio:item_material:4>,<enderio:item_material:75>,<enderio:item_material:4>],
                [<thermaldynamics:duct_0>,<ore:gearInvar>,<thermaldynamics:duct_0>],
                [<enderio:item_material:4>,<enderio:item_material:75>,<enderio:item_material:4>]
            ]
        ]
    },
    <thermaldynamics:duct_0:6> : {
        2 : [
            [
                [<enderio:item_material:4>,<enderio:item_material:75>,<enderio:item_material:4>],
                [<thermaldynamics:duct_0:1>,<ore:gearElectrumFlux>,<thermaldynamics:duct_0:1>],
                [<enderio:item_material:4>,<enderio:item_material:75>,<enderio:item_material:4>]
            ]
        ]
    },
    <thermaldynamics:duct_0:9> : {
        2 : [
            [
                [<ore:ingotStellarAlloy>,<ic2:blockutility:3>,<ore:ingotStellarAlloy>],
                [<ic2:blockutility:3>,<thermaldynamics:duct_0:4>,<ic2:blockutility:3>],
                [<ore:ingotStellarAlloy>,<ic2:blockutility:3>,<ore:ingotStellarAlloy>]
            ]
        ]
    },
    <thermaldynamics:servo> : {
        2 : [
            [
                [<ore:nuggetElectricalSteel>,<appliedenergistics2:quartz_glass>,<ore:nuggetElectricalSteel>],
                [<ore:ingotElectricalSteel>,<contenttweaker:module_transfer>,<ore:ingotElectricalSteel>]
            ]
        ]
    },
    <thermaldynamics:filter> : {
        2 : [
            [
                [<ore:nuggetElectricalSteel>,<appliedenergistics2:quartz_glass>,<ore:nuggetElectricalSteel>],
                [<ore:ingotElectricalSteel>,<rftools:filter_module>,<ore:ingotElectricalSteel>]
            ]
        ]
    },
    <thermaldynamics:retriever> : {
        2 : [
            [
                [<ore:nuggetElectricalSteel>,<appliedenergistics2:quartz_glass>,<ore:nuggetElectricalSteel>],
                [<ore:ingotElectricalSteel>,<extrautils2:ingredients:2>,<ore:ingotElectricalSteel>]
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

recipes.remove(<thermaldynamics:duct_0:7>);
recipes.remove(<thermaldynamics:duct_0:3>);
recipes.remove(<thermaldynamics:duct_0:8>);
recipes.remove(<thermaldynamics:duct_0:4>);

InductionSmelter.addRecipe(<thermaldynamics:duct_0:7>, <thermaldynamics:duct_0:6>, <thermalfoundation:material:165>, 4800);
InductionSmelter.addRecipe(<thermaldynamics:duct_0:3>, <thermaldynamics:duct_0:2>, <thermalfoundation:material:165>, 4800);

InductionSmelter.addRecipe(<thermaldynamics:duct_0:8>, <thermaldynamics:duct_0:7>, <redstonerepository:material:1>, 4800);
InductionSmelter.addRecipe(<thermaldynamics:duct_0:4>, <thermaldynamics:duct_0:3>, <redstonerepository:material:1>, 4800);

recipes.removeByRecipeName("thermaldynamics:duct_32");
Carpenter.addRecipe(<thermaldynamics:duct_32> * 8, [
    [<ore:plateSilver>,<ore:fusedQuartz>,<ore:plateSilver>],
    [<embers:item_pipe>,<extrautils2:pipe>,<embers:item_pipe>],
    [<ore:plateSilver>,<ore:fusedQuartz>,<ore:plateSilver>]
], 60, <liquid:soldering_alloy> * 288);

recipes.removeByRecipeName("thermaldynamics:duct_32_1");
Carpenter.addRecipe(<thermaldynamics:duct_32:1> * 8, [
    [<ore:plateSilver>,<ore:plateTin>,<ore:plateSilver>],
    [<embers:item_pipe>,<extrautils2:pipe>,<embers:item_pipe>],
    [<ore:plateSilver>,<ore:plateTin>,<ore:plateSilver>]
], 60, <liquid:soldering_alloy> * 288);

recipes.removeByRecipeName("thermaldynamics:duct_16");
Carpenter.addRecipe(<thermaldynamics:duct_16> * 8, [
    [<ore:plateBronze>,<ore:fusedQuartz>,<ore:plateBronze>],
    [<embers:pipe>,<extrautils2:pipe>,<embers:pipe>],
    [<ore:plateBronze>,<ore:fusedQuartz>,<ore:plateBronze>]
], 60, <liquid:soldering_alloy> * 288);

recipes.removeByRecipeName("thermaldynamics:duct_16_1");
Carpenter.addRecipe(<thermaldynamics:duct_16:1> * 8, [
    [<ore:plateBronze>,<ore:plateCopper>,<ore:plateBronze>],
    [<embers:pipe>,<extrautils2:pipe>,<embers:pipe>],
    [<ore:plateBronze>,<ore:plateCopper>,<ore:plateBronze>]
], 60, <liquid:soldering_alloy> * 288);

recipes.removeByRecipeName("thermaldynamics:duct_16_2");
Carpenter.addRecipe(<thermaldynamics:duct_16:2> * 8, [
    [<ore:plateInvar>,<ore:fusedQuartz>,<ore:plateInvar>],
    [<embers:pipe>,<extrautils2:pipe>,<embers:pipe>],
    [<ore:plateInvar>,<ore:fusedQuartz>,<ore:plateInvar>]
], 60, <liquid:soldering_alloy> * 288);

recipes.removeByRecipeName("thermaldynamics:duct_16_3");
Carpenter.addRecipe(<thermaldynamics:duct_16:3> * 8, [
    [<ore:plateInvar>,<ore:plateSteel>,<ore:plateInvar>],
    [<embers:pipe>,<extrautils2:pipe>,<embers:pipe>],
    [<ore:plateInvar>,<ore:plateSteel>,<ore:plateInvar>]
], 60, <liquid:soldering_alloy> * 288);
