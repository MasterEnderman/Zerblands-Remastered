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

import scripts.functions.calc_basic;

import mods.astralsorcery.Altar;
import mods.extrautils2.Resonator;
import mods.inworldcrafting.ExplosionCrafting;
import mods.jei.JEI;
import mods.tconstruct.Casting;

var survival_generator as IItemStack = <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"});
var furnace_generator as IItemStack = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
var furnace as IItemStack = <extrautils2:machine>.withTag({Type: "extrautils2:furnace"});
var crusher as IItemStack = <extrautils2:machine>.withTag({Type: "extrautils2:crusher"});

JEI.removeAndHide(<extrautils2:glasscutter>);

recipes.removeByRecipeName("extrautils2:machine_base");
Casting.addBasinRecipe(<extrautils2:machine>, <contenttweaker:calculator>, <liquid:iron>, 144 * 4, true, 2000);

recipes.remove(<extrautils2:resonator>);
Altar.addDiscoveryAltarRecipe("resonator", <extrautils2:resonator>, 200, 200, [
    <contenttweaker:black_iron>, <astralsorcery:blockblackmarble>, <contenttweaker:black_iron>,
    <extrautils2:ingredients>, <embers:mech_core>, <extrautils2:ingredients>,
    <contenttweaker:black_iron>, <embers:dust_ember>, <contenttweaker:black_iron>
]);

recipes.remove(<extrautils2:drum:1>);
calc_basic(<extrautils2:drum:1>, <extrautils2:drum>, <contenttweaker:reinforced_iron_block>);

Resonator.remove(<extrautils2:ingredients:9>);
Resonator.add(<extrautils2:ingredients:9>, <contenttweaker:enriched_gold_block>, 800, false);

Resonator.remove(<extrautils2:ingredients:13>);
Resonator.add(<extrautils2:ingredients:13>, <embers:superheater>, 1600, true);

Resonator.remove(<extrautils2:decorativesolid:3>);
Resonator.add(<extrautils2:decorativesolid:3>, <botania:pavement:1>, 800, false);

recipes.remove(<extrautils2:passivegenerator:1>);
Resonator.add(<extrautils2:passivegenerator:1>, <extrautils2:passivegenerator>, 1600, false);

recipes.remove(<extrautils2:endershard>);
ExplosionCrafting.explodeItemRecipe(<extrautils2:endershard> * 8, <minecraft:ender_pearl>);

recipes.remove(survival_generator);
recipes.addShaped(survival_generator, [
    [<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>],
    [<minecraft:cobblestone>,<minecraft:coal>,<minecraft:cobblestone>],
    [<ore:dustRedstone>,furnace_generator,<ore:dustRedstone>]
]);

recipes.remove(furnace_generator);
recipes.addShaped(furnace_generator, [
    [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],
    [<ore:ingotIron>,<minecraft:furnace>,<ore:ingotIron>],
    [<ore:dustRedstone>,<rftools:machine_frame>,<ore:dustRedstone>]
]);

recipes.remove(furnace);
recipes.addShaped(furnace, [
    [<minecraft:brick>,<minecraft:brick>,<minecraft:brick>],
    [<minecraft:brick>,<rftools:machine_frame>,<minecraft:brick>],
    [<minecraft:brick>,<minecraft:brick>,<minecraft:brick>]
]);

recipes.remove(crusher);
recipes.addShaped(crusher, [
    [<ore:ingotIron>,<minecraft:piston>,<ore:ingotIron>],
    [<ore:ingotIron>,<rftools:machine_frame>,<ore:ingotIron>],
    [<ore:ingotIron>,<minecraft:piston>,<ore:ingotIron>]
]);

recipes.remove(<extrautils2:passivegenerator>);
recipes.addShaped(<extrautils2:passivegenerator> * 8, [
    [<forestry:thermionic_tubes:11>,<forestry:thermionic_tubes:11>,<forestry:thermionic_tubes:11>],
    [<botania:pavement:1>,<immersiveengineering:material:27>,<botania:pavement:1>]
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <extrautils2:ingredients> : [
        [
            [<ore:dustRedstone>,<extrautils2:endershard>,<ore:dustRedstone>],
            [<extrautils2:endershard>,<ore:gemAquamarine>,<extrautils2:endershard>],
            [<ore:dustRedstone>,<extrautils2:endershard>,<ore:dustRedstone>]
        ]
    ],
    <extrautils2:ingredients:1> : [
        [
            [null,<extrautils2:ingredients>,null],
            [<extrautils2:ingredients>,<blood_dynamo:ingredient:2>,<extrautils2:ingredients>],
            [null,<extrautils2:ingredients>,null]
        ]
    ],
    <extrautils2:passivegenerator:7> : [
        [
            [null,<extrautils2:ingredients:1>,null],
            [<botania:pavement:1>,<immersiveengineering:material:8>,<botania:pavement:1>]
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
