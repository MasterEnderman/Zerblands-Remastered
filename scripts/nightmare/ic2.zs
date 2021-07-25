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

import mods.forestry.ThermionicFabricator;
import mods.ic2.Compressor;
import mods.ic2.Extractor;
import mods.ic2.Macerator;
import mods.immersivetechnology.Distiller;
import mods.tconstruct.Casting;
import mods.thermalexpansion.InductionSmelter;

var mapCableCasting as ILiquidStack[IItemStack] = {
    <ic2:itemcable> : <liquid:copper>,
    <ic2:itemcable:13> : <liquid:bronze>,
    <ic2:itemcable:2> : <liquid:gold>,
    <ic2:itemcable:5> : <liquid:steel>,
    <ic2:itemcable:10> : <liquid:tin>
};

for cable, metal in mapCableCasting {
    recipes.remove(cable);
    Casting.addTableRecipe(<contenttweaker:cast_cable>, cable, <liquid:gold>, 288, true, 100);
	Casting.addTableRecipe(<contenttweaker:cast_cable>, cable, <liquid:brass>, 144, true, 100);
	Casting.addTableRecipe(<contenttweaker:cast_cable>, cable, <liquid:alubrass>, 144, true, 100);
	Casting.addTableRecipe(cable, <contenttweaker:cast_cable>, metal, 72, false, 100);
}

var mapCableCrafting as IIngredient[IItemStack] = {
    <ic2:itemcable> : <ore:ingotCopper>,
    <ic2:itemcable:13> : <ore:ingotBronze>,
    <ic2:itemcable:2> : <ore:ingotGold>,
    <ic2:itemcable:5> : <ore:ingotSteel>,
    <ic2:itemcable:10> : <ore:ingotTin>
};

for cable, ingot in mapCableCrafting {
    recipes.addShapeless(cable, [<appliedenergistics2:nether_quartz_cutting_knife:*>, ingot]);
    recipes.addShapeless(cable, [<appliedenergistics2:certus_quartz_cutting_knife:*>, ingot]);
}

recipes.remove(<ic2:blockmachinelv:15>);
recipes.addShaped(<ic2:blockmachinelv:15>, [
    [<contenttweaker:cutting_head>,<contenttweaker:cutting_head>,<contenttweaker:cutting_head>],
    [<sonarcore:stablestone_normal>,<contenttweaker:electric_motor>,<sonarcore:stablestone_normal>],
    [<sonarcore:stablestone_normal>,<extrautils2:machine>,<sonarcore:stablestone_normal>]
]);

var mapRubber as IItemStack[][] = [
    [<ic2:itemcable>,<ic2:itemcable:1>],
    [<ic2:itemcable:13>,<ic2:itemcable:14>,<ic2:itemcable:15>],
    [<ic2:itemcable:2>,<ic2:itemcable:3>,<ic2:itemcable:4>],
    [<ic2:itemcable:5>,<ic2:itemcable:6>,<ic2:itemcable:7>,<ic2:itemcable:8>]
];

for cable in mapRubber {
    var index as int = 1;
    while index < cable.length {
        recipes.remove(cable[index]);
        InductionSmelter.addRecipe(cable[index], cable[index - 1], <ic2:itemmisc:450>, 2500);
        index += 1;
    }
}

recipes.remove(<ic2:itembatcrystal>);
Compressor.addRecipe(<ic2:itembatcrystal>, <contenttweaker:energium_dust> * 9);
Macerator.addRecipe(<contenttweaker:energium_dust> * 9, <ic2:itembatcrystal>);

recipes.remove(<ic2:itemcable:9>);
ThermionicFabricator.addCast(<ic2:itemcable:9> * 6, [
    [<contenttweaker:energium_dust>,<contenttweaker:energium_dust>,<contenttweaker:energium_dust>],
    [<ore:ingotEnergeticSilver>,<contenttweaker:energy_module>,<ore:ingotEnergeticSilver>],
    [<contenttweaker:energium_dust>,<contenttweaker:energium_dust>,<contenttweaker:energium_dust>]
], <liquid:glass> * 500);

Compressor.addRecipe(<ic2:itemmisc:9>, findFirstItemFromMod("thermalfoundation","dust","obsidian") * 4);

recipes.remove(<ic2:blockfenceiron>);
recipes.addShaped(<ic2:blockfenceiron> * 3, [
    [<ore:ingotIron>,<ore:stickIron>,<ore:ingotIron>],
    [<ore:ingotIron>,<ore:stickIron>,<ore:ingotIron>]
]);

var plantball as int[IIngredient] = {
    <actuallyadditions:item_food:16> : 1,
    <actuallyadditions:item_misc:13> : 1,
    <actuallyadditions:item_rice_seed> : 1,
    <actuallyadditions:item_canola_seed> : 1,
    <ore:listAllnut> : 2,
    <ore:listAllfruit> : 1,
    <ore:listAllveggie> : 1,
    <ore:listAllseed> : 1,
    <actuallyadditions:item_flax_seed> : 1,
    <actuallyadditions:item_coffee_seed> : 1,
    <actuallyadditions:item_coffee_beans> : 1,
    <immersiveengineering:seed> : 1,
};

for item, amount in plantball {
    recipes.addShaped(<ic2:itemmisc:350> * amount, [
        [item,item,item],
        [item,null,item],
        [item,item,item]
    ]);
}

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <ic2:itemtoolcutter> : [
        [
            [<ore:nuggetSteel>,null,<ore:nuggetSteel>],
            [null,<ore:gearSteel>,null],
            [<ore:stickIron>,null,<ore:stickIron>]
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

furnace.remove(<ic2:itemmisc:450>);
InductionSmelter.addRecipe(<ic2:itemmisc:450> * 9, <contenttweaker:raw_rubber_pulp> * 9, findFirstItemFromMod("thermalfoundation","dust","sulfur"), 2500);
Casting.addTableRecipe(<ic2:itemharz>, null, <liquid:resin>, 250, false, 400);
