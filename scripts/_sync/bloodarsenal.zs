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

import mods.bloodmagic.AlchemyArray;
import mods.bloodmagic.TartaricForge;
import mods.jei.JEI;

import moretweaker.bloodarsenal.Sanguine;

JEI.removeAndHide(<bloodarsenal:slate>);
JEI.removeAndHide(<bloodarsenal:slate:1>);
JEI.removeAndHide(<bloodarsenal:slate:2>);
JEI.removeAndHide(<bloodarsenal:slate:3>);
JEI.removeAndHide(<bloodarsenal:slate:4>);

TartaricForge.removeRecipe([<bloodarsenal:soul_pendant:3>, <bloodarsenal:blood_diamond:1>, <bloodarsenal:slate:4>, <minecraft:nether_star>]);
TartaricForge.addRecipe(<bloodarsenal:soul_pendant:4>, [<bloodarsenal:soul_pendant:3>, <bloodarsenal:blood_diamond:1>, <contenttweaker:slate_ethereal>, <minecraft:nether_star>], 4000, 3000);

AlchemyArray.addRecipe(<bloodarsenal:blood_diamond:3>, <bloodmagic:component:8>, <bloodarsenal:blood_diamond:2>, bloodmagicAlchemyArray["bindinglightningarray"]);

var itemsSanguine as IItemStack[][IItemStack] = {
    <bloodarsenal:stasis_sword> : [<bloodmagic:bound_sword>,<bloodarsenal:blood_infused_iron_sword>],
    <bloodarsenal:stasis_axe> : [<bloodmagic:bound_axe>,<bloodarsenal:blood_infused_iron_axe>],
    <bloodarsenal:stasis_pickaxe> : [<bloodmagic:bound_pickaxe>,<bloodarsenal:blood_infused_iron_pickaxe>],
    <bloodarsenal:stasis_shovel> : [<bloodmagic:bound_shovel>,<bloodarsenal:blood_infused_iron_shovel>],
};

Sanguine.removeRecipe(<bloodarsenal:stasis_sword>);
Sanguine.removeRecipe(<bloodarsenal:stasis_axe>);
Sanguine.removeRecipe(<bloodarsenal:stasis_pickaxe>);
Sanguine.removeRecipe(<bloodarsenal:stasis_shovel>);

for item, cat in itemsSanguine {
    Sanguine.addRecipe(item, 50000, cat[0], [
        cat[1],
        <bloodarsenal:base_item:5>,
        <bloodarsenal:base_item:5>,
        <bloodarsenal:base_item:5>,
        <bloodarsenal:base_item:5>,
        <contenttweaker:slate_demonic>,
        <bloodarsenal:blood_diamond:3>,
        <bloodarsenal:blood_diamond:3>
    ]);
}

Sanguine.removeModifier(Sanguine.BLOOD_LUST);
Sanguine.addModifier(Sanguine.BLOOD_LUST, 20000, [
    <contenttweaker:slate_demonic>,
    <contenttweaker:slate_demonic>,
    <minecraft:redstone_block> * 3,
    <minecraft:redstone_block> * 3,
    <bloodarsenal:base_item:2> * 5,
    <bloodarsenal:base_item:2> * 5,
    <bloodarsenal:base_item> * 8,
    <bloodarsenal:base_item> * 8
]);
