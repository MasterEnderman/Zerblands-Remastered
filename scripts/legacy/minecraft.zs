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

import scripts.functions.calc_flawless;

import mods.actuallyadditions.Empowerer;
import mods.tconstruct.Drying;

furnace.remove(<minecraft:coal:1>);

recipes.addShaped(<minecraft:brown_mushroom>, [
    [null,<harvestcraft:whitemushroomitem>,null],
    [<harvestcraft:whitemushroomitem>,<harvestcraft:whitemushroomitem>,<harvestcraft:whitemushroomitem>],
    [null,<harvestcraft:whitemushroomitem>,null]
]);

recipes.addShaped(<minecraft:red_mushroom>, [
    [<harvestcraft:whitemushroomitem>,null,<harvestcraft:whitemushroomitem>],
    [null,<harvestcraft:whitemushroomitem>,null],
    [<harvestcraft:whitemushroomitem>,null,<harvestcraft:whitemushroomitem>]
]);

recipes.addShaped(<minecraft:dragon_breath>, [
    [<ore:bEnderAirBottle>],
    [<ore:elvenDragonstone>]
]);

recipes.addShaped(<minecraft:clay_ball>*4, [
    [<minecraft:clay>]
]);

recipes.addShaped(<minecraft:experience_bottle>, [
    [<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>],
    [<actuallyadditions:item_solidified_experience>,<randomthings:imbue:2>,<actuallyadditions:item_solidified_experience>],
    [<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_solidified_experience>]
]);

recipes.addShaped(<minecraft:golden_apple:1>, [
    [<ore:blockGold>,<ore:blockGold>,<ore:blockGold>],
    [<ore:blockGold>,<minecraft:apple>,<ore:blockGold>],
    [<ore:blockGold>,<ore:blockGold>,<ore:blockGold>]
]);

recipes.addShaped(<minecraft:glowstone_dust>, [
    [<ore:dustRedstone>,<ore:dustGold>],
    [<ore:dustGold>,<ore:dustRedstone>]
]);

recipes.addShaped(<minecraft:dirt>, [
    [<contenttweaker:soil>,<contenttweaker:soil>,<contenttweaker:soil>],
    [<contenttweaker:soil>,<contenttweaker:soil>,<contenttweaker:soil>],
    [<contenttweaker:soil>,<contenttweaker:soil>,<contenttweaker:soil>]
]);

recipes.addShaped(<minecraft:cobblestone>, [
    [<contenttweaker:small_stone>,<contenttweaker:small_stone>,<contenttweaker:small_stone>],
    [<contenttweaker:small_stone>,<contenttweaker:small_stone>,<contenttweaker:small_stone>],
    [<contenttweaker:small_stone>,<contenttweaker:small_stone>,<contenttweaker:small_stone>]
]);

recipes.remove(<minecraft:end_crystal>);
recipes.addShaped(<minecraft:end_crystal>, [
    [<thermalfoundation:glass:7>,<thermalfoundation:glass:7>,<thermalfoundation:glass:7>],
    [<thermalfoundation:glass:7>,<actuallyadditions:item_misc:19>,<thermalfoundation:glass:7>],
    [<thermalfoundation:glass:7>,<xreliquary:void_tear>,<thermalfoundation:glass:7>]
]);

// IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time
Empowerer.addRecipe(<minecraft:mob_spawner>, <enderio:item_broken_spawner>, <minecraft:porkchop>, <minecraft:porkchop>, <minecraft:porkchop>, <actuallyadditions:block_crystal_empowered:4>, 100000, 1000);

// IItemStack output, IIngredient input, int time
Drying.addRecipe(<minecraft:clay_ball>, <earthworks:item_mud>, 50);

var listVine as IItemStack[] = [
    <tconstruct:slime_vine_blue_end>,
    <tconstruct:slime_vine_blue_mid>,
    <tconstruct:slime_vine_blue>,
    <tconstruct:slime_vine_purple_end>,
    <tconstruct:slime_vine_purple_mid>,
    <tconstruct:slime_vine_purple>
];

for item in listVine {
    recipes.addShapeless(<minecraft:mossy_cobblestone>, [<minecraft:cobblestone>,item]);
}

calc_flawless(<minecraft:diamond>,<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>);
calc_flawless(<minecraft:emerald>,<ore:gemDiamond>,<ore:gemDiamond>,<ore:gemDiamond>,<ore:gemDiamond>);
calc_flawless(<minecraft:ender_pearl>,<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>);
calc_flawless(<minecraft:obsidian>,<ore:logWood>,<ore:logWood>,<ore:logWood>,<ore:logWood>);
calc_flawless(<minecraft:blaze_rod>,<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:blaze_powder>);
calc_flawless(<minecraft:ghast_tear>,<minecraft:blaze_rod>,<minecraft:blaze_rod>,<minecraft:blaze_rod>,<minecraft:blaze_rod>);
