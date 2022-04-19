#modloaded crafttweaker
#priority 100000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.inworldcrafting.ExplosionCrafting;
import mods.thermalexpansion.Infuser;
import mods.threng.Centrifuge;
import mods.threng.Energizer;

function betterCharging(output as IItemStack, input as IItemStack, energy as int) {
    recipes.remove(output);
    Infuser.addRecipe(output,input,energy);
    Energizer.addRecipe(output,input,energy);
}

function betterExplosion(output as IItemStack, input as IIngredient) {
    Centrifuge.addRecipe(output,input);
    ExplosionCrafting.explodeItemRecipe(output,input);
}
