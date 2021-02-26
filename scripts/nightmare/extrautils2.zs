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

recipes.remove(<extrautils2:endershard>);
ExplosionCrafting.explodeItemRecipe(<extrautils2:endershard> * 8, <minecraft:ender_pearl>);

recipes.remove(survival_generator);
recipes.addShaped(survival_generator, [
    [<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>],
    [<minecraft:cobblestone>,<minecraft:coal>,<minecraft:cobblestone>],
    [<ore:dustRedstone>,furnace_generator,<ore:dustRedstone>]
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <extrautils2:ingredients> : [
        [
            [<ore:dustRedstone>,<extrautils2:endershard>,<ore:dustRedstone>],
            [<extrautils2:endershard>,<ore:gemAquamarine>,<extrautils2:endershard>],
            [<ore:dustRedstone>,<extrautils2:endershard>,<ore:dustRedstone>]
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
