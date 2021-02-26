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
import mods.tconstruct.Casting;

Casting.addBasinRecipe(<contenttweaker:module_energy>, <thermalfoundation:storage_resource:1>, <liquid:stone>, 4608, true, 200);

Casting.addBasinRecipe(<contenttweaker:calculator_screen>, <extrautils2:decorativeglass:5>, <liquid:stone>, 576, true, 200);

calc_basic(<contenttweaker:redstone_ingot>,<contenttweaker:reinforcediron_ingot>,<minecraft:redstone>);

Altar.addDiscoveryAltarRecipe("basic_calculator", <contenttweaker:calculator>, 200, 200, [
    <contenttweaker:black_iron>, <contenttweaker:calculatorscreen>, <contenttweaker:black_iron>,
    <extrautils2:ingredients>, <contenttweaker:calculator_assembly>, <extrautils2:ingredients>,
    <contenttweaker:black_iron>, <contenttweaker:calculator_assembly>, <contenttweaker:black_iron>
]);

Centrifuge.addRecipe([<contenttweaker:large_amethyst> % 100, <contenttweaker:shard_amethyst> % 100], <extrautils2:ingredients:5>, null, 2000);
Centrifuge.addRecipe([<contenttweaker:small_amethyst> % 100, <contenttweaker:shard_amethyst> % 100], <extrautils2:ingredients:3>, null, 2000);

Centrifuge.addRecipe([<contenttweaker:large_tanzanite> % 100, <contenttweaker:shard_tanzanite> % 100], <forestry:resource_storage>, null, 2000);
Centrifuge.addRecipe([<contenttweaker:small_tanzanite> % 100, <contenttweaker:shard_tanzanite> % 100], <forestry:apatite>, null, 2000);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <contenttweaker:calculator_assembly> : [
        [
            [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>],
            [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>],
            [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>]
        ]
    ],
    <contenttweaker:advanced_assembly> : [
        [
            [<contenttweaker:enrichedgold_ingot>,<contenttweaker:calculator_assembly>,<contenttweaker:enrichedgold_ingot>],
            [<contenttweaker:calculator_assembly>,<contenttweaker:reinforcediron_ingot>,<contenttweaker:calculator_assembly>],
            [<contenttweaker:enrichedgold_ingot>,<contenttweaker:calculator_assembly>,<contenttweaker:enrichedgold_ingot>]
        ]
    ],
    <contenttweaker:scientificcalculator> : [
        [
            [<contenttweaker:enrichedgold_ingot>,<contenttweaker:calculator_screen>,<contenttweaker:enrichedgold_ingot>],
            [<contenttweaker:large_amethyst>,<contenttweaker:advanced_assembly>,<contenttweaker:large_amethyst>],
            [<contenttweaker:enrichedgold_ingot>,<contenttweaker:advanced_assembly>,<contenttweaker:enrichedgold_ingot>]
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
