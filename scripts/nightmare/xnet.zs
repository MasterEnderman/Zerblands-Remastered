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

recipes.remove(<xnet:wireless_router>);
calc_basic(<xnet:wireless_router>, <xnet:router>, <opencomputers:card:7>);

recipes.removeShaped(<xnet:netcable>);
recipes.addShaped(<xnet:netcable> * 4, [
    	[<immersiveengineering:wirecoil:3>,<opencomputers:cable>,<immersiveengineering:wirecoil:3>],
    	[<opencomputers:cable>,<contenttweaker:module_transfer>,<opencomputers:cable>],
    	[<immersiveengineering:wirecoil:3>,<opencomputers:cable>,<immersiveengineering:wirecoil:3>]
]);
recipes.addShaped(<xnet:netcable> * 16, [
    	[<immersiveengineering:wirecoil:6>,<opencomputers:cable>,<immersiveengineering:wirecoil:6>],
    	[<opencomputers:cable>,<contenttweaker:module_transfer>,<opencomputers:cable>],
    	[<immersiveengineering:wirecoil:6>,<opencomputers:cable>,<immersiveengineering:wirecoil:6>]
]);
recipes.addShaped(<xnet:netcable> * 64, [
    	[<immersiveengineering:wirecoil:7>,<opencomputers:cable>,<immersiveengineering:wirecoil:7>],
    	[<opencomputers:cable>,<contenttweaker:module_transfer>,<opencomputers:cable>],
    	[<immersiveengineering:wirecoil:7>,<opencomputers:cable>,<immersiveengineering:wirecoil:7>]
]);

recipes.remove(<xnet:netcable:4>);
recipes.addShaped(<xnet:netcable:4> * 8, [
    	[<ore:platePlatinum>,<contenttweaker:module_transfer>,<ore:platePlatinum>],
    	[<immersiveengineering:connector:12>,<xnet:netcable>,<immersiveengineering:connector:12>],
    	[<ore:platePlatinum>,<contenttweaker:module_transfer>,<ore:platePlatinum>]
]);

var recipeMapShaped as IIngredient[][][IItemStack] = {
    <xnet:connector> : [
    	[<actuallyadditions:item_crystal:1>,<opencomputers:adapter>,<actuallyadditions:item_crystal:1>],
    	[<contenttweaker:redstone_ingot>,<opencomputers:material:8>,<contenttweaker:redstone_ingot>],
    	[<actuallyadditions:item_crystal:1>,<forestry:chipsets:1>,<actuallyadditions:item_crystal:1>]
    ],
    <xnet:controller> : [
    	[<ore:plateSteel>,<opencomputers:material:21>,<ore:plateSteel>],
    	[<opencomputers:adapter>,<rftools:machine_frame>,<opencomputers:adapter>],
    	[<ore:plateSteel>,<opencomputers:adapter>,<ore:plateSteel>]
    ],
    <xnet:router> : [
    	[<ore:plateSteel>,<opencomputers:component:14>,<ore:plateSteel>],
    	[<opencomputers:adapter>,<rftools:machine_frame>,<opencomputers:adapter>],
    	[<ore:plateSteel>,<actuallyadditions:block_misc:6>,<ore:plateSteel>]
    ],
    <xnet:connector:4> : [
    	[<ore:plateSilver>,<contenttweaker:module_transfer>,<ore:plateSilver>],
    	[<forestry:chipsets:1>,<xnet:connector>,<forestry:chipsets:1>],
    	[<ore:plateSilver>,<contenttweaker:module_transfer>,<ore:plateSilver>]
    ],
    <xnet:redstone_proxy> : [
    	[<contenttweaker:redstone_ingot>,<contenttweaker:redstone_ingot>,<contenttweaker:redstone_ingot>],
    	[<contenttweaker:redstone_ingot>,<rftools:machine_frame>,<contenttweaker:redstone_ingot>],
    	[<contenttweaker:redstone_ingot>,<minecraft:observer>,<contenttweaker:redstone_ingot>]
    ],
    <xnet:redstone_proxy_upd> : [
    	[<contenttweaker:redstone_ingot>,<minecraft:observer>,<contenttweaker:redstone_ingot>],
    	[<contenttweaker:redstone_ingot>,<rftools:machine_frame>,<contenttweaker:redstone_ingot>],
    	[<contenttweaker:redstone_ingot>,<contenttweaker:redstone_ingot>,<contenttweaker:redstone_ingot>]
    ],
    <xnet:connector_upgrade> : [
    	[<contenttweaker:redstone_ingot>,<cd4017be_lib:m:401>,<contenttweaker:redstone_ingot>],
    	[<ore:enderpearl>,<minecraft:paper>,<ore:enderpearl>],
    	[<contenttweaker:redstone_ingot>,<actuallyadditions:item_crystal:2>,<contenttweaker:redstone_ingot>]
    ],
    <xnet:advanced_connector> : [
    	[<contenttweaker:redstone_ingot>,<cd4017be_lib:m:401>,<contenttweaker:redstone_ingot>],
    	[<ore:enderpearl>,<xnet:connector>,<ore:enderpearl>],
    	[<contenttweaker:redstone_ingot>,<actuallyadditions:item_crystal:2>,<contenttweaker:redstone_ingot>]
    ],
	<xnet:antenna> : [
		[<enderio:block_dark_iron_bars>,<ore:ingotDarkSteel>,<enderio:block_dark_iron_bars>],
		[<enderio:block_dark_iron_bars>,<ore:ingotDarkSteel>,<enderio:block_dark_iron_bars>],
		[null,<ore:ingotDarkSteel>,null]
	],
	<xnet:antenna_base> : [
		[null,<ore:ingotDarkSteel>,null],
		[null,<ore:ingotDarkSteel>,null],
		[<ore:ingotDarkSteel>,<ore:blockPulsatingIron>,<ore:ingotDarkSteel>]
	],
	<xnet:antenna_dish> : [
		[<enderio:block_dark_steel_trapdoor>,<enderio:block_dark_steel_trapdoor>,<enderio:block_dark_steel_trapdoor>],
		[<enderio:block_dark_steel_trapdoor>,<ore:blockPulsatingIron>,<enderio:block_dark_steel_trapdoor>],
		[null,<ore:ingotDarkSteel>,null]
	],
};

for key, recipe in recipeMapShaped {
	var index as int = 0;    
    var name as string = "ct_"+toString(key);

    recipes.remove(key);
    recipes.addShaped(name, key, recipe);
}
