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
import mods.bloodmagic.AlchemyTable;
import mods.enderio.SliceNSplice;
import mods.inworldcrafting.FluidToItem;

import scripts.functions.calc_atomic;

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <rftools:machine_base> : [
        [
            [<immersiveengineering:connector:12>,<opencomputers:material:4>,<immersiveengineering:connector:12>],
            [<ore:plateSteel>,<ore:gearSignalum>,<ore:plateSteel>]
        ]
    ],
    <rftools:crafter1> : [
        [
            [null,<enderio:block_crafter>,null],
            [<ore:gearIron>,<rftools:machine_frame>,<ore:gearIron>],
            [null,<enderio:block_crafter>,null]
        ]
    ],
    <rftools:crafter2> : [
        [
            [null,<enderio:block_crafter>,null],
            [<ore:gearIron>,<rftools:crafter1>,<ore:gearIron>],
            [null,<enderio:block_crafter>,null]
        ]
    ],
    <rftools:crafter3> : [
        [
            [<enderio:block_crafter>,<ore:gearIron>,<enderio:block_crafter>],
            [<ore:gearIron>,<rftools:crafter2>,<ore:gearIron>],
            [<enderio:block_crafter>,<ore:gearIron>,<enderio:block_crafter>]
        ]
    ],
    <rftools:endergenic> : [
        [
            [<contenttweaker:enddiamond>,<rftools:infused_enderpearl>,<contenttweaker:enddiamond>],
            [<rftools:infused_enderpearl>,<rftools:machine_frame>,<rftools:infused_enderpearl>],
            [<contenttweaker:enddiamond>,<rftools:infused_enderpearl>,<contenttweaker:enddiamond>]
        ]
    ],
    <rftools:environmental_controller> : [
        [
            [<contenttweaker:enddiamond>,<randomthings:spectrelens>,<contenttweaker:enddiamond>],
            [<randomthings:spectrelens>,<rftools:machine_frame>,<randomthings:spectrelens>],
            [<contenttweaker:enddiamond>,<minecraft:beacon>,<contenttweaker:enddiamond>]
        ]
    ],
    <rftools:shape_card> : [
        [
            [<contenttweaker:plastic>,<enderio:item_material:72>,<contenttweaker:plastic>],
            [<ore:dustRedstone>,<immersiveengineering:material:27>,<ore:dustRedstone>],
            [<contenttweaker:plastic>,<enderio:item_material:72>,<contenttweaker:plastic>]
        ]
    ],
    <rftools:matter_receiver> : [
        [
            [<contenttweaker:plastic>,<enderutilities:energy_bridge:1>,<contenttweaker:plastic>],
            [<energycontrol:item_component>,<rftools:machine_frame>,<energycontrol:item_component>],
            [<contenttweaker:plastic>,<contenttweaker:warp_module>,<contenttweaker:plastic>]
        ]
    ],
    <rftools:matter_transmitter> : [
        [
            [<contenttweaker:plastic>,<enderutilities:energy_bridge:2>,<contenttweaker:plastic>],
            [<energycontrol:item_component>,<rftools:machine_frame>,<energycontrol:item_component>],
            [<contenttweaker:plastic>,<contenttweaker:warp_module>,<contenttweaker:plastic>]
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

recipes.remove(<rftools:powercell_card>);
recipes.addShaped(<rftools:powercell_card>,[[<rftools:powercell_card>]]);
Altar.addDiscoveryAltarRecipe("powercell_card", <rftools:powercell_card>, 200, 200, [
    <ore:nuggetGold>, <ore:dustRedstone>, <ore:nuggetGold>,
    <ore:dustRedstone>, <astralsorcery:itemcraftingcomponent:5>, <ore:dustRedstone>,
    <ore:nuggetGold>, <ore:dustRedstone>, <ore:nuggetGold>
]);

recipes.remove(<rftools:machine_frame>);
Altar.addConstellationAltarRecipe("rft_machine_frame", <rftools:machine_frame>, 800, 200, [
    <contenttweaker:atomic_module>,
    <contenttweaker:atomic_assembly>,
    <contenttweaker:atomic_module>,
    <actuallyadditions:item_crystal_empowered:1>,
    <opencomputers:case3>,
    <actuallyadditions:item_crystal_empowered:1>,
    <contenttweaker:atomic_module>,
    <rftools:machine_base>,
    <contenttweaker:atomic_module>,
    <contenttweaker:plastic>,
    <contenttweaker:plastic>,
    <contenttweaker:plastic>,
    <contenttweaker:plastic>,
    <botania:elfglass>,
    <botania:elfglass>,
    <botania:elfglass>,
    <botania:elfglass>,
    <botania:elfglass>,
    <botania:elfglass>,
    <botania:elfglass>,
    <botania:elfglass>
]);

recipes.remove(<rftools:powercell_simple>);
recipes.addShaped(<rftools:powercell_simple>,[[<rftools:powercell_simple>]]);
AlchemyTable.addRecipe(<rftools:powercell_simple>, [
    <rftools:machine_frame>,
    <immersiveengineering:metal_device0>,
    <bloodmagic:component:10>,
    <contenttweaker:module_transfer>,
    <rftools:infused_diamond>,
    <rftools:infused_enderpearl>
], 1000, 100, 1);

recipes.remove(<rftools:powercell>);
recipes.addShaped(<rftools:powercell>,[[<rftools:powercell>]]);
AlchemyTable.addRecipe(<rftools:powercell>, [
    <rftools:machine_frame>,
    <immersiveengineering:metal_device0:1>,
    <bloodmagic:component:10>,
    <contenttweaker:module_transfer>,
    <rftools:infused_diamond>,
    <rftools:infused_enderpearl>
], 1000, 100, 2);
AlchemyTable.addRecipe(<rftools:powercell>, [
    <rftools:powercell_simple>,
    <immersiveengineering:metal_device0>,
    <bloodmagic:component:10>,
    <contenttweaker:module_transfer>,
    <rftools:infused_diamond>,
    <rftools:infused_enderpearl>
], 1000, 100, 2);

recipes.remove(<rftools:powercell_advanced>);
recipes.addShaped(<rftools:powercell_advanced>,[[<rftools:powercell_advanced>]]);
AlchemyTable.addRecipe(<rftools:powercell_advanced>, [
    <rftools:machine_frame>,
    <immersiveengineering:metal_device0:2>,
    <bloodmagic:component:10>,
    <contenttweaker:module_transfer>,
    <rftools:infused_diamond>,
    <rftools:infused_enderpearl>
], 1000, 100, 3);
AlchemyTable.addRecipe(<rftools:powercell_advanced>, [
    <rftools:powercell>,
    <immersiveengineering:metal_device0:1>,
    <bloodmagic:component:10>,
    <contenttweaker:module_transfer>,
    <rftools:infused_diamond>,
    <rftools:infused_enderpearl>
], 1000, 100, 3);

SliceNSplice.addRecipe(<rftools:machine_frame>, [
    <contenttweaker:atomic_assembly>, <opencomputers:case3>, <rftools:machine_base>,
    <actuallyadditions:item_crystal_empowered:1>, <contenttweaker:plastic>, <contenttweaker:atomic_module>
], 20000);

recipes.remove(<rftools:infused_diamond>);
FluidToItem.transform(<rftools:infused_diamond>, <liquid:colour_out_of_space>, [<minecraft:diamond>,<rftools:dimensional_shard> * 8], true);
recipes.remove(<rftools:infused_enderpearl>);
FluidToItem.transform(<rftools:infused_enderpearl>, <liquid:colour_out_of_space>, [<minecraft:ender_pearl>,<rftools:dimensional_shard> * 8], true);

recipes.remove(<rftools:builder>);
calc_atomic(<rftools:builder>,<rftools:machine_frame>,<actuallyadditions:block_miner>,<rftools:shape_card>);
