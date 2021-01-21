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
import mods.embers.Stamper;
import mods.tconstruct.Casting;

JEI.removeAndHide(<appliedenergistics2:material:40>);
JEI.removeAndHide(<enderio:item_material:9>);
JEI.removeAndHide(<enderio:item_material:10>);

Casting.removeTableRecipe(<thermalfoundation:material:23>);
Casting.addTableRecipe(<thermalfoundation:material:23>,<thermalfoundation:material:22>,<liquid:stone>,288,true,100);

recipes.remove(<ore:gearWood>);
recipes.remove(<ore:gearStone>);

recipes.addShaped(<thermalfoundation:material:22>, [
    [null,<ore:stickTreatedWood>,null],
    [<ore:stickTreatedWood>,null,<ore:stickTreatedWood>],
    [null,<ore:stickTreatedWood>,null]
]);

var listGears as string[] = [
    "iron",
    "gold",
    "lead",
    "copper",
    "silver"
];

// mods.embers.Stamper.add(IItemStack output, ILiquidStack liquid, IIngredient stamp, @Optional IIngredient input);
for material in listGears {

    var gear as IItemStack = findFirstItemFromMod("thermalfoundation", "gear", material);
    var fluid as ILiquidStack = getFluid(material);

    Stamper.add(gear, fluid * 576, <embers:stamp_gear>);
}
