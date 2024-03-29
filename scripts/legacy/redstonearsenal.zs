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

recipes.remove(<redstonearsenal:material>);
recipes.remove(<redstonearsenal:material:96>);
recipes.remove(<redstonearsenal:material:160>);

Melting.removeRecipe(<liquid:fluxed_electrum>, <redstonearsenal:material:32>);
Melting.addRecipe(<liquid:fluxed_electrum> * 144,<redstonearsenal:material:32>, 500);

Melting.removeRecipe(<liquid:fluxed_electrum>, <redstonearsenal:material:96>);
Melting.addRecipe(<liquid:fluxed_electrum> * 576,<redstonearsenal:material:96>, 500);

recipes.remove(<redstonearsenal:material:192>);
recipes.addShaped(<redstonearsenal:material:192>, [
    [null,null,<tconstruct:tough_tool_rod>.withTag({Material: "obsidian"})],
    [null,<thermalfoundation:material:1024>,null],
    [<tconstruct:tough_tool_rod>.withTag({Material: "obsidian"}),null,null]
]);

recipes.remove(<redstonearsenal:material:224>);
recipes.addShaped(<redstonearsenal:material:224>, [
    [<ore:plateElectrumFlux>,<ore:gearElectrumFlux>,<ore:plateElectrumFlux>],
    [<ore:gearElectrumFlux>,<ore:blockCrystalFlux>,<ore:gearElectrumFlux>],
    [<ore:plateElectrumFlux>,<ore:gearElectrumFlux>,<ore:plateElectrumFlux>]
]);
