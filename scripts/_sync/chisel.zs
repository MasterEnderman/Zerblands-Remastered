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
    ],
    "ct_concrete_door" : [
        <engineersdoors:door_concrete>,
        <engineersdoors:door_concrete_ornate>,
        <engineersdoors:door_concrete_reinforced>,
    ],
    "ct_steel_door" : [
        <engineersdoors:door_steel>,
        <engineersdoors:door_steel_ornate>,
        <engineersdoors:door_steel_reinforced>,
    ],
    "ct_treated_door" : [
        <engineersdoors:door_treated>,
        <engineersdoors:door_treated_ornate>,
        <engineersdoors:door_treated_reinforced>,
    ],
    "ct_candle": [
        <forestry:candle>,
        <harvestcraft:candledeco1>,
        <harvestcraft:candledeco2>,
        <harvestcraft:candledeco3>,
        <harvestcraft:candledeco4>,
        <harvestcraft:candledeco5>,
        <harvestcraft:candledeco6>,
        <harvestcraft:candledeco7>,
        <harvestcraft:candledeco8>,
        <harvestcraft:candledeco9>,
        <harvestcraft:candledeco10>,
        <harvestcraft:candledeco11>,
        <harvestcraft:candledeco12>,
        <harvestcraft:candledeco13>,
        <harvestcraft:candledeco14>,
        <harvestcraft:candledeco15>,
        <harvestcraft:candledeco16>,
        <quark:candle>,
        <quark:candle:1>,
        <quark:candle:2>,
        <quark:candle:3>,
        <quark:candle:4>,
        <quark:candle:5>,
        <quark:candle:6>,
        <quark:candle:7>,
        <quark:candle:8>,
        <quark:candle:9>,
        <quark:candle:10>,
        <quark:candle:11>,
        <quark:candle:12>,
        <quark:candle:13>,
        <quark:candle:14>,
        <quark:candle:15>,
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

Carving.addVariation("bookshelf_acacia",<quark:custom_bookshelf:3>);
recipes.remove(<chisel:bookshelf_acacia>);

Carving.addVariation("bookshelf_birch",<quark:custom_bookshelf:1>);
recipes.remove(<chisel:bookshelf_birch>);

Carving.addVariation("bookshelf_darkoak",<quark:custom_bookshelf:4>);
recipes.remove(<chisel:bookshelf_darkoak>);

Carving.addVariation("bookshelf_jungle",<quark:custom_bookshelf:2>);
recipes.remove(<chisel:bookshelf_jungle>);

Carving.addVariation("bookshelf_spruce",<quark:custom_bookshelf>);
recipes.remove(<chisel:bookshelf_spruce>);

