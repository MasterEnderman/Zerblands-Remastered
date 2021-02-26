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

recipes.remove(<buildinggadgets:buildingtool>);
recipes.addShaped(<buildinggadgets:buildingtool>, [
    [<ore:plateIridium>,<contenttweaker:flawless_assembly>,<ore:plateIridium>],
    [<ore:gemDiamond>,<immersiveengineering:metal_device0:1>,<ore:gemDiamond>],
    [<ore:plateIridium>,<contenttweaker:flawless_assembly>,<ore:plateIridium>]
]);

recipes.remove(<buildinggadgets:exchangertool>);
recipes.addShaped(<buildinggadgets:exchangertool>, [
    [<ore:plateIridium>,<contenttweaker:flawless_assembly>,<ore:plateIridium>],
    [<ore:gemEmerald>,<immersiveengineering:metal_device0:1>,<ore:gemEmerald>],
    [<ore:plateIridium>,<contenttweaker:flawless_assembly>,<ore:plateIridium>]
]);

recipes.remove(<buildinggadgets:copypastetool>);
recipes.addShaped(<buildinggadgets:copypastetool>, [
    [<ore:plateIridium>,<ore:gearEnderium>,<ore:plateIridium>],
    [<contenttweaker:flawless_assembly>,<immersiveengineering:metal_device0:1>,<contenttweaker:flawless_assembly>],
    [<ore:plateIridium>,<ore:gearEnderium>,<ore:plateIridium>]
]);

recipes.remove(<buildinggadgets:constructionpastecontainer>);
recipes.addShaped(<buildinggadgets:constructionpastecontainer>, [
    [<ore:plateIridium>,<ore:platePlatinum>,<ore:plateIridium>],
    [<ore:platePlatinum>,<immersiveengineering:wooden_device0:5>,<ore:platePlatinum>],
    [<ore:plateIridium>,<ore:platePlatinum>,<ore:plateIridium>]
]);

recipes.remove(<buildinggadgets:constructionblockpowder>);
recipes.addShapeless(<buildinggadgets:constructionblockpowder>, [
    <ore:itemSlag>,<ore:crystalCrudeOil>,
    <earthworks:block_chalk>,<minecraft:clay_ball>
]);
