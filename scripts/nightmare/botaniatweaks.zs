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

import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationMultiblock;
import mods.botaniatweaks.AgglomerationRecipe;

Agglomeration.removeDefaultRecipe();

// Multiblocks
var nature_core = AgglomerationMultiblock.create()
	.center(<randomthings:naturecore>)
	.edge(<botania:quartztypemana>)
	.corner(<contenttweaker:starsteel_block>);

var ender_casing = AgglomerationMultiblock.create()
	.center(<actuallyadditions:block_misc:8>)
	.edge(<botania:storage:2>)
	.corner(<abyssalcraft:ingotblock:2>);

var bsc_machine = AgglomerationMultiblock.create()
	.center(<ic2:blockmachinelv>)
	.edge(<draconicevolution:draconium_block>)
	.corner(<contenttweaker:alfsteel_block>);

var adv_machine = AgglomerationMultiblock.create()
	.center(<ic2:blockmachinemv>)
	.edge(<ic2:blockutility:2>)
	.corner(<enderio:block_industrial_insulation>);

var rune = AgglomerationMultiblock.create()
	.center(<actuallyadditions:block_crystal_empowered>)
	.edge(<contenttweaker:infusion_block>)
	.corner(<contenttweaker:infusion_block>);

// Recipes
var terrasteel = AgglomerationRecipe.create()
	.output(<botania:manaresource:4>)
	.inputs([<botania:manaresource>, <botania:manaresource:2>, <botania:manaresource:1>])
	.manaCost(250000)
	.multiblock(nature_core);

Agglomeration.addRecipe(terrasteel);

var alfsteel = AgglomerationRecipe.create()
	.output(<contenttweaker:alfsteel_ingot>)
	.inputs([<botania:manaresource:7>, <botania:manaresource:8>, <botania:manaresource:9>])
	.manaCost(500000)
	.multiblock(ender_casing);

Agglomeration.addRecipe(alfsteel);

recipes.remove(<enderio:block_enchanter>);
var eio_enchanter = AgglomerationRecipe.create()
	.output(<enderio:block_enchanter>)
	.inputs([<minecraft:enchanting_table>, <enderio:item_material:1>, <extrautils2:simpledecorative>])
	.manaCost(250000)
	.multiblock(ender_casing);

Agglomeration.addRecipe(eio_enchanter);

var gaiasteel = AgglomerationRecipe.create()
	.output(<botanicadds:gaiasteel_ingot>)
	.inputs([<contenttweaker:alfsteel_ingot>, <botania:manaresource:4>, <bloodarsenal:base_item:4>])
	.manaCost(1000000)
	.multiblock(bsc_machine);

Agglomeration.addRecipe(gaiasteel);

recipes.remove(<ic2:itembatlamacrystal>);
var lapatron_crystal = AgglomerationRecipe.create()
	.output(<ic2:itembatlamacrystal>)
	.inputs([<ic2:itembatcrystal>,<ic2:itemmisc:451>,<actuallyadditions:item_crystal_empowered:1>,<extrautils2:suncrystal>,<contenttweaker:energy_module>])
	.manaCost(250000)
	.multiblock(adv_machine);

Agglomeration.addRecipe(lapatron_crystal);

var red_core = AgglomerationRecipe.create()
	.output(<contenttweaker:red_core>)
	.inputs([<extrautils2:ingredients:2>,<abyssalcraft:crystal:1>,<extrautils2:ingredients:4>,<redstonearsenal:material:160>])
	.manaCost(10000)
	.multiblock(rune);

Agglomeration.addRecipe(red_core);

var ender_star = AgglomerationRecipe.create()
	.output(<contenttweaker:ender_star>)
	.inputs([<contenttweaker:enhanced_ender_ingot>,<minecraft:nether_star>,<enderutilities:enderpart:2>])
	.manaCost(1000000)
	.multiblock(rune);

Agglomeration.addRecipe(ender_star);

recipes.remove(<actuallyadditions:item_misc:19>);
var dragon_star = AgglomerationRecipe.create()
	.output(<actuallyadditions:item_misc:19>)
	.inputs([<minecraft:dragon_egg>,<minecraft:dragon_breath>,<contenttweaker:ender_star>,<botania:manaresource:9>])
	.manaCost(1000000)
	.multiblock(rune);

Agglomeration.addRecipe(dragon_star);
