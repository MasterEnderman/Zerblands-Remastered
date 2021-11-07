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

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <cd4017be_lib:m:403> : [
        [
            [<rs_ctr:wire>,<ore:nuggetIron>,<rs_ctr:wire>],
            [<ore:nuggetIron>,<ore:gemRedstone>,<ore:nuggetIron>],
            [<rs_ctr:wire>,<ore:nuggetIron>,<rs_ctr:wire>]
        ]
    ],
    <cd4017be_lib:m:404> : [
        [
            [<cd4017be_lib:m:403>,<cd4017be_lib:m:403>,<cd4017be_lib:m:403>],
            [<cd4017be_lib:m:403>,<ore:plateSteel>,<cd4017be_lib:m:403>],
            [<cd4017be_lib:m:403>,<cd4017be_lib:m:403>,<cd4017be_lib:m:403>]
        ]
    ],
    <cd4017be_lib:m:405> : [
        [
            [<contenttweaker:weakeneddiamond>,<cd4017be_lib:m:404>,<contenttweaker:weakeneddiamond>],
            [<cd4017be_lib:m:404>,<contenttweaker:flawlessdiamond>,<cd4017be_lib:m:404>],
            [<contenttweaker:weakeneddiamond>,<cd4017be_lib:m:404>,<contenttweaker:weakeneddiamond>]
        ]
    ],
    <cd4017be_lib:m:400> : [
        [
            [<ore:nuggetElectrum>,<rs_ctr:wire_e>,<ore:nuggetElectrum>],
            [<ore:plateBatteryAlloy>,<contenttweaker:potatos>,<ore:plateBatteryAlloy>],
            [<ore:nuggetElectrum>,<rs_ctr:wire_e>,<ore:nuggetElectrum>]
        ]
    ]
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
