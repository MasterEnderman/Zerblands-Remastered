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
import mods.energycontrol.KitAssembler;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;

import scripts.mod_functions.betterInscriber;

calc_basic(<gendustry:pollen_kit>,<gendustry:labware>,<enderio:block_industrial_insulation>);
calc_basic(<gendustry:import_cover>,<ore:plateConstantan>,<ic2:ic2upgrades:5>);
calc_basic(<gendustry:eject_cover>,<ore:plateConstantan>,<ic2:ic2upgrades:7>);
calc_basic(<gendustry:error_sensor_cover>,<ore:plateConstantan>,<ic2:ic2upgrades:3>);

betterInscriber(<gendustry:bee_receptacle>, [<astralsorcery:itemcraftingcomponent:3>,<harvestcraft:queenbeeitem>,<minecraft:light_weighted_pressure_plate>]);

Transposer.addFillRecipe(<gendustry:gene_template>, <advancedsolars:iridiumironplate>,  <liquid:liquiddna> * 1000, 2000);

KitAssembler.addRecipe(<evilcraft:environmental_accumulation_core>, <contenttweaker:terrasteelprocessor> * 2, <rftools:environmental_controller>, <gendustry:env_processor>, 100000);
KitAssembler.addRecipe(<gendustry:labware> * 64, <threng:material:6> * 2, <abyssalcraft:transmutator>, <gendustry:genetics_processor>, 100000);

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
    },
    <gendustry:mutagen_tank> : {
        1 : [
            [
                [<ore:plateIridium>],
                [<ic2:itemcellempty>],
                [<ore:plateIridium>]
            ]
        ],
        2 : [
            [
                [<ic2:itemmisc:258>],
                [<ic2:itemcellempty>],
                [<ic2:itemmisc:258>]
            ]
        ],
        4 : [
            [
                [<advancedsolars:iridiumironplate>],
                [<ic2:itemcellempty>],
                [<advancedsolars:iridiumironplate>]
            ]
        ]
    },
    <gendustry:climate_module> : {
        1 : [
            [
                [<ore:plateConstantan>,<ic2:reactorheatpack>,<ore:plateConstantan>],
                [<minecraft:iron_bars>,<ic2:itemheatswtiches>,<minecraft:iron_bars>],
                [<ore:plateConstantan>,<ic2:itemheatstorage>,<ore:plateConstantan>]
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

Altar.addConstellationAltarRecipe("industrial_apiary", <gendustry:industrial_apiary>, 800, 200, [
    <forestry:frame_impregnated>,
    <gendustry:bee_receptacle>,
    <forestry:frame_impregnated>,
    <forestry:frame_impregnated>,
    <forestry:flexible_casing>,
    <forestry:frame_impregnated>,
    <forestry:frame_impregnated>,
    <gendustry:power_module>,
    <forestry:frame_impregnated>,
    <ore:plateElectrumFlux>,
    <ore:plateElectrumFlux>,
    <ore:plateElectrumFlux>,
    <ore:plateElectrumFlux>,
    <forestry:alveary.plain>,
    <forestry:alveary.plain>,
    <forestry:alveary.plain>,
    <forestry:alveary.plain>,
    <forestry:alveary.plain>,
    <forestry:alveary.plain>,
    <forestry:alveary.plain>,
    <forestry:alveary.plain>
]);

var H as IIngredient = <contenttweaker:module_transfer>;
var S as IIngredient = <contenttweaker:electric_motor>;
var D as IIngredient = <ic2:itembatlamacrystal>; // Lapotron Crystal
var L as IIngredient = <ic2:blockutility:3>; // Reinforced Glass
var B as IIngredient = <ore:plateConstantan>;
var A as IIngredient = <ore:gearEnergium>;
var M as IIngredient = <gendustry:mutagen_tank>;
var Z as IIngredient = <gendustry:genetics_processor>;
var T as IIngredient = <gendustry:bee_receptacle>;
var P as IIngredient = <gendustry:power_module>;
var O as IIngredient = <enderio:item_material:54>; // Enhanced Machine Chassis

recipes.addShaped(<gendustry:mutagen_producer> * 1, [
    [B,H,B],
    [P,O,P],
    [A,M,A]
]);

recipes.addShaped(<gendustry:extractor> * 1, [
    [A,H,A],
    [Z,O,Z],
    [A,P,A]
]);

recipes.addShaped(<gendustry:liquifier> * 1, [
    [A,H,A],
    [S,O,S],
    [A,P,A]
]);

recipes.addShaped(<gendustry:replicator> * 1, [
    [A,Z,A],
    [P,O,P],
    [A,Z,A]
]);

recipes.addShaped(<gendustry:transposer> * 1, [
    [A,B,A],
    [Z,O,Z],
    [A,P,A]
]);

recipes.addShaped(<gendustry:mutatron> * 1, [
    [T,Z,B],
    [<contenttweaker:advanced_powermodule>,O,T],
    [T,M,B]
]);

recipes.addShaped(<gendustry:mutatron_advanced> * 1, [
    [A,<ore:gemQuartz>,A],
    [Z,<gendustry:mutatron>,Z],
    [A,<contenttweaker:advanced_powermodule>,A]
]);

recipes.addShaped(<gendustry:imprinter> * 1, [
    [A,Z,A],
    [T,O,T],
    [A,P,A]
]);

recipes.addShaped(<gendustry:sampler> * 1, [
    [A,Z,A],
    [T,O,D],
    [A,P,A]
]);
