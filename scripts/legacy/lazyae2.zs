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

JEI.removeAndHide(<threng:big_assembler>);
JEI.removeAndHide(<threng:big_assembler:1>);
JEI.removeAndHide(<threng:big_assembler:2>);
JEI.removeAndHide(<threng:big_assembler:3>);
JEI.removeAndHide(<threng:big_assembler:4>);
JEI.removeAndHide(<threng:big_assembler:5>);
JEI.removeAndHide(<threng:machine:3>);

var mapSpeculation as IIngredient[][IItemStack] = {
    <threng:material:8> : [<calculator:weakeneddiamond>,<threng:material:7>],
    <threng:material:9> : [<minecraft:diamond>,<threng:material:8>],
    <threng:material:10> : [<calculator:flawlessdiamond>,<threng:material:9>],
    <threng:material:11> : [<calculator:firediamond>,<threng:material:10>],
    <threng:material:12> : [<calculator:electricdiamond>,<threng:material:11>],
    <threng:material:13> : [<calculator:enddiamond>,<threng:material:12>]
};

for output, data in mapSpeculation {
    recipes.remove(output);
    recipes.addShaped(output, [
        [data[1],data[1],data[1]],
        [data[1],data[0],data[1]],
        [data[1],data[1],data[1]]
    ]); 
}

Agglomeration.addRecipe(<threng:material:6>, [<appliedenergistics2:material:20>,<ore:dustRedstone>,<threng:material:5>] as IIngredient[], 500000);
Agglomeration.addRecipe(<threng:material:14>, [<appliedenergistics2:material:20>,<ore:dustRedstone>,<threng:material:13>] as IIngredient[], 1000000);

recipes.remove(<threng:machine:2>);
RuneAltar.addRecipe(<threng:machine:2>, [
    <appliedenergistics2:inscriber>,
    <threng:material:6>,
    <threng:material:14>,
    <appliedenergistics2:material:13>,
    <appliedenergistics2:material:14>,
    <appliedenergistics2:material:15>,
    <appliedenergistics2:material:19>,
    <calculator:flawlessassembly>,
    <botanicadds:rune_energy>
], 500000);
