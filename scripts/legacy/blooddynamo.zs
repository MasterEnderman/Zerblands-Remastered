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

import mods.bloodmagic.BloodAltar;
import mods.jei.JEI;

JEI.removeAndHide(<blood_dynamo:ingredient>);
JEI.removeAndHide(<blood_dynamo:ingredient:1>);
JEI.removeAndHide(<blood_dynamo:ingredient:3>);

BloodAltar.addRecipe(<blood_dynamo:ingredient:2>,<thermalfoundation:material:23>,1,1000,100,100);

recipes.addShaped(<blood_dynamo:mixed_dynamo>, [
    [null,<thermalfoundation:material:514>,null],
    [<bloodarsenal:base_item:3>,<blood_dynamo:ingredient:2>,<bloodarsenal:base_item:3>],
    [<bloodmagic:slate:1>,<ore:dustRedstone>,<bloodmagic:slate:1>]
]);

recipes.addShaped(<blood_dynamo:blood_dynamo>, [
    [null,<thermalfoundation:material:514>,null],
    [<ore:ingotIron>,<blood_dynamo:ingredient:2>,<ore:ingotIron>],
    [<bloodmagic:slate>,<ore:dustRedstone>,<bloodmagic:slate>]
]);
