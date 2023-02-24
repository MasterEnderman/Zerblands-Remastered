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

import mods.chisel.Carving;

var chiselMap as IItemStack[][string] = {
    "ct_darkstone" : [
        <abyssalcraft:stone>,
        <contenttweaker:ds>,
        <contenttweaker:dsssides>,
        <contenttweaker:dsbcr>,
        <contenttweaker:dsbf>,
        <contenttweaker:dsglow>,
        <contenttweaker:dsstop>,
        <contenttweaker:dsbc>,
        <contenttweaker:dsc>,
        <contenttweaker:dsb>,
    ],
    "ct_dreadstone" : [
        <abyssalcraft:stone:2>,
        <contenttweaker:drsbcr>,
        <contenttweaker:drs>,
        <contenttweaker:bod>,
        <contenttweaker:drsbc>,
        <contenttweaker:drsb>,
    ],
    "ct_abyssalnite" : [
        <abyssalcraft:stone:3>,
        <contenttweaker:boa>,
    ],
    "ct_abyssalstone" : [
        <abyssalcraft:stone:1>,
        <contenttweaker:asbcr>,
        <contenttweaker:asbc>,
        <contenttweaker:asbf>,
        <contenttweaker:asc>,
        <contenttweaker:asb>,
    ],
    "ct_dar_ethaxium" : [
        <abyssalcraft:darkethaxiumbrick>,
        <contenttweaker:deb>,
        <contenttweaker:debcr>,
        <contenttweaker:debp>,
        <contenttweaker:debc>,
        <contenttweaker:debp_top>,
    ],
    "ct_ethaxium" : [
        <abyssalcraft:ethaxiumbrick>,
        <contenttweaker:eb>,
        <contenttweaker:boe>,
        <contenttweaker:ebc>,
        <contenttweaker:ebcr>,
        <contenttweaker:ebp_top>,
        <contenttweaker:ebp>,
    ],
    "ct_coralium" : [
        <abyssalcraft:stone:4>,
        <contenttweaker:cstonebrickcr>,
        <contenttweaker:cstonebrickc>,
        <contenttweaker:cstonebrick>,
        <contenttweaker:coraliumcobblestone>,
        <contenttweaker:boc>,
        <contenttweaker:cstone>,
    ],
    "ct_wither" : [
        <contenttweaker:wither_clean>,
        <contenttweaker:wither_bricked>,
        <contenttweaker:wither_carved>,
        <contenttweaker:wither_chiseled>,
        <contenttweaker:wither_magma>,
        <contenttweaker:wither_tiled>,
        <contenttweaker:withersand>,
    ],
    "ct_runestone" : [
        <contenttweaker:runestone>,
        <contenttweaker:runestone_brick>,
        <contenttweaker:runestone_chiseled>,
    ],
    "ct_engineer" : [
        <immersiveengineering:sheetmetal:9>,
        <contenttweaker:block1>,
        <contenttweaker:block2>,
        <contenttweaker:block3>,
        <contenttweaker:block4>,
        <contenttweaker:block5>,
        <contenttweaker:block6>,
        <contenttweaker:block7>,
        <contenttweaker:block8>,
        <contenttweaker:block9>,
        <contenttweaker:block10>,
        <contenttweaker:block11>,
        <contenttweaker:block12>,
        <contenttweaker:block13>,
        <contenttweaker:block14>,
        <contenttweaker:block15>,
        <contenttweaker:block16>,
        <contenttweaker:block17>,
        <contenttweaker:block18>,
        <contenttweaker:block19>,
        <contenttweaker:block20>,
        <contenttweaker:block21>,
        <contenttweaker:block22>,
        <contenttweaker:block23>,
    ],
    "ct_blackstone" : [
        <blackstonebasalt:blackstoneblock>,
        <blackstonebasalt:polished_blackstone>,
        <blackstonebasalt:blackstonebricks>,
    ],
    "ct_blackbasalt" : [
        <blackstonebasalt:basalt>,
        <blackstonebasalt:polishedbasalt>,
        <blackstonebasalt:smoothbasalt>,
    ]
};

for group, items in chiselMap {
    Carving.addGroup(group);

    for item in items {
        Carving.addVariation(group, item);
    }
}

recipes.addShaped(<contenttweaker:wither_clean> * 16, [
    [<enderzoo:witheringdust>,<enderzoo:witheringdust>],
    [<enderzoo:witheringdust>,<enderzoo:witheringdust>]
]);
recipes.addShaped(<contenttweaker:wither_clean> * 16, [
    [<xreliquary:mob_ingredient:1>,<xreliquary:mob_ingredient:1>],
    [<xreliquary:mob_ingredient:1>,<xreliquary:mob_ingredient:1>]
]);
recipes.addShaped(<contenttweaker:wither_clean> * 64, [
    [<minecraft:stone>,<minecraft:skull:1>,<minecraft:stone>],
    [<minecraft:stone>,<minecraft:skull:1>,<minecraft:stone>],
    [<minecraft:stone>,<minecraft:skull:1>,<minecraft:stone>]
]);
