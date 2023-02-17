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

import mods.astralsorcery.Altar;
import mods.jei.JEI;

JEI.removeAndHide(<psicosts:psi_hypostim>);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <psicosts:material_glassy>*4 : [
        [
            [<psi:material>,<extrautils2:decorativeglass>,<psi:material>],
            [<extrautils2:decorativeglass>,<extrautils2:ingredients:12>,<extrautils2:decorativeglass>],
            [<psi:material>,<extrautils2:decorativeglass>,<psi:material>]
        ]
    ],
    <psicosts:creative_cell> : [
        [
            [<psicosts:psi_cell:3>,<contenttweaker:creative>,<psicosts:psi_cell:3>],
            [<contenttweaker:creative>,<projecte:item.pe_klein_star:5>,<contenttweaker:creative>],
            [<psicosts:psi_cell:3>,<contenttweaker:creative>,<psicosts:psi_cell:3>]
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


recipes.remove(<psicosts:psi_cell>);
Altar.addDiscoveryAltarRecipe("psi_cell_1", <psicosts:psi_cell>, 200, 200, [
    <psicosts:material_glassy>,
    <psi:material:2>,
    <psicosts:material_glassy>,
    <psi:material:2>,
    <ic2:itembatre>,
    <psi:material:2>,
    <psicosts:material_glassy>,
    <psi:material:2>,
    <psicosts:material_glassy>
]);

recipes.remove(<psicosts:psi_cell:1>);
Altar.addAttunementAltarRecipe("psi_cell_2", <psicosts:psi_cell:1>, 500, 300, [
    <psi:material:1>,
    <actuallyadditions:item_crystal_empowered:4>,
    <psi:material:1>,
    <psi:material:2>,
    <psicosts:psi_cell>,
    <psi:material:2>,
    <psi:material:1>,
    <ic2:itemmisc:452>,
    <psi:material:1>,
    null,
    null,
    null,
    null
]);

recipes.remove(<psicosts:psi_cell:2>);
Altar.addConstellationAltarRecipe("psi_cell_3", <psicosts:psi_cell:2>, 2000, 10, [
    <psi:material:4>,
    <randomthings:ingredient:1>,
    <psi:material:4>,
    <psi:material:2>,
    <psicosts:psi_cell:1>,
    <psi:material:2>,
    <psi:material:4>,
    <contenttweaker:data_orb>,
    <psi:material:4>,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null
]);

recipes.remove(<psicosts:psi_cell:3>);
Altar.addTraitAltarRecipe("psi_cell_4", <psicosts:psi_cell:3>, 4500, 100, [
    <simplyjetpacks:metaitemmods:12>,
    <actuallyadditions:item_misc:19>,
    <simplyjetpacks:metaitemmods:12>,
    <psi:material:2>,
    <psicosts:psi_cell:2>,
    <psi:material:2>,
    <simplyjetpacks:metaitemmods:12>,
    <contenttweaker:wetware_assembly>,
    <simplyjetpacks:metaitemmods:12>,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null
]);

