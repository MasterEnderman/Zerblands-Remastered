#packmode legacy

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

import mods.jei.JEI;
import mods.botania.RuneAltar;
import mods.botaniatweaks.Agglomeration;
import mods.botanicadds.GaiaPlate;
import mods.threng.Etcher;

JEI.removeAndHide(<threng:machine:3>);

var mapSpeculation as IIngredient[][IItemStack] = {
    <threng:material:8> : [<contenttweaker:weakeneddiamond>,<threng:material:7>],
    <threng:material:9> : [<minecraft:diamond>,<threng:material:8>],
    <threng:material:10> : [<contenttweaker:flawlessdiamond>,<threng:material:9>],
    <threng:material:11> : [<contenttweaker:firediamond>,<threng:material:10>],
    <threng:material:12> : [<contenttweaker:electricdiamondanimate>,<threng:material:11>],
    <threng:material:13> : [<contenttweaker:enddiamond>,<threng:material:12>]
};

for output, data in mapSpeculation {
    recipes.remove(output);
    Etcher.addRecipe(output, data[0], data[1], data[1]);
    recipes.addShaped(output, [
        [data[1],data[0],data[1]],
        [data[0],data[1],data[0]],
        [data[1],data[0],data[1]]
    ]); 
}

Etcher.addRecipe(<threng:material:2>, <threng:material:1>, <minecraft:iron_ingot>, <appliedenergistics2:material:45>);

Agglomeration.addRecipe(<threng:material:6>, [<appliedenergistics2:material:20>,<minecraft:redstone>,<threng:material:5>] as IIngredient[], 500000);
GaiaPlate.add(<threng:material:6>, 500000, [<appliedenergistics2:material:20>,<minecraft:redstone>,<threng:material:5>]);

Agglomeration.addRecipe(<threng:material:14>, [<appliedenergistics2:material:20>,<minecraft:redstone>,<threng:material:13>] as IIngredient[], 1000000);
GaiaPlate.add(<threng:material:14>, 1000000, [<appliedenergistics2:material:20>,<minecraft:redstone>,<threng:material:13>]);

recipes.remove(<threng:machine:2>);
Etcher.addRecipe(<threng:machine:2>,<contenttweaker:flawless_assembly>,<appliedenergistics2:inscriber>,<threng:material:14>);
RuneAltar.addRecipe(<threng:machine:2>, [
    <appliedenergistics2:inscriber>,
    <threng:material:6>,
    <threng:material:14>,
    <appliedenergistics2:material:13>,
    <appliedenergistics2:material:14>,
    <appliedenergistics2:material:15>,
    <appliedenergistics2:material:19>,
    <contenttweaker:flawless_assembly>,
    <botanicadds:rune_energy>
], 500000);

recipes.remove(<threng:big_assembler>);
recipes.addShaped(<threng:big_assembler> * 4, [
    [<contenttweaker:enhanced_ender_ingot>,<appliedenergistics2:smooth_sky_stone_block>,<contenttweaker:enhanced_ender_ingot>],
    [<appliedenergistics2:smooth_sky_stone_block>,<ic2:bigquantumaccumulator>,<appliedenergistics2:smooth_sky_stone_block>],
    [<contenttweaker:enhanced_ender_ingot>,<appliedenergistics2:smooth_sky_stone_block>,<contenttweaker:enhanced_ender_ingot>]
]);

recipes.remove(<threng:big_assembler:1>);
recipes.addShaped(<threng:big_assembler:1> * 4, [
    [<threng:big_assembler>,<ic2:itemheatvent:3>,<threng:big_assembler>],
    [<ic2:itemheatvent:3>,<gravisuit:coolingcore>,<ic2:itemheatvent:3>],
    [<threng:big_assembler>,<ic2:itemheatvent:3>,<threng:big_assembler>]
]);
