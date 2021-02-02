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

import mods.enderio.AlloySmelter;

recipes.remove(<valkyrielib:modifier_component>);
recipes.addShaped(<valkyrielib:modifier_component> * 4, [
    [<enderio:item_material:2>,<calculator:redstoneingot>,<enderio:item_material:2>],
    [<calculator:redstoneingot>,<extrautils2:decorativesolid:7>,<calculator:redstoneingot>],
    [<enderio:item_material:2>,<calculator:redstoneingot>,<enderio:item_material:2>]
]);

recipes.remove(<valkyrielib:modifier_speed>);
recipes.addShaped(<valkyrielib:modifier_speed>, [
    [<ore:ingotEnrichedGold>,<ore:gemRedstone>,<ore:ingotEnrichedGold>],
    [<ore:gemRedstone>,<valkyrielib:modifier_component>,<ore:gemRedstone>],
    [<ore:ingotEnrichedGold>,<ore:gemRedstone>,<ore:ingotEnrichedGold>]
]);

recipes.remove(<environmentaltech:connector>);
recipes.addShaped(<environmentaltech:connector> * 4, [
    [<ore:gemRedstone>,<ore:blockConstructionAlloy>,<ore:gemRedstone>],
    [<ore:blockConstructionAlloy>,<extrautils2:decorativesolid:7>,<ore:blockConstructionAlloy>],
    [<ore:gemRedstone>,<ore:blockConstructionAlloy>,<ore:gemRedstone>]
]);

recipes.remove(<environmentaltech:interconnect>);
recipes.addShaped(<environmentaltech:interconnect>, [
    [<extrautils2:decorativesolid:7>,<environmentaltech:connector>,<extrautils2:decorativesolid:7>],
    [<environmentaltech:connector>,<valkyrielib:modifier_component>,<environmentaltech:connector>],
    [<extrautils2:decorativesolid:7>,<environmentaltech:connector>,<extrautils2:decorativesolid:7>]
]);

recipes.remove(<environmentaltech:photovoltaic_cell>);
AlloySmelter.addRecipe(<environmentaltech:photovoltaic_cell>, [<enderio:item_material:3>,<extrautils2:ingredients:3>,<ore:nuggetCobalt> * 3], 5000);

recipes.remove(<environmentaltech:diode>);
AlloySmelter.addRecipe(<environmentaltech:diode>, [<enderio:item_material:56>,<quantumflux:craftingpiece:5>,<astralsorcery:itemusabledust:1> * 16], 5000);

recipes.remove(<environmentaltech:litherite_crystal>);
recipes.addShaped(<environmentaltech:litherite_crystal> * 9, [
    [<environmentaltech:litherite>]
]);
recipes.addShaped(<environmentaltech:litherite_crystal> * 2, [
    [<ore:dyeLime>,<ore:flint>,<ore:dyeLime>],
    [<ore:flint>,<quantumflux:craftingpiece:6>,<ore:flint>],
    [<ore:dyeLime>,<ore:flint>,<ore:dyeLime>]
]);
