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

import mods.bloodmagic.BloodAltar;
import mods.evilcraft.BloodInfuser;
import mods.immersivetechnology.Distiller;

BloodInfuser.addRecipe(<thermalfoundation:material:23>, <liquid:evilcraftblood> * 4000, 0, <blood_dynamo:ingredient:2>, 100, 2);

BloodAltar.addRecipe(<blood_dynamo:ingredient:2>, <thermalfoundation:material:23>, 0, 2000,5,5);

Distiller.addRecipe(<liquid:refined_life_essence> * 100, <liquid:lifeessence> * 100, <evilcraft:hardened_blood_shard>, 2048, 20, 0.1);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <blood_dynamo:blood_dynamo> : [
        [
            [null,<thermalfoundation:material:514>,null],
            [<blood_dynamo:ingredient:2>,<contenttweaker:electric_motor>,<blood_dynamo:ingredient:2>],
            [<immersiveengineering:metal_decoration0:5>,<bloodmagic:blood_shard>,<immersiveengineering:metal_decoration0:5>]
        ]
    ],
    <blood_dynamo:mixed_dynamo> : [
        [
            [null,<thermalfoundation:material:514>,null],
            [<blood_dynamo:ingredient:2>,<contenttweaker:electric_motor>,<blood_dynamo:ingredient:2>],
            [<immersiveengineering:metal_decoration0:5>,<bloodmagic:blood_shard:1>,<immersiveengineering:metal_decoration0:5>]
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
