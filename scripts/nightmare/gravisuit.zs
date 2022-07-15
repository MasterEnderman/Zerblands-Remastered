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
    <gravisuit:superconductorcover> * 3 : [
        [
            [<ic2:itemmisc:257>,<ic2:itemmisc:258>,<ic2:itemmisc:257>],
            [<ore:ingotStellarAlloy>,<ic2:itemmisc:263>,<ore:ingotStellarAlloy>],
            [<ic2:itemmisc:257>,<ic2:itemmisc:258>,<ic2:itemmisc:257>]
        ]
    ],
    <gravisuit:superconductor> : [
        [
            [<gravisuit:superconductorcover>,<gravisuit:superconductorcover>,<gravisuit:superconductorcover>],
            [<ic2:itemcable:16>,<ic2:itemmisc:264>,<ic2:itemcable:16>],
            [<gravisuit:superconductorcover>,<gravisuit:superconductorcover>,<gravisuit:superconductorcover>]
        ]
    ],
    <gravisuit:magnetron> : [
        [
            [<ic2:itemmisc:263>,<gravisuit:superconductor>,<ic2:itemmisc:263>],
            [<gravisuit:superconductor>,<ore:blockFerromagneticAlloy>,<gravisuit:superconductor>],
            [<ic2:itemmisc:263>,<gravisuit:superconductor>,<ic2:itemmisc:263>]
        ]
    ],
    <gravisuit:gravitationengine> : [
        [
            [<gravisuit:superconductor>,<ic2:blockmachinemv:9>,<gravisuit:superconductor>],
            [<gravisuit:engineboost>,<ic2:blockelectric:13>,<gravisuit:engineboost>],
            [<gravisuit:coolingcore>,<ore:gearUUMatter>,<gravisuit:coolingcore>]
        ]
    ],
    <gravisuit:engineboost> : [
        [
            [<ic2:itemmisc:452>,<ic2:ic2upgrades>,<ic2:itemmisc:452>],
            [<ore:gearEnergium>,<simplyjetpacks:metaitemmods:15>,<ore:gearEnergium>],
            [<simplyjetpacks:metaitemmods:28>,<ic2:itemheatvent:3>,<simplyjetpacks:metaitemmods:28>]
        ]
    ],
    <gravisuit:coolingcore> : [
        [
            [<simplyjetpacks:metaitemmods:30>,<ic2:itemheatswtiches:3>,<simplyjetpacks:metaitemmods:30>],
            [<ic2:itemreactorplating:1>,<ic2:itemmisc:258>,<ic2:itemreactorplating:1>],
            [<simplyjetpacks:metaitemmods:30>,<ic2:itemheatswtiches:3>,<simplyjetpacks:metaitemmods:30>]
        ]
    ],
    <gravisuit:advancedchainsaw> : [
        [
            [null,<ore:gemDiamond>,null],
            [<ic2:ic2upgrades:32>,<ic2:itemtoolchainsaw>,<ic2:ic2upgrades:32>],
            [<ic2:itemmisc:452>,<ic2:ic2upgrades:32>,<ic2:itemmisc:452>]
        ]
    ],
    <gravisuit:advanceddrill> : [
        [
            [null,<ore:gemDiamond>,null],
            [<ic2:ic2upgrades:32>,<ic2:itemdrills:1>,<ic2:ic2upgrades:32>],
            [<ic2:itemmisc:452>,<ic2:ic2upgrades:32>,<ic2:itemmisc:452>]
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
