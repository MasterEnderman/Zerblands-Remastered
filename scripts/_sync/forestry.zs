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

import mods.forestry.Carpenter;
import mods.jei.JEI;

JEI.removeAndHide(<forestry:bottler>);

recipes.remove(<forestry:kit_shovel>);
recipes.remove(<forestry:kit_pickaxe>);

furnace.remove(<minecraft:coal:1>);
furnace.addRecipe(<forestry:ash>, <ore:logWood>);

recipes.remove(<forestry:ash_stairs>);
recipes.addShaped(<forestry:ash_stairs> * 4, [
    [<forestry:ash_brick>,null,null],
    [<forestry:ash_brick>,<forestry:ash_brick>,null],
    [<forestry:ash_brick>,<forestry:ash_brick>,<forestry:ash_brick>]
]);

var x as IItemStack = <morebees:grainmetallic>;

// IItemStack output, IIngredient[][] ingredients, int packagingTime, @Optional ILiquidStack fluidInput, @Optional IItemStack box
Carpenter.addRecipe(<minecraft:gold_nugget>, [
    [x,x,x],
    [x,null,x],
    [x,x,x]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<minecraft:gold_nugget>, [
    [x,x,x],
    [x,null,x],
    [x,x,x]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<minecraft:iron_nugget>, [
    [x,null,x],
    [x,x,x],
    [x,null,x]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<thermalfoundation:material:192>, [
    [null,null,null],
    [x,x,x],
    [null,null,null]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<thermalfoundation:material:193>, [
    [null,x,null],
    [null,x,null],
    [null,x,null]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<thermalfoundation:material:194>, [
    [x,null,x],
    [null,null,null],
    [x,null,x]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<thermalfoundation:material:195>, [
    [null,x,null],
    [x,null,x],
    [null,x,null]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<thermalfoundation:material:196>, [
    [null,null,null],
    [null,x,null],
    [null,null,null]
], 120, <liquid:water>*500);

Carpenter.addRecipe(<thermalfoundation:material:197>, [
    [x,x,x],
    [null,x,null],
    [x,x,x]
], 120, <liquid:water>*500);

var y as IItemStack = <morebees:graincrystal>;

Carpenter.addRecipe(<thermalfoundation:material:16>, [
    [y,y,y],
    [y,y,y],
    [y,y,y]
], 120, <liquid:water>*1000);

Carpenter.addRecipe(<astralsorcery:itemcraftingcomponent>, [
    [null,y,null],
    [y,y,y],
    [null,y,null]
], 120, <liquid:water>*1000);
