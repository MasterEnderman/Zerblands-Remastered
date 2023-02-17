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

import mods.tconstruct.Casting;

recipes.remove(<moarboats:rope>);
Casting.addTableRecipe(<moarboats:rope>, <minecraft:lead>, <liquid:creosote>, 1000, true, 20);

recipes.remove(<moarboats:golden_ticket>);
Casting.addTableRecipe(<moarboats:golden_ticket>, <minecraft:paper>, <liquid:gold>, 144, true, 20);

recipes.remove(<moarboats:animal_boat>);
Casting.addTableRecipe(<moarboats:animal_boat>, <minecraft:boat>, <liquid:gold>, 144*5, true, 20);
Casting.addTableRecipe(<moarboats:animal_boat>, <minecraft:spruce_boat>, <liquid:gold>, 144*5, true, 20);
Casting.addTableRecipe(<moarboats:animal_boat>, <minecraft:birch_boat>, <liquid:gold>, 144*5, true, 20);
Casting.addTableRecipe(<moarboats:animal_boat>, <minecraft:jungle_boat>, <liquid:gold>, 144*5, true, 20);
Casting.addTableRecipe(<moarboats:animal_boat>, <minecraft:acacia_boat>, <liquid:gold>, 144*5, true, 20);
Casting.addTableRecipe(<moarboats:animal_boat>, <minecraft:dark_oak_boat>, <liquid:gold>, 144*5, true, 20);

recipes.remove(<moarboats:modular_boat>);
Casting.addTableRecipe(<moarboats:modular_boat>, <minecraft:boat>, <liquid:iron>, 144*5, true, 20);
Casting.addTableRecipe(<moarboats:modular_boat>, <minecraft:spruce_boat>, <liquid:iron>, 144*5, true, 20);
Casting.addTableRecipe(<moarboats:modular_boat>, <minecraft:birch_boat>, <liquid:iron>, 144*5, true, 20);
Casting.addTableRecipe(<moarboats:modular_boat>, <minecraft:jungle_boat>, <liquid:iron>, 144*5, true, 20);
Casting.addTableRecipe(<moarboats:modular_boat>, <minecraft:acacia_boat>, <liquid:iron>, 144*5, true, 20);
Casting.addTableRecipe(<moarboats:modular_boat>, <minecraft:dark_oak_boat>, <liquid:iron>, 144*5, true, 20);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <moarboats:seat> : [
        [
            [<bibliocraft:seatback1:6>],
            [<bibliocraft:seat:6>]
        ]
    ],
    <moarboats:helm> : [
        [
            [<bibliocraft:framingboard>,<ore:gearWood>,<bibliocraft:framingboard>],
            [<earthworks:item_timber>,<bibliocraft:framingsheet>,<earthworks:item_timber>],
            [null,<ore:fenceWood>,null]
        ]
    ],
    <moarboats:rudder> : [
        [
            [null,<earthworks:item_timber>,<earthworks:item_timber>],
            [<bibliocraft:framingsheet>,<bibliocraft:framingsheet>,<bibliocraft:framingsheet>],
            [<bibliocraft:framingsheet>,<bibliocraft:framingsheet>,<bibliocraft:framingsheet>]
        ]
    ],
    <moarboats:icebreaker> : [
        [
            [<ore:plateTungsten>,null],
            [<immersivepetroleum:upgrades:1>,<ore:plateTungsten>],
            [<ore:plateTungsten>,null]
        ]
    ],
    <moarboats:diving_bottle> : [
        [
            [null,<embers:aspectus_iron>,null],
            [<randomthings:bottleofair>,<enderio:block_tank:1>,<randomthings:bottleofair>],
            [<randomthings:bottleofair>,<botania:rune:3>,<randomthings:bottleofair>]
        ]
    ],
    <moarboats:oars> : [
        [
            [<ore:stickWood>,null,<ore:stickWood>],
            [null,<earthworks:item_timber>,null],
            [<bibliocraft:framingsheet>,null,<bibliocraft:framingsheet>]
        ]
    ],
    <moarboats:boat_battery> : [
        [
            [<immersiveengineering:connector>,<ore:plateGold>,<immersiveengineering:connector>],
            [<ore:plateBatteryAlloy>,<immersiveengineering:metal_device0>,<ore:plateBatteryAlloy>],
            [<ore:plateBatteryAlloy>,<ore:plateBatteryAlloy>,<ore:plateBatteryAlloy>]
        ]
    ],
    <moarboats:boat_energy_charger> : [
        [
            [<actuallyadditions:item_misc:8>],
            [<moarboats:boat_battery>],
            [<contenttweaker:module_energy>]
        ],
        [
            [<moarboats:boat_energy_discharger>]
        ]
    ],
    <moarboats:boat_energy_discharger> : [
        [
            [<contenttweaker:module_energy>],
            [<moarboats:boat_battery>],
            [<actuallyadditions:item_misc:8>]
        ],
        [
            [<moarboats:boat_energy_charger>]
        ]
    ],
    <moarboats:boat_tank> : [
        [
            [<ore:ingotIron>,<minecraft:glass_pane>,<ore:ingotIron>],
            [<minecraft:glass_pane>,<minecraft:glass_pane>,<minecraft:glass_pane>],
            [<ore:ingotIron>,<embers:block_tank>,<ore:ingotIron>]
        ]
    ],
    <moarboats:boat_fluid_loader> : [
        [
            [<tconstruct:channel>],
            [<moarboats:boat_tank>],
            [<contenttweaker:module_transfer>]
        ],
        [
            [<moarboats:boat_fluid_unloader>]
        ]
    ],
    <moarboats:boat_fluid_unloader> : [
        [
            [<contenttweaker:module_transfer>],
            [<moarboats:boat_tank>],
            [<tconstruct:channel>]
        ],
        [
            [<moarboats:boat_fluid_loader>]
        ]
    ],
    <moarboats:mapping_table> : [
        [
            [<embers:archaic_circuit>,<astralsorcery:itemcraftingcomponent:3>,<embers:archaic_circuit>],
            [<enderio:item_material:69>,<minecraft:map>,<enderio:item_material:69>],
            [<enderio:item_material:69>,<forestry:worktable>,<enderio:item_material:69>]
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
