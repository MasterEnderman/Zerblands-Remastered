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

import scripts.functions.calc_basic;

recipes.remove(<rs_ctr:wire>);
recipes.addShapeless(<rs_ctr:wire> * 8, [<ic2:itemtoolcutter:*>.transformDamage(8), <immersiveengineering:wirecoil:5>]);

recipes.remove(<rs_ctr:wire_anchor>);
recipes.addShapeless(<rs_ctr:wire_anchor> * 4, [<appliedenergistics2:nether_quartz_cutting_knife:*>, <appliedenergistics2:part:120>]);
recipes.addShapeless(<rs_ctr:wire_anchor> * 4, [<appliedenergistics2:certus_quartz_cutting_knife:*>, <appliedenergistics2:part:120>]);

recipes.remove(<cd4017be_lib:m:402>);
recipes.addShapeless(<cd4017be_lib:m:402> * 2, [
    <appliedenergistics2:material:46>,
    <astralsorcery:itemcraftingcomponent:2>,
    <contenttweaker:energium_dust>,
    <actuallyadditions:item_dust:4>
]);

recipes.remove(<rs_ctr:rs_port>);
calc_basic(<rs_ctr:rs_port>,<contenttweaker:stone_board>,<ore:dustRedstone>);

recipes.remove(<rs_ctr:rs_port:1>);
calc_basic(<rs_ctr:rs_port:1>,<contenttweaker:stone_board>,<contenttweaker:enrichedgold>);

recipes.remove(<rs_ctr:rs_port:2>);
calc_basic(<rs_ctr:rs_port:2>,<contenttweaker:stone_board>,<ore:dustLapis>);

recipes.remove(<rs_ctr:rs_port:3>);
calc_basic(<rs_ctr:rs_port:3>,<contenttweaker:stone_board>,<cd4017be_lib:m:402>);
