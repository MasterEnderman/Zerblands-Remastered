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

var mapRock as IIngredient[IItemStack] = {
    <earthworks:block_slate> : <ore:dyeBlue>,
    <earthworks:block_slate_green> : <ore:dyeGreen>,
    <earthworks:block_slate_purple> : <ore:dyePurple>
};

for item, color in mapRock {
    recipes.addShaped(item * 8, [
        [<minecraft:flint>,<minecraft:flint>,<minecraft:flint>],
        [<minecraft:flint>,color,<minecraft:flint>],
        [<minecraft:flint>,<minecraft:flint>,<minecraft:flint>]
    ]);
}

var daubCob as IItemStack[] = [
    <earthworks:daub_cob_arrow0>,
    <earthworks:daub_cob_arrow1>,
    <earthworks:daub_cob_arrow2>,
    <earthworks:daub_cob_arrow3>,
    <earthworks:daub_cob_barndoor0>,
    <earthworks:daub_cob_barndoor1>,
    <earthworks:daub_cob_barndoor2>,
    <earthworks:daub_cob_barndoor3>,
    <earthworks:daub_cob_barndoor4>,
    <earthworks:daub_cob_barndoor5>,
    <earthworks:daub_cob_barndoor6>,
    <earthworks:daub_cob_barndoor7>,
    <earthworks:daub_cob_bottom_l>,
    <earthworks:daub_cob_bottom>,
    <earthworks:daub_cob_bottom_r>,
    <earthworks:daub_cob_left>,
    <earthworks:daub_cob_parallel_hor>,
    <earthworks:daub_cob_parallel_vert>,
    <earthworks:daub_cob_right>,
    <earthworks:daub_cob_slash_back>,
    <earthworks:daub_cob_slash>,
    <earthworks:daub_cob_square>,
    <earthworks:daub_cob_square_x>,
    <earthworks:daub_cob_top_l>,
    <earthworks:daub_cob_top>,
    <earthworks:daub_cob_top_r>,
    <earthworks:daub_cob_triangle0>,
    <earthworks:daub_cob_triangle1>,
    <earthworks:daub_cob_triangle2>,
    <earthworks:daub_cob_triangle3>,
    <earthworks:daub_cob_xbottom>,
    <earthworks:daub_cob_xdoor0>,
    <earthworks:daub_cob_xdoor1>,
    <earthworks:daub_cob_xdoor2>,
    <earthworks:daub_cob_xdoor3>,
    <earthworks:daub_cob_xleft>,
    <earthworks:daub_cob_x>,
    <earthworks:daub_cob_xright>,
    <earthworks:daub_cob_xtop>,
];

Carving.addGroup("daub_cob");

for item in daubCob {
    recipes.remove(item);
    Carving.addVariation("daub_cob", item);
}

recipes.addShaped(<earthworks:daub_cob_arrow0> * 4, [
    [<earthworks:item_timber>,<earthworks:block_wattle>,<earthworks:item_timber>],
    [<earthworks:block_wattle>,<earthworks:item_timber>,<earthworks:block_wattle>],
    [<earthworks:item_timber>,<earthworks:block_wattle>,<earthworks:item_timber>]
]);

var palster as IItemStack[] = [
    <earthworks:plaster_arrow0>,
    <earthworks:plaster_arrow1>,
    <earthworks:plaster_arrow2>,
    <earthworks:plaster_arrow3>,
    <earthworks:plaster_barndoor0>,
    <earthworks:plaster_barndoor1>,
    <earthworks:plaster_barndoor2>,
    <earthworks:plaster_barndoor3>,
    <earthworks:plaster_barndoor4>,
    <earthworks:plaster_barndoor5>,
    <earthworks:plaster_barndoor6>,
    <earthworks:plaster_barndoor7>,
    <earthworks:plaster_bottom_l>,
    <earthworks:plaster_bottom>,
    <earthworks:plaster_bottom_r>,
    <earthworks:plaster_left>,
    <earthworks:plaster_parallel_hor>,
    <earthworks:plaster_parallel_vert>,
    <earthworks:plaster_right>,
    <earthworks:plaster_slash_back>,
    <earthworks:plaster_slash>,
    <earthworks:plaster_square>,
    <earthworks:plaster_square_x>,
    <earthworks:plaster_top_l>,
    <earthworks:plaster_top>,
    <earthworks:plaster_top_r>,
    <earthworks:plaster_triangle0>,
    <earthworks:plaster_triangle1>,
    <earthworks:plaster_triangle2>,
    <earthworks:plaster_triangle3>,
    <earthworks:plaster_xbottom>,
    <earthworks:plaster_xdoor0>,
    <earthworks:plaster_xdoor1>,
    <earthworks:plaster_xdoor2>,
    <earthworks:plaster_xdoor3>,
    <earthworks:plaster_xleft>,
    <earthworks:plaster_x>,
    <earthworks:plaster_xright>,
    <earthworks:plaster_xtop>,
];

Carving.addGroup("plaster");

for item in daubCob {
    recipes.remove(item);
    Carving.addVariation("plaster", item);
}

recipes.addShaped(<earthworks:plaster_arrow0> * 4, [
    [<earthworks:item_timber>,<earthworks:block_plaster>,<earthworks:item_timber>],
    [<earthworks:block_plaster>,<earthworks:item_timber>,<earthworks:block_plaster>],
    [<earthworks:item_timber>,<earthworks:block_plaster>,<earthworks:item_timber>]
]);
