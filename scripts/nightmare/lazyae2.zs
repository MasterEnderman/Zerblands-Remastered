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

import mods.enderio.AlloySmelter;
import mods.forestry.ThermionicFabricator;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.BlastFurnace;
import mods.threng.Aggregator;

Aggregator.removeRecipe(<threng:material>);
Aggregator.removeRecipe(<threng:material:1>);
Aggregator.removeRecipe(<threng:material:2>);

AlloySmelter.addRecipe(<threng:material:2>, [<ore:ingotRefinedIron>,<appliedenergistics2:material:45>,<threng:material:1>], 15000);

recipes.remove(<threng:material:1>);
recipes.addShapeless(<threng:material:1> * 2, [
    <astralsorcery:itemcraftingcomponent:2>,
    <contenttweaker:sodium_dust>,
    <appliedenergistics2:material:5>,
    <appliedenergistics2:material:8>,
    <immersiveengineering:material:18>,
    <ic2:itemmisc:455>
]);

furnace.remove(<threng:material>);
BlastFurnace.addRecipe(<threng:material>, <threng:material:2>, 4000, <thermalfoundation:material:864>);
ArcFurnace.addRecipe(<threng:material>,<threng:material:2>,<thermalfoundation:material:864>, 400, 512);

recipes.remove(<threng:material:4>);
ThermionicFabricator.addCast(<threng:material:4>, [
    [<threng:material>,<contenttweaker:elementiumprocessor>,<threng:material>],
    [<ic2:itemheatvent:23>,<contenttweaker:terrasteelprocessor>,<ic2:itemheatvent:23>],
    [<threng:material>,<contenttweaker:elementiumprocessor>,<threng:material>]
], <liquid:glass> * 500);

var mapSpeculation as IIngredient[][IItemStack] = {
    <threng:material:8> : [<appliedenergistics2:material:23>,<threng:material:7>],
    <threng:material:9> : [<appliedenergistics2:material:22>,<threng:material:8>],
    <threng:material:10> : [<appliedenergistics2:material:24>,<threng:material:9>],
    <threng:material:11> : [<contenttweaker:elementiumprocessor>,<threng:material:10>],
    <threng:material:12> : [<contenttweaker:terrasteelprocessor>,<threng:material:11>],
    <threng:material:13> : [<threng:material:6>,<threng:material:12>]
};

for output, data in mapSpeculation {
    recipes.remove(output);
    recipes.addShaped(output, [
        [null,data[0],null],
        [data[1],<ic2:itemmisc:202>,data[1]],
        [null,data[0],null]
    ]); 
}
