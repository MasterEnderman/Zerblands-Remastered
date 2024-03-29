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

import mods.botania.ManaInfusion;

recipes.addShaped(<psi:cad_assembly:5>, [
    [<contenttweaker:creative>,<contenttweaker:creative>,<contenttweaker:creative>],
    [<contenttweaker:creative>,null,null]
]);

var mapMaterial as int[IItemStack] = {
	<psi:material> : 1000,
	<psi:material:1> : 20000,
	<psi:material:2> : 100000,
	<psi:material:3> : 1000000,
	<psi:material:4> : 1000000,
	<psi:material:5> : 10000,
	<psi:material:6> : 10000,
};

for material, mana in mapMaterial {
	ManaInfusion.addConjuration(material * 2, material, mana);
}
