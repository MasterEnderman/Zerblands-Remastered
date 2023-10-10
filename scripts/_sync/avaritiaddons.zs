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

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <avaritiaddons:avaritiaddons_chest> : [
        [
            [<astralsorcery:blockinfusedwood>,<metalchests:metal_chest:4>,<astralsorcery:blockinfusedwood>],
            [<metalchests:metal_chest:4>,<actuallyadditions:block_giant_chest_medium>,<metalchests:metal_chest:4>],
            [<astralsorcery:blockinfusedwood>,<metalchests:metal_chest:4>,<astralsorcery:blockinfusedwood>]
        ]
    ],
    <avaritiaddons:extreme_auto_crafter> : [
        [
            [<ore:ingotCosmicNeutronium>,<avaritia:singularity:3>,<ore:ingotCosmicNeutronium>],
            [<ore:ingotCosmicNeutronium>,<botania_tweaks:dire_crafty_crate>,<ore:ingotCosmicNeutronium>],
            [<ore:gearChaoticMetal>,<thermalfoundation:material:513>,<ore:gearChaoticMetal>]
        ]
    ],
};

for key, value in recipeMapShaped {
	var index as int = 0;    
    recipes.remove(key);

    for recipe in value {
        var name as string = "ct_"+toString(key)+"_"+index;
        recipes.addShaped(name, key, recipe);
        index += 1;
    }
}
