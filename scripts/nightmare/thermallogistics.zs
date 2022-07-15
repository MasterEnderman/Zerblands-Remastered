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

recipes.removeShaped(<thermallogistics:requester:1>);
recipes.removeShaped(<thermallogistics:requester:2>);
recipes.removeShaped(<thermallogistics:requester:3>);
recipes.removeShaped(<thermallogistics:requester:4>);
recipes.removeShaped(<thermallogistics:crafter:1>);
recipes.removeShaped(<thermallogistics:crafter:2>);
recipes.removeShaped(<thermallogistics:crafter:3>);
recipes.removeShaped(<thermallogistics:crafter:4>);
recipes.removeShaped(<thermallogistics:distributor:1>);
recipes.removeShaped(<thermallogistics:distributor:2>);
recipes.removeShaped(<thermallogistics:distributor:3>);
recipes.removeShaped(<thermallogistics:distributor:4>);

var recipeMapShaped as IIngredient[][][][int][IItemStack] = {
    <thermallogistics:distributor> : {
        2 : [
            [
                [<ore:nuggetElectricalSteel>,<minecraft:comparator>,<ore:nuggetElectricalSteel>],
                [<ore:ingotElectricalSteel>,<thermaldynamics:servo>,<ore:ingotElectricalSteel>]
            ]
        ]
    },
    <thermallogistics:crafter> : {
        2 : [
            [
                [<ore:nuggetElectricalSteel>,<opencomputers:upgrade:11>,<ore:nuggetElectricalSteel>],
                [<ore:ingotElectricalSteel>,<thermaldynamics:retriever>,<ore:ingotElectricalSteel>]
            ]
        ]
    },
    <thermallogistics:requester> : {
        2 : [
            [
                [<ore:nuggetElectricalSteel>,<minecraft:comparator>,<ore:nuggetElectricalSteel>],
                [<ore:ingotElectricalSteel>,<thermaldynamics:retriever>,<ore:ingotElectricalSteel>]
            ]
        ]
    },
    <thermallogistics:terminal_item> : {
        1 : [
            [
                [<ore:gearSignalum>,<thermallogistics:manager>,<ore:gearSignalum>],
                [<contenttweaker:storage_module>,<thermalexpansion:frame>,<contenttweaker:storage_module>],
                [<immersiveengineering:metal_decoration0:5>,<thermalfoundation:material:513>,<immersiveengineering:metal_decoration0:5>]
            ]
        ]
    },
    <thermallogistics:manager> : {
        1 : [
            [
                [null,<integrateddynamics:part_network_reader_item>,null],
                [<ore:stickIron>,<rftools:network_monitor>,<ore:stickIron>],
                [null,<thermalfoundation:material:640>,null]
            ]
        ]
    }
};

for key, value in recipeMapShaped {
	var index as int = 0;    
    recipes.remove(key);
    for amount, entry in value {
        for recipe in entry {
            var name as string = "ct_"+toString(key)+"_"+index;
            recipes.addShaped(name, key * amount, recipe);
            index += 1;
        }
    }
}
