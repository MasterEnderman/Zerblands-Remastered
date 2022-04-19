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

calc_basic(<gendustry:pollen_kit>,<gendustry:labware>,<enderio:block_industrial_insulation>);

var recipeMapShaped as IIngredient[][][][int][IItemStack] = {
    <gendustry:power_module> : {
        1 : [
            [
                [<thermalfoundation:material:356>,<woot:factorycore:5>,<thermalfoundation:material:356>],
                [<enderio:item_material:12>,<thermalexpansion:frame:146>,<enderio:item_material:12>],
                [<thermalfoundation:material:356>,<contenttweaker:module_energy>,<thermalfoundation:material:356>]
            ]
        ]
    },
    <gendustry:labware> : {
        16 : [
            [
                [<contenttweaker:stemcells>,<contenttweaker:stemcells>,<contenttweaker:stemcells>],
                [<contenttweaker:stemcells>,<contenttweaker:cutting_head>,<contenttweaker:stemcells>],
                [<contenttweaker:stemcells>,<contenttweaker:stemcells>,<contenttweaker:stemcells>]
            ]
        ],
        32 : [
            [
                [<contenttweaker:stemcells>,<contenttweaker:stemcells>,<contenttweaker:stemcells>],
                [<contenttweaker:stemcells>,<contenttweaker:cutting_head_iron>,<contenttweaker:stemcells>],
                [<contenttweaker:stemcells>,<contenttweaker:stemcells>,<contenttweaker:stemcells>]
            ]
        ],
        64 : [
            [
                [<contenttweaker:stemcells>,<contenttweaker:stemcells>,<contenttweaker:stemcells>],
                [<contenttweaker:stemcells>,<contenttweaker:cutting_head_diamond>,<contenttweaker:stemcells>],
                [<contenttweaker:stemcells>,<contenttweaker:stemcells>,<contenttweaker:stemcells>]
            ]
        ]
    },
    <gendustry:gene_sample_blank> : {
        1 : [
            [
                [<ore:stickAluminum>,<ore:plateTin>,<ore:stickAluminum>],
                [<ore:stickAluminum>,<contenttweaker:stemcells>,<ore:stickAluminum>],
                [<ore:stickAluminum>,<ore:plateTin>,<ore:stickAluminum>]
            ]
        ],
        2 : [
            [
                [<ore:stickAluminum>,<ore:plateSilver>,<ore:stickAluminum>],
                [<ore:stickAluminum>,<contenttweaker:stemcells>,<ore:stickAluminum>],
                [<ore:stickAluminum>,<ore:plateSilver>,<ore:stickAluminum>]
            ]
        ],
        4 : [
            [
                [<ore:stickAluminum>,<ore:platePlatinum>,<ore:stickAluminum>],
                [<ore:stickAluminum>,<contenttweaker:stemcells>,<ore:stickAluminum>],
                [<ore:stickAluminum>,<ore:platePlatinum>,<ore:stickAluminum>]
            ]
        ],
        8 : [
            [
                [<ore:stickAluminum>,<ore:plateIridium>,<ore:stickAluminum>],
                [<ore:stickAluminum>,<contenttweaker:stemcells>,<ore:stickAluminum>],
                [<ore:stickAluminum>,<ore:plateIridium>,<ore:stickAluminum>]
            ]
        ]
    },
    <gendustry:upgrade_frame> : {
        1 : [
            [
                [<forestry:thermionic_tubes:1>,<opencomputers:material:8>,<forestry:thermionic_tubes:1>],
                [<forestry:thermionic_tubes:1>,<bloodmagic:component:10>,<forestry:thermionic_tubes:1>],
                [<forestry:thermionic_tubes:1>,<ore:plateIridium>,<forestry:thermionic_tubes:1>]
            ]
        ],
        4 : [
            [
                [<forestry:thermionic_tubes:1>,<opencomputers:material:8>,<forestry:thermionic_tubes:1>],
                [<forestry:thermionic_tubes:1>,<bloodmagic:component:10>,<forestry:thermionic_tubes:1>],
                [<forestry:thermionic_tubes:1>,<ic2:itemmisc:258>,<forestry:thermionic_tubes:1>]
            ]
        ],
        8 : [
            [
                [<forestry:thermionic_tubes:1>,<opencomputers:material:8>,<forestry:thermionic_tubes:1>],
                [<forestry:thermionic_tubes:1>,<bloodmagic:component:10>,<forestry:thermionic_tubes:1>],
                [<forestry:thermionic_tubes:1>,<advancedsolars:iridiumironplate>,<forestry:thermionic_tubes:1>]
            ]
        ]
    }
};

for key, data in recipeMapShaped {
	var index as int = 0;
    recipes.remove(key);
    for amount, value in data {
        for recipe in value {
            var name as string = "ct_"+toString(key)+"_"+index;
            recipes.addShaped(name, key * amount, recipe);
            index += 1;
        }
    }
}
