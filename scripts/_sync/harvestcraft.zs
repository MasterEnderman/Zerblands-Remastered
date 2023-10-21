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

import mods.forestry.Centrifuge;

for i in 1 to 16 {
    recipes.remove(getItem("harvestcraft","candledeco"+i));
}

Centrifuge.addRecipe([<harvestcraft:honeyitem> % 100, <harvestcraft:beeswaxitem> % 100], <harvestcraft:honeycombitem>, 100);
Centrifuge.addRecipe([(<harvestcraft:beeswaxitem> * 2)% 100], <harvestcraft:waxcombitem>, 100);

// Fixes: https://github.com/MatrexsVigil/harvestcraft/issues/372
// Credit: https://github.com/SSyl/Enigmatica2Expert-SSylTweaks/commit/a3e96a6f2eadf9613e2f562aaf24cbf3a7b399ec
<ore:cropLychee>.add(<harvestcraft:lycheeitem>);
<ore:cropJackfruit>.add(<harvestcraft:jackfruititem>);

recipes.addShapeless(<harvestcraft:cracklinsitem>, [<ore:toolPot>, <ore:listAllporkraw>, <ore:foodOliveoil>, <ore:cropSpiceleaf>]);
recipes.addShapeless(<harvestcraft:porkrindsitem>, [<ore:toolPot>, <ore:foodSalt>, <ore:foodOliveoil>, <ore:foodBlackpepper>]);

recipes.addShapeless(<harvestcraft:imitationcrabsticksitem>, [<ore:toolCuttingboard>, <ore:foodFlour>, <ore:listAllfishcooked>, <ore:listAllegg>, <minecraft:dye:1>]);
recipes.addShapeless(<harvestcraft:saucedlambkebabitem>, [<ore:toolMixingbowl>, <ore:foodLambkebab>, <ore:foodPlainyogurt>, <ore:listAllheavycream>, <ore:cropGarlic>, <ore:cropSpiceleaf>, <ore:cropLime>]);
recipes.addShapeless(<harvestcraft:swedishmeatballsitem>, [<ore:toolSaucepan>, <ore:foodGroundbeef>, <ore:foodFlour>, <ore:cropSpiceleaf>, <ore:foodGroundnutmeg>, <ore:listAllheavycream>, <ore:foodBlackpepper>, <ore:listAllheavycream>, <ore:listAllegg>]);
recipes.addShapeless(<harvestcraft:garlicsteakitem>, [<ore:toolSkillet>, <ore:listAllbeefraw>, <ore:cropGarlic>, <ore:foodButter>, <ore:cropSpiceleaf>]);

recipes.removeShapeless(<harvestcraft:quesadillaitem>);
recipes.addShapeless(<harvestcraft:quesadillaitem>, [<ore:toolSkillet>, <ore:foodTortilla>, <ore:foodCheese>]);
recipes.addShapeless(<harvestcraft:schnitzelitem>, [<ore:toolSkillet>, <ore:listAllmuttonraw>, <ore:foodFlour>, <ore:cropLemon>, <ore:foodOliveoil>, <ore:foodBlackpepper>]);
recipes.addShapeless(<harvestcraft:schnitzelitem>, [<ore:toolSkillet>, <ore:listAllporkraw>, <ore:foodFlour>, <ore:cropLemon>, <ore:foodOliveoil>, <ore:foodBlackpepper>]);
recipes.addShapeless(<harvestcraft:bratwurstitem>, [<ore:toolCuttingboard>, <ore:foodPorksausage>, <ore:foodPickles>, <ore:cropOnion>, <minecraft:bread>]);
