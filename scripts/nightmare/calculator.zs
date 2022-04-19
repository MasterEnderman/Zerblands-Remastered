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

import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Empowerer;
import mods.astralsorcery.Altar;
import mods.forestry.Carpenter;
import mods.forestry.Centrifuge as FCentrifuge;
import mods.forestry.ThermionicFabricator;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.BottlingMachine;
import mods.inworldcrafting.FluidToItem;
import mods.tconstruct.Casting;
import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.Infuser;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_atomic;
import scripts.functions.calc_basic;
import scripts.functions.calc_scientific;
import scripts.functions.calc_flawless;

AtomicReconstructor.addRecipe(<contenttweaker:circuit8_dirty>, <opencomputers:material:2>, 4000);
Transposer.addFillRecipe(<contenttweaker:circuit8_damaged>, <contenttweaker:circuit8_dirty>,  <liquid:sodium_persulfate> * 200, 2000);
ThermionicFabricator.addCast(<contenttweaker:circuit8>, [
    [<advancedsolars:sunnarium>,<threng:material:4>,<advancedsolars:sunnarium>],
    [<threng:material:14>,<contenttweaker:q4>,<threng:material:14>],
    [<advancedsolars:sunnarium>,<contenttweaker:circuit8_damaged>,<advancedsolars:sunnarium>]
], <liquid:glass> * 500);

Casting.addTableRecipe(<contenttweaker:module_energy>, <thermalfoundation:storage_resource:1>, <liquid:stone>, 2304, true, 200);
BottlingMachine.addRecipe(<contenttweaker:module_energy>, <thermalfoundation:storage_resource:1>, <liquid:stone> * 2304);
Transposer.addFillRecipe(<contenttweaker:module_energy>, <thermalfoundation:storage_resource:1>,  <liquid:stone> * 2304, 2000);

Casting.addTableRecipe(<contenttweaker:calculator_screen>, <extrautils2:decorativeglass:5>, <liquid:stone>, 576, true, 200);
BottlingMachine.addRecipe(<contenttweaker:calculator_screen>, <extrautils2:decorativeglass:5>, <liquid:stone> * 576);
Transposer.addFillRecipe(<contenttweaker:calculator_screen>, <extrautils2:decorativeglass:5>,  <liquid:stone> * 576, 2000);

Casting.addTableRecipe(<contenttweaker:purified_coal>, <contenttweaker:enriched_coal>, <liquid:refined_life_essence>, 300, true, 200);
BottlingMachine.addRecipe(<contenttweaker:purified_coal>, <contenttweaker:enriched_coal>, <liquid:refined_life_essence> * 300);
Transposer.addFillRecipe(<contenttweaker:purified_coal>, <contenttweaker:enriched_coal>,  <liquid:refined_life_essence> * 300, 2000);

Casting.addTableRecipe(<contenttweaker:purified_coal>, <contenttweaker:enriched_coal>, <liquid:fire_water>, 250, true, 200);
BottlingMachine.addRecipe(<contenttweaker:purified_coal>, <contenttweaker:enriched_coal>, <liquid:fire_water> * 250);
Transposer.addFillRecipe(<contenttweaker:purified_coal>, <contenttweaker:enriched_coal>,  <liquid:fire_water> * 250, 2000);

calc_basic(<contenttweaker:redstone_ingot>,<contenttweaker:reinforcediron_ingot>,<ore:dustRedstone>);
calc_basic(<contenttweaker:enriched_coal>,<ore:fuelCoke>,<contenttweaker:enrichedgold>);
calc_basic(<contenttweaker:firecoal>,<contenttweaker:enriched_coal>,<evilcraft:blood_waxed_coal>);
calc_basic(<contenttweaker:firecoal>,<contenttweaker:enriched_coal>,<abyssalcraft:charcoal>);
calc_basic(<contenttweaker:controlled_fuel> * 16,<contenttweaker:firecoal>,<contenttweaker:circuit8>);
calc_basic(<contenttweaker:controlled_fuel> * 4,<contenttweaker:firecoal>,<ic2:itemmisc:452>);

calc_scientific(<contenttweaker:weakeneddiamond>*4,<ore:gemDiamond>,<contenttweaker:reinforcediron_ingot>);

calc_atomic(<contenttweaker:firediamond>,<contenttweaker:flawlessdiamond>,<extrautils2:ingredients:11>,<randomthings:imbue>);
calc_atomic(<contenttweaker:enddiamond>,<contenttweaker:electricdiamondanimate>,<contenttweaker:reinforced_obsidian_ingot>,<ore:ingotEndSteel>);
calc_atomic(<contenttweaker:module_speed> * 4, <opencomputers:material:4>, <appliedenergistics2:material:12>, <rs_ctr:lever:2>);
calc_atomic(<contenttweaker:storage_module>, <actuallyadditions:item_crystal:2>, <immersiveengineering:wooden_device0>, <immersiveengineering:material:27>);

calc_flawless(<contenttweaker:purifiedobsidian>,<contenttweaker:reinforced_obsidian_ingot>,<contenttweaker:reinforced_obsidian_ingot>,<contenttweaker:reinforced_obsidian_ingot>,<contenttweaker:reinforced_obsidian_ingot>);

Infuser.addRecipe(<contenttweaker:electricdiamondanimate>, <contenttweaker:firediamond>, 1000000);

FluidToItem.transform(<contenttweaker:enrichedgold>, <liquid:astralsorcery.liquidstarlight>, [<ore:dustGold>, <ore:dustRedstone> * 2], false);
BlastFurnace.addRecipe(<contenttweaker:enrichedgold_ingot>, <contenttweaker:enrichedgold>, 600);
ArcFurnace.addRecipe(<contenttweaker:enrichedgold_ingot>, <contenttweaker:enrichedgold>, null, 200, 512);

calc_flawless(<contenttweaker:calculator>,<contenttweaker:calculator_screen>,<contenttweaker:calculator_assembly>,<extrautils2:ingredients>,<contenttweaker:black_iron>);
Altar.addDiscoveryAltarRecipe("basic_calculator", <contenttweaker:calculator>, 200, 200, [
    <contenttweaker:black_iron>, <contenttweaker:calculator_screen>, <contenttweaker:black_iron>,
    <extrautils2:ingredients>, <contenttweaker:calculator_assembly>, <extrautils2:ingredients>,
    <contenttweaker:black_iron>, <contenttweaker:calculator_assembly>, <contenttweaker:black_iron>
]);

calc_flawless(<contenttweaker:scientificcalculator>,<contenttweaker:calculator_screen>,<contenttweaker:advanced_assembly>,<contenttweaker:large_amethyst>,<contenttweaker:enrichedgold_ingot>);
Altar.addDiscoveryAltarRecipe("scientific_calculator", <contenttweaker:scientificcalculator>, 200, 200, [
    <contenttweaker:enrichedgold_ingot>, <contenttweaker:calculator_screen>, <contenttweaker:enrichedgold_ingot>,
    <contenttweaker:large_amethyst>, <contenttweaker:advanced_assembly>, <contenttweaker:large_amethyst>,
    <contenttweaker:enrichedgold_ingot>, <contenttweaker:advanced_assembly>, <contenttweaker:enrichedgold_ingot>
]);

calc_flawless(<contenttweaker:atomiccalculator>,<contenttweaker:calculator_screen>,<contenttweaker:atomic_assembly>,<contenttweaker:flawlessdiamond>,<ore:ingotDarkSteel>);
Altar.addDiscoveryAltarRecipe("atomic_calculator", <contenttweaker:atomiccalculator>, 200, 200, [
    <ore:ingotDarkSteel>,<contenttweaker:calculator_screen>,<ore:ingotDarkSteel>,
    <contenttweaker:flawlessdiamond>,<contenttweaker:atomic_assembly>,<contenttweaker:flawlessdiamond>,
    <ore:ingotDarkSteel>,<contenttweaker:atomic_assembly>,<ore:ingotDarkSteel>
]);

calc_flawless(<contenttweaker:flawlesscalculator>,<contenttweaker:calculator_screen>,<contenttweaker:flawless_assembly>,<contenttweaker:enddiamond>,<ore:ingotVividAlloy>);
Altar.addDiscoveryAltarRecipe("flawless_calculator", <contenttweaker:flawlesscalculator>, 200, 200, [
    <ore:ingotVividAlloy>,<contenttweaker:calculator_screen>,<ore:ingotVividAlloy>,
    <contenttweaker:enddiamond>,<contenttweaker:flawless_assembly>,<contenttweaker:enddiamond>,
    <ore:ingotVividAlloy>,<contenttweaker:flawless_assembly>,<ore:ingotVividAlloy>
]);

Centrifuge.addRecipe([<contenttweaker:large_amethyst> % 100, <contenttweaker:shard_amethyst> % 100], <extrautils2:ingredients:5>, null, 2000);
Centrifuge.addRecipe([<contenttweaker:small_amethyst> % 100, <contenttweaker:shard_amethyst> % 100], <extrautils2:ingredients:3>, null, 2000);
FCentrifuge.addRecipe([<contenttweaker:large_amethyst> % 100, <contenttweaker:shard_amethyst> % 100], <extrautils2:ingredients:5>, 200);
FCentrifuge.addRecipe([<contenttweaker:small_amethyst> % 100, <contenttweaker:shard_amethyst> % 100], <extrautils2:ingredients:3>, 200);

Centrifuge.addRecipe([<contenttweaker:large_tanzanite> % 100, <contenttweaker:shard_tanzanite> % 100], <forestry:resource_storage>, null, 2000);
Centrifuge.addRecipe([<contenttweaker:small_tanzanite> % 100, <contenttweaker:shard_tanzanite> % 100], <forestry:apatite>, null, 2000);
FCentrifuge.addRecipe([<contenttweaker:large_tanzanite> % 100, <contenttweaker:shard_tanzanite> % 100], <forestry:resource_storage>, 200);
FCentrifuge.addRecipe([<contenttweaker:small_tanzanite> % 100, <contenttweaker:shard_tanzanite> % 100], <forestry:apatite>, 200);

Empowerer.addRecipe(<contenttweaker:atomicbinder>, <contenttweaker:enrichedgold>, findFirstItemFromMod("thermalfoundation","ingot","steel"), <appliedenergistics2:material:1>, findFirstItemFromMod("thermalfoundation","ingot","steel"), <appliedenergistics2:material:1>, 8192, 100, [0.1, 0.1, 0.1]);
Empowerer.addRecipe(<contenttweaker:flawlessdiamond>, <contenttweaker:atomicbinder>, <contenttweaker:weakeneddiamond>, <contenttweaker:weakeneddiamond>, <contenttweaker:weakeneddiamond>, <contenttweaker:weakeneddiamond>, 8192, 100, [0.1, 0.1, 0.1]);

Carpenter.addRecipe(<contenttweaker:energy_module>, [
    [<ore:plateBatteryAlloy>,<actuallyadditions:item_battery>,<ore:plateBatteryAlloy>],
    [<ore:plateBatteryAlloy>,<contenttweaker:heat_conductor>,<ore:plateBatteryAlloy>],
    [<ore:plateBatteryAlloy>,<actuallyadditions:item_battery>,<ore:plateBatteryAlloy>]
], 10, <liquid:sulfuric_acid> * 250, <contenttweaker:module_energy>);

Carpenter.addRecipe(<contenttweaker:warp_module>, [
    [<ore:ingotEnergeticSilver>,<enderio:item_material:64>,<ore:ingotEnergeticSilver>],
    [<ore:plateGelidEnderium>,<botania:lens:18>,<ore:plateGelidEnderium>],
    [<ore:ingotEnergeticSilver>,<simplyjetpacks:metaitemmods:30>,<ore:ingotEnergeticSilver>]
], 10, <liquid:sulfuric_acid> * 250, <forestry:chipsets:3>);

Carpenter.addRecipe(<contenttweaker:jump_module>, [
    [<cd4017be_lib:m:401>,<enderutilities:ender_elevator>,<cd4017be_lib:m:401>],
    [<enderutilities:linkcrystal>,<superiorshields:thermal_shield_enderium>,<enderutilities:linkcrystal>],
    [<cd4017be_lib:m:401>,<enderutilities:ender_elevator>,<cd4017be_lib:m:401>]
], 10, <liquid:vapor_of_levity> * 250, <simplyjetpacks:metaitemmods:15>);

Carpenter.addRecipe(<contenttweaker:module_void>, [
    [<actuallyadditions:item_crystal_empowered:3>,<contenttweaker:module_transfer>,<actuallyadditions:item_crystal_empowered:3>],
    [<xreliquary:void_tear>,<botania:blackholetalisman>,<xreliquary:void_tear>],
    [<actuallyadditions:item_crystal_empowered:3>,<contenttweaker:module_transfer>,<actuallyadditions:item_crystal_empowered:3>]
], 10, <liquid:ender_distillation> * 250, <bloodmagic:component:4>);

Carpenter.addRecipe(<contenttweaker:flux_module>, [
    [<ore:plateTungsten>,<ic2:itemcable:16>,<ore:plateTungsten>],
    [<redstonearsenal:material:224>,<gravisuit:coolingcore>,<redstonearsenal:material:224>],
    [<ore:plateTungsten>,<ic2:itemcable:16>,<ore:plateTungsten>]
], 10, <liquid:battery_solution> * 1000, <fluxnetworks:fluxcore>);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <contenttweaker:calculator_assembly> : [
        [
            [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>],
            [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>],
            [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>]
        ]
    ],
    <contenttweaker:advanced_assembly> : [
        [
            [<contenttweaker:enrichedgold_ingot>,<contenttweaker:calculator_assembly>,<contenttweaker:enrichedgold_ingot>],
            [<contenttweaker:calculator_assembly>,<contenttweaker:reinforcediron_ingot>,<contenttweaker:calculator_assembly>],
            [<contenttweaker:enrichedgold_ingot>,<contenttweaker:calculator_assembly>,<contenttweaker:enrichedgold_ingot>]
        ]
    ],
    <contenttweaker:atomic_module> : [
        [
            [<contenttweaker:large_amethyst>|<contenttweaker:large_tanzanite>,<contenttweaker:advanced_assembly>,<contenttweaker:large_amethyst>|<contenttweaker:large_tanzanite>],
            [<contenttweaker:advanced_assembly>,<contenttweaker:atomicbinder>,<contenttweaker:advanced_assembly>],
            [<contenttweaker:large_amethyst>|<contenttweaker:large_tanzanite>,<contenttweaker:advanced_assembly>,<contenttweaker:large_amethyst>|<contenttweaker:large_tanzanite>]
        ]
    ],
    <contenttweaker:atomic_assembly> : [
        [
            [<contenttweaker:advanced_assembly>,<contenttweaker:atomic_module>,<contenttweaker:advanced_assembly>],
            [<contenttweaker:atomic_module>,<actuallyadditions:item_crystal_empowered:4>,<contenttweaker:atomic_module>],
            [<contenttweaker:advanced_assembly>,<contenttweaker:atomic_module>,<contenttweaker:advanced_assembly>]
        ]
    ],
    <contenttweaker:flawless_assembly> : [
        [
            [<contenttweaker:atomic_assembly>,<contenttweaker:flawlessdiamond>,<contenttweaker:atomic_assembly>],
            [<contenttweaker:flawlessdiamond>,<opencomputers:component:1>,<contenttweaker:flawlessdiamond>],
            [<contenttweaker:atomic_assembly>,<contenttweaker:flawlessdiamond>,<contenttweaker:atomic_assembly>]
        ]
    ],
    <contenttweaker:module_transfer> * 4 : [
        [
            [null,<enderio:item_material:69>,null],
            [<openmodularturrets:intermediate_regular>,<opencomputers:material:8>,<openmodularturrets:intermediate_regular>],
            [null,<enderio:item_material:69>,null]
        ]
    ],
    <contenttweaker:calculator_plug_base_on> : [
        [
            [null,<ic2:itemmisc:264>,null],
            [<contenttweaker:atomic_assembly>,<actuallyadditions:block_empowerer>,<contenttweaker:atomic_assembly>],
            [<environmentaltech:structure_frame_6>,<actuallyadditions:block_misc:8>,<environmentaltech:structure_frame_6>]
        ]
    ],
    <contenttweaker:calculator_locator_on_2> : [
        [
            [null,<environmentaltech:nano_cont_personal_6>,null],
            [<contenttweaker:flawless_assembly>,<contenttweaker:calculator_plug_base_on>,<contenttweaker:flawless_assembly>],
            [<contenttweaker:purifiedobsidian>,<ic2:blockelectric:5>,<contenttweaker:purifiedobsidian>]
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
