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

import mods.forestry.Still;
import mods.immersiveengineering.Refinery;
import mods.immersivepetroleum.Distillation;

var heavy_fuel as ILiquidStack = <liquid:lubricant>;
var light_fuel as ILiquidStack = <liquid:diesel>;
var naphta as ILiquidStack = <liquid:refined_oil>;
var ethylene as ILiquidStack = <liquid:ethylene>;
var toluene as ILiquidStack = <liquid:toluene>;
var benzene as ILiquidStack = <liquid:benzene>;
var butadiene as ILiquidStack = <liquid:butadiene>;
var styrene as ILiquidStack = <liquid:styrene>;
var styrene_rubber as ILiquidStack = <liquid:styrene_butadiene_rubber>;

Distillation.addRecipe([heavy_fuel * 5, light_fuel * 30, <liquid:gasoline> * 35, naphta * 30], [<immersivepetroleum:material>], <liquid:oil> * 100, 2048, 1, [0.09]);
Distillation.addRecipe([heavy_fuel * 5, light_fuel * 30, <liquid:gasoline> * 35, naphta * 30], [<immersivepetroleum:material>], <liquid:crude_oil> * 100, 2048, 1, [0.11]);

Distillation.addRecipe([heavy_fuel * 10, light_fuel * 35, <liquid:gasoline> * 15, naphta * 40], [<immersivepetroleum:material>], <liquid:coal> * 100, 2048, 1, [0.05]);

Distillation.addRecipe([heavy_fuel * 10, light_fuel * 10, toluene * 20, benzene * 50, butadiene * 50, ethylene * 60], [<contenttweaker:coal_dust>], <liquid:steamed_naphtha> * 200, 2048, 1, [0.5]);

Still.addRecipe(<liquid:gasoline> * 100, <liquid:toluene> * 100, 20);
Still.addRecipe(<liquid:lubricant> * 25, <liquid:creosote> * 100, 20);
Still.addRecipe(<liquid:lubricant> * 25, <liquid:seed.oil> * 100, 20);
Still.addRecipe(<liquid:lubricant> * 25, <liquid:seed_oil> * 100, 20);
Still.addRecipe(<liquid:butadiene> * 40, <liquid:diesel> * 100, 20);

Refinery.addRecipe(styrene*15, benzene*10, ethylene*5, 512);
Refinery.addRecipe(styrene_rubber*54, butadiene*18, styrene*6, 512);
