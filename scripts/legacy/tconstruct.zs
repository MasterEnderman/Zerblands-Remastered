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

import mods.tconstruct.Melting;

Melting.removeEntityMelting(<entity:minecraft:villager>);
Melting.removeEntityMelting(<entity:minecraft:horse>);

var demonic_plate as IItemStack = <tconstruct:large_plate>.withTag({Material: "xu_demonic_metal"});

recipes.addShaped(<tconstruct:materials:50>, [
    [demonic_plate,demonic_plate,demonic_plate],
    [demonic_plate,<randomthings:obsidianskull>,demonic_plate],
    [demonic_plate,demonic_plate,demonic_plate]
]);

recipes.addShaped(<tconstruct:seared:3> * 6, [
    [<ore:ingotConstructionAlloy>,<ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>,<ore:ingotConstructionAlloy>]
]);

recipes.remove(<tconstruct:throwball:1>);
recipes.addShaped(<tconstruct:throwball:1>, [
    [<ic2:blockexplosive>,<ic2:blockexplosive>,<ic2:blockexplosive>],
    [<ic2:blockexplosive>,<minecraft:magma_cream>,<ic2:blockexplosive>],
    [<ic2:blockexplosive>,<ic2:blockexplosive>,<ic2:blockexplosive>]
]);

var mapBlood as int[IItemStack] = {
    <minecraft:porkchop> : 200,
    <minecraft:beef> : 200,
    <minecraft:chicken> : 200,
    <minecraft:rabbit> : 200,
    <minecraft:mutton> : 200,
    <harvestcraft:turkeyrawitem> : 200,
    <harvestcraft:venisonrawitem> : 200,
    <harvestcraft:duckrawitem> : 200,
    <minecraft:rotten_flesh> : 250,
};

Melting.removeRecipe(<liquid:blood>);

for item, amount in mapBlood {
    Melting.addRecipe(<liquid:blood> * amount, item, 500);
}
