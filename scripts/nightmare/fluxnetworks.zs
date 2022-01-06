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

import mods.astralsorcery.Altar;
import mods.inworldcrafting.FireCrafting;

var capacitorT1 as IIngredient = <enderio:item_basic_capacitor>|<enderio:item_capacitor_silver>;
var capacitorT2 as IIngredient = <enderio:item_basic_capacitor:1>|<enderio:item_capacitor_energetic_silver>;
var capacitorT3 as IIngredient = <enderio:item_basic_capacitor:2>|<enderio:item_capacitor_vivid>;

recipes.remove(<fluxnetworks:fluxcore>);

FireCrafting.addRecipe(<fluxnetworks:flux>, <projecte:item.pe_covalence_dust:2>, 200);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <fluxnetworks:fluxblock> : [
        [
            [<fluxnetworks:flux>,<fluxnetworks:fluxcore>,<fluxnetworks:flux>],
            [<fluxnetworks:fluxcore>,<actuallyadditions:block_misc:8>,<fluxnetworks:fluxcore>],
            [<fluxnetworks:flux>,<fluxnetworks:fluxcore>,<fluxnetworks:flux>]
        ]
    ],
    <fluxnetworks:fluxstorage> : [
        [
            [<fluxnetworks:fluxblock>,capacitorT1,<fluxnetworks:fluxblock>],
            [capacitorT1,<thermalexpansion:cell>,capacitorT1],
            [<fluxnetworks:fluxblock>,capacitorT1,<fluxnetworks:fluxblock>]
        ],
        [
            [<fluxnetworks:fluxstorage>] // clear nbt
        ]
    ],
    <fluxnetworks:herculeanfluxstorage> : [
        [
            [<fluxnetworks:fluxblock>,capacitorT2,<fluxnetworks:fluxblock>],
            [capacitorT2,<fluxnetworks:fluxstorage>,capacitorT2],
            [<fluxnetworks:fluxblock>,capacitorT2,<fluxnetworks:fluxblock>]
        ],
        [
            [<fluxnetworks:herculeanfluxstorage>] // clear nbt
        ]
    ],
    <fluxnetworks:gargantuanfluxstorage> : [
        [
            [<fluxnetworks:fluxblock>,capacitorT3,<fluxnetworks:fluxblock>],
            [capacitorT3,<fluxnetworks:herculeanfluxstorage>,capacitorT3],
            [<fluxnetworks:fluxblock>,capacitorT3,<fluxnetworks:fluxblock>]
        ],
        [
            [<fluxnetworks:gargantuanfluxstorage>] // clear nbt
        ]
    ],
    <fluxnetworks:fluxpoint> : [
        [
            [<fluxnetworks:fluxcore>,<draconicevolution:energy_crystal:5>,<fluxnetworks:fluxcore>],
            [<randomthings:spectrecharger:2>,<xnet:netcable>,<randomthings:spectrecharger:2>],
            [<fluxnetworks:fluxcore>,<ic2:itemmisc:264>,<fluxnetworks:fluxcore>]
        ]
    ],
    <fluxnetworks:fluxplug> : [
        [
            [<fluxnetworks:fluxcore>,<draconicevolution:energy_crystal:2>,<fluxnetworks:fluxcore>],
            [<randomthings:spectrecharger:2>,<xnet:netcable>,<randomthings:spectrecharger:2>],
            [<fluxnetworks:fluxcore>,<ic2:itemmisc:264>,<fluxnetworks:fluxcore>]
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

recipes.remove(<fluxnetworks:fluxcontroller>);
Altar.addTraitAltarRecipe("fluxcontroller", <fluxnetworks:fluxcontroller>, 4500, 100, [
    <contenttweaker:block_machine_hv>,
    <fluxnetworks:gargantuanfluxstorage>,
    <contenttweaker:block_machine_hv>,
    <fluxnetworks:gargantuanfluxstorage>,
    <draconicevolution:draconic_energy_core>,
    <fluxnetworks:gargantuanfluxstorage>,
    <contenttweaker:block_machine_hv>,
    <fluxnetworks:gargantuanfluxstorage>,
    <contenttweaker:block_machine_hv>,
    <fluxnetworks:fluxblock>,
	<fluxnetworks:fluxblock>,
    <fluxnetworks:fluxblock>,
    <fluxnetworks:fluxblock>,
    <fluxnetworks:fluxblock>,
    <fluxnetworks:fluxblock>,
	<fluxnetworks:fluxblock>,
    <fluxnetworks:fluxblock>,
    <fluxnetworks:fluxblock>,
    <fluxnetworks:fluxblock>,
    <fluxnetworks:fluxblock>,
	<fluxnetworks:fluxblock>,
    <ic2:blockutility:3>,
    <ic2:blockutility:3>,
    <ic2:blockutility:3>,
    <ic2:blockutility:3>,
	//Outer Items, indices 25+
	<botanicadds:rune_energy>,
    <draconicevolution:draconic_core>,
    <contenttweaker:flux_module>,
    <draconicevolution:draconic_core>
], "astralsorcery.constellation.discidia");
