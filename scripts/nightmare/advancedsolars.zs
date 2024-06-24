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

import mods.actuallyadditions.Empowerer;
import mods.astralsorcery.StarlightInfusion;
import mods.threng.Aggregator;

import scripts.functions.calc_atomic;

recipes.remove(<advancedsolars:sunnariumpart>);
Aggregator.addRecipe(<advancedsolars:sunnariumpart>, <ic2:itemmisc:202>, <extrautils2:suncrystal>, <appliedenergistics2:material:47>);

recipes.remove(<advancedsolars:sunnarium>);
StarlightInfusion.addInfusion(<advancedsolars:sunnariumpart>, <advancedsolars:sunnarium>, false, 0.8, 200);

recipes.remove(<advancedsolars:irradianturanium>);
Empowerer.addRecipe(<advancedsolars:irradianturanium>, <ic2:itemmisc:60>, <advancedsolars:sunnariumpart>, <advancedsolars:sunnariumpart>, <advancedsolars:sunnariumpart>, <advancedsolars:sunnariumpart>, 320000, 100, [0.6, 0.9, 0.6]);

recipes.remove(<advancedsolars:enrichedsunnarium>);
Aggregator.addRecipe(<advancedsolars:enrichedsunnarium>, <advancedsolars:sunnarium>, <advancedsolars:irradianturanium>, <ic2:itemmisc:181>);

recipes.remove(<advancedsolars:irradiantreinforcedplate>);
calc_atomic(<advancedsolars:irradiantreinforcedplate>, <advancedsolars:reinforcediridiumironplate>, <woot:prism>, <advancedsolars:sunnarium>);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <advancedsolars:iridiumironplate> : [
        [
            [<ore:ingotRefinedIron>,<ore:plateIridium>,<ore:ingotRefinedIron>],
            [<ore:plateIridium>,<ic2:itemmisc:258>,<ore:plateIridium>],
            [<ore:ingotRefinedIron>,<ore:plateIridium>,<ore:ingotRefinedIron>]
        ]
    ],
    <advancedsolars:reinforcediridiumironplate> : [
        [
            [<ore:ingotReinforcedObsidian>,<ic2:itemmisc:257>,<ore:ingotReinforcedObsidian>],
            [<ic2:itemmisc:257>,<advancedsolars:iridiumironplate>,<ic2:itemmisc:257>],
            [<ore:ingotReinforcedObsidian>,<ic2:itemmisc:257>,<ore:ingotReinforcedObsidian>]
        ]
    ],
    <advancedsolars:sunnariumalloy> : [
        [
            [<advancedsolars:sunnarium>,<ic2:itemmisc:258>,<advancedsolars:sunnarium>],
            [<ic2:itemmisc:258>,<advancedsolars:iridiumironplate>,<ic2:itemmisc:258>],
            [<advancedsolars:sunnarium>,<ic2:itemmisc:258>,<advancedsolars:sunnarium>]
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
