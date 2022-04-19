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
import mods.forestry.ThermionicFabricator;
import mods.ic2.Extractor;
import mods.immersiveengineering.BottlingMachine;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;

import scripts.mod_functions.betterExplosion;

recipes.remove(<opencomputers:material:2>);
recipes.addShapeless(<opencomputers:material:2> * 4, [<contenttweaker:plastic>,<enderio:item_material:48>,<enderio:item_material:48>,<contenttweaker:electro_silicon>]);

furnace.remove(<opencomputers:material:3>);
InductionSmelter.addRecipe(<opencomputers:material:3>, <opencomputers:material:2>, <opencomputers:material:1>, 1200);

recipes.remove(<opencomputers:cable>);
InductionSmelter.addRecipe(<opencomputers:cable>, <thermalfoundation:material:225> * 3, <ic2:itemmisc:450>, 2000);

recipes.remove(<opencomputers:material:29>);
betterExplosion(<opencomputers:material:29> * 4,<ore:gemDiamond>);

recipes.remove(<opencomputers:material:12>);
Extractor.addRecipe(<opencomputers:material:12>,<contenttweaker:plastic>);

recipes.remove(<opencomputers:material:1>);
BottlingMachine.addRecipe(<opencomputers:material:1>, <ic2:itemmisc:454>, <liquid:grog> * 250);
Transposer.addFillRecipe(<opencomputers:material:1>, <ic2:itemmisc:454>,  <liquid:grog> * 250, 2000);

recipes.remove(<opencomputers:material:4>);
Carpenter.addRecipe(<opencomputers:material:4>, [
    [<immersiveengineering:material:21>,<immersiveengineering:material:21>,<immersiveengineering:material:21>],
    [<immersiveengineering:material:21>,<opencomputers:material:3>,<immersiveengineering:material:21>],
    [<immersiveengineering:material:21>,<immersiveengineering:material:21>,<immersiveengineering:material:21>]
], 10, <liquid:iron_chloride> * 200);

recipes.remove(<opencomputers:material:6>);
ThermionicFabricator.addCast(<opencomputers:material:6> * 8, [
    [<ic2:itemcable:10>,<ic2:itemcable:10>,<ic2:itemcable:10>],
    [<forestry:thermionic_tubes>,<rs_ctr:logic_comb>,<forestry:thermionic_tubes>],
    [<ore:nuggetEnergeticAlloy>,<contenttweaker:plastic>,<ore:nuggetEnergeticAlloy>]
], <liquid:glass> * 200);

recipes.remove(<opencomputers:material:7>);
ThermionicFabricator.addCast(<opencomputers:material:7> * 8, [
    [<ore:nuggetElectricalSteel>,<ore:nuggetElectricalSteel>,<ore:nuggetElectricalSteel>],
    [<opencomputers:material:6>,<forestry:thermionic_tubes:8>,<opencomputers:material:6>],
    [<ore:nuggetElectricalSteel>,<ore:nuggetElectricalSteel>,<ore:nuggetElectricalSteel>]
], <liquid:glass> * 200);

recipes.remove(<opencomputers:material:8>);
ThermionicFabricator.addCast(<opencomputers:material:8> * 4, [
    [<ic2:itemcable:4>,<forestry:thermionic_tubes:11>,<ic2:itemcable:4>],
    [<opencomputers:material:7>,<appliedenergistics2:material:10>,<opencomputers:material:7>],
    [<ic2:itemcable:4>,<forestry:thermionic_tubes:11>,<ic2:itemcable:4>]
], <liquid:glass> * 200);

recipes.remove(<opencomputers:material:9>);
ThermionicFabricator.addCast(<opencomputers:material:9> * 2, [
    [<opencomputers:material:29>,<forestry:thermionic_tubes:5>,<opencomputers:material:29>],
    [<opencomputers:material:8>,<contenttweaker:atomicbinder>,<opencomputers:material:8>],
    [<opencomputers:material:29>,<forestry:thermionic_tubes:5>,<opencomputers:material:29>]
], <liquid:glass> * 200);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <opencomputers:material:10> : [
        [
            [<opencomputers:material:6>,<opencomputers:material:6>,<opencomputers:material:6>],
            [<rs_ctr:edge_trigger>,<contenttweaker:advanced_assembly>,<rs_ctr:edge_trigger>],
            [<enderio:item_alloy_nugget:1>,<contenttweaker:plastic>,<enderio:item_alloy_nugget:1>]
        ]
    ],
    <opencomputers:material:11> : [
        [
            [<opencomputers:material:6>,<rs_ctr:clock>,<opencomputers:material:6>],
            [<rs_ctr:pulse_gen>,<rs_ctr:ram>,<rs_ctr:pulse_gen>],
            [<enderio:item_alloy_nugget:1>,<contenttweaker:plastic>,<enderio:item_alloy_nugget:1>]
        ]
    ],
    <opencomputers:component> : [
        [
            [<enderio:item_alloy_nugget:1>,<contenttweaker:plastic>,<enderio:item_alloy_nugget:1>],
            [<opencomputers:component:7>,<opencomputers:material:11>,<opencomputers:component:7>],
            [<enderio:item_alloy_nugget:1>,<opencomputers:material:10>,<enderio:item_alloy_nugget:1>]
        ]
    ],
    <opencomputers:component:1> : [
        [
            [<enderio:item_alloy_nugget:2>,<ic2:itemheatswtiches:2>,<enderio:item_alloy_nugget:2>],
            [<opencomputers:component:9>,<opencomputers:component>,<opencomputers:component:9>],
            [<enderio:item_alloy_nugget:2>,<ic2:itemheatswtiches:2>,<enderio:item_alloy_nugget:2>]
        ]
    ],
    <opencomputers:component:2> : [
        [
            [<ore:nuggetCrystallineAlloy>,<ic2:itemheatswtiches:3>,<ore:nuggetCrystallineAlloy>],
            [<opencomputers:component:11>,<opencomputers:component:1>,<opencomputers:component:11>],
            [<ore:nuggetCrystallineAlloy>,<ic2:itemheatswtiches:3>,<ore:nuggetCrystallineAlloy>]
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
