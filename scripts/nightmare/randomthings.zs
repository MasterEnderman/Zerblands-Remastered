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

recipes.remove(<randomthings:fertilizeddirt>);
recipes.addShaped(<randomthings:fertilizeddirt> * 4, [
    [<tconstruct:soil:4>,<evilcraft:blood_potash>,<tconstruct:soil:4>],
    [<evilcraft:blood_potash>,<sonarcore:reinforceddirtblock>,<evilcraft:blood_potash>],
    [<tconstruct:soil:4>,<evilcraft:blood_potash>,<tconstruct:soil:4>]
]);

recipes.remove(<randomthings:ingredient:8>);
recipes.addShaped(<randomthings:ingredient:8> * 8, [
    [<ore:plateIron>,<minecraft:iron_bars>,<ore:plateIron>],
    [<minecraft:iron_bars>,<minecraft:iron_bars>,<minecraft:iron_bars>],
    [<ore:plateIron>,<minecraft:iron_bars>,<ore:plateIron>]
]);
