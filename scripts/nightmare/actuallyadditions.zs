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
import mods.actuallyadditions.Crusher;
import mods.actuallyadditions.Empowerer;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.Mixer;
import mods.thermalexpansion.Pulverizer;

<actuallyadditions:item_misc:19>.displayName = "Dragon Star";

recipes.remove(<actuallyadditions:block_greenhouse_glass>);
recipes.addShaped(<actuallyadditions:block_greenhouse_glass> * 4, [
    [<ore:blockGlassHardened>,<forestry:crafting_material:7>,<ore:blockGlassHardened>],
    [<forestry:greenhouse>,<actuallyadditions:item_crystal_empowered:1>,<forestry:greenhouse>],
    [<ore:blockGlassHardened>,<forestry:crafting_material:7>,<ore:blockGlassHardened>]
]);

recipes.remove(<actuallyadditions:block_misc:7>);
recipes.addShaped(<actuallyadditions:block_misc:7> * 16, [
    [<actuallyadditions:block_crystal:5>,<actuallyadditions:block_crystal:5>,<actuallyadditions:block_crystal:5>],
    [<actuallyadditions:block_crystal:5>,<actuallyadditions:block_misc:9>,<actuallyadditions:block_crystal:5>],
    [<actuallyadditions:block_crystal:5>,<actuallyadditions:block_crystal:5>,<actuallyadditions:block_crystal:5>]
]);

recipes.remove(<actuallyadditions:item_misc:12>);
recipes.addShaped(<actuallyadditions:item_misc:12> * 4, [
    [null,<actuallyadditions:item_misc:9>,null],
    [<actuallyadditions:item_misc:9>,<ore:listAllwater>,<actuallyadditions:item_misc:9>],
    [null,<actuallyadditions:item_misc:9>,null]
]);

var recipeMapShaped as IIngredient[][][IItemStack] = {
    <actuallyadditions:item_misc:7>	: [
    	[null,<immersiveengineering:wirecoil:5>,<ore:plankTreatedWood>],
    	[<immersiveengineering:wirecoil:5>,<ore:gemQuartzBlack>,<immersiveengineering:wirecoil:5>],
    	[<ore:plankTreatedWood>,<immersiveengineering:wirecoil:5>,null]
    ],
    <actuallyadditions:item_misc:8>	: [
    	[null,<immersiveengineering:wirecoil:1>,<ore:plankTreatedWood>],
    	[<immersiveengineering:wirecoil:1>,<actuallyadditions:item_misc:7>,<immersiveengineering:wirecoil:1>],
    	[<ore:plankTreatedWood>,<immersiveengineering:wirecoil:1>,null]
    ],
    <actuallyadditions:block_misc:8> : [
    	[<forestry:thermionic_tubes:12>,<rftools:infused_diamond>,<forestry:thermionic_tubes:12>],
    	[<rftools:infused_diamond>,<thermalexpansion:frame:132>,<rftools:infused_diamond>],
    	[<forestry:thermionic_tubes:12>,<rftools:infused_diamond>,<forestry:thermionic_tubes:12>]
    ],
    <actuallyadditions:block_misc:9> : [
    	[<ore:plateIron>,<ore:gemQuartzBlack>,<ore:plateIron>],
    	[<ore:gemQuartzBlack>,<ore:gearBronze>,<ore:gemQuartzBlack>],
    	[<ore:plateIron>,<ore:gemQuartzBlack>,<ore:plateIron>]
    ],
    <actuallyadditions:block_atomic_reconstructor> : [
    	[<ore:plateIron>,<ore:gemDiamond>,<ore:plateIron>],
    	[<calculator:redstoneingot>,<actuallyadditions:block_misc:9>,<calculator:redstoneingot>],
    	[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]
    ],
    <actuallyadditions:block_bio_reactor> : [
    	[<actuallyadditions:item_misc:8>,<ore:gearLead>,<actuallyadditions:item_misc:8>],
    	[<ore:gearLead>,<actuallyadditions:block_misc:9>,<ore:gearLead>],
    	[<actuallyadditions:item_misc:8>,<ore:gearLead>,<actuallyadditions:item_misc:8>]
    ],
    <actuallyadditions:block_farmer> : [
    	[<actuallyadditions:item_crystal>,<minecraft:diamond_hoe>,<actuallyadditions:item_crystal>],
    	[<ore:gearCopper>,<actuallyadditions:block_misc:9>,<ore:gearCopper>],
    	[<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:2>,<actuallyadditions:item_misc:8>]
    ],
    <actuallyadditions:block_breaker> : [
    	[<ore:blockSeared>,<minecraft:piston>,<ore:blockSeared>],
    	[<ore:gearIron>,<minecraft:diamond_pickaxe>,<ore:gearIron>],
    	[<ore:blockSeared>,<tconstruct:ingots>,<ore:blockSeared>]
    ],
    <actuallyadditions:block_dropper> : [
    	[<ore:blockSeared>,<actuallyadditions:item_crystal:1>,<ore:blockSeared>],
    	[<ore:gearIron>,<minecraft:dropper>,<ore:gearIron>],
    	[<ore:blockSeared>,<tconstruct:ingots>,<ore:blockSeared>]
    ],
    <actuallyadditions:block_placer> : [
    	[<ore:blockSeared>,<minecraft:sticky_piston>,<ore:blockSeared>],
    	[<ore:gearIron>,<actuallyadditions:block_misc:9>,<ore:gearIron>],
    	[<ore:blockSeared>,<tconstruct:ingots>,<ore:blockSeared>]
    ],
    <actuallyadditions:block_coal_generator> : [
    	[<immersiveengineering:stone_decoration>,<ore:blockSeared>,<immersiveengineering:stone_decoration>],
    	[<ore:blockSeared>,<actuallyadditions:block_misc:9>,<ore:blockSeared>],
    	[<immersiveengineering:stone_decoration>,<actuallyadditions:item_misc:7>,<immersiveengineering:stone_decoration>]
    ],
    <actuallyadditions:block_oil_generator>	: [
    	[<ore:blockSeared>,<tconstruct:seared_tank>,<ore:blockSeared>],
    	[<ore:plateIron>,<actuallyadditions:block_misc:9>,<ore:plateIron>],
    	[<ore:blockSeared>,<actuallyadditions:item_misc:7>,<ore:blockSeared>]
    ],
    <actuallyadditions:block_grinder> : [
    	[<minecraft:flint>,<minecraft:piston>,<minecraft:flint>],
    	[<ore:blockSeared>,<actuallyadditions:block_misc:9>,<ore:blockSeared>],
    	[<actuallyadditions:item_misc:7>,<ore:blockSeared>,<actuallyadditions:item_misc:7>]
    ],
    <actuallyadditions:block_grinder_double> : [
    	[<ore:blockSeared>,<actuallyadditions:item_misc:8>,<ore:blockSeared>],
    	[<actuallyadditions:block_grinder>,<actuallyadditions:block_misc:9>,<actuallyadditions:block_grinder>],
    	[<actuallyadditions:item_misc:8>,crystalBlockRedstone,<actuallyadditions:item_misc:8>]
    ],
    <actuallyadditions:block_furnace_double> : [
    	[<ore:blockSeared>,<ore:blockSeared>,<ore:blockSeared>],
    	[<tconstruct:seared_furnace_controller>,<actuallyadditions:block_misc:9>,<tconstruct:seared_furnace_controller>],
    	[<actuallyadditions:item_misc:7>,<ore:blockSeared>,<actuallyadditions:item_misc:7>]
    ],
    <actuallyadditions:item_bag> : [
    	[<immersiveengineering:material:5>,<immersiveengineering:material:5>,<immersiveengineering:material:5>],
    	[<immersiveengineering:material:5>,<immersiveengineering:wooden_device0>,<immersiveengineering:material:5>],
    	[<immersiveengineering:material:5>,<immersiveengineering:material:5>,<immersiveengineering:material:5>]
    ],
    <actuallyadditions:block_display_stand>	: [
    	[<actuallyadditions:block_testifi_bucks_green_wall>,<ore:plateIridium>,<actuallyadditions:block_testifi_bucks_green_wall>],
    	[<ore:plateUranium>,<forestry:hardened_machine>,<ore:plateUranium>],
    	[<actuallyadditions:block_testifi_bucks_green_wall>,<actuallyadditions:block_testifi_bucks_white_wall>,<actuallyadditions:block_testifi_bucks_green_wall>]
    ],
    <actuallyadditions:block_empowerer>	: [
    	[<rftools:infused_enderpearl>,<actuallyadditions:block_display_stand>,<rftools:infused_enderpearl>],
    	[<immersiveengineering:metal_decoration0:5>,<immersiveengineering:material:27>,<immersiveengineering:metal_decoration0:5>],
    	[<actuallyadditions:block_misc:9>,<forestry:flexible_casing>,<actuallyadditions:block_misc:9>]
    ],
    <actuallyadditions:item_filling_wand> : [
    	[<actuallyadditions:item_crystal_empowered:5>,<actuallyadditions:item_crystal:1>,<actuallyadditions:item_crystal_empowered:5>],
    	[<actuallyadditions:item_crystal:2>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_crystal:2>],
    	[null,<thermalexpansion:capacitor:2>,null]
    ],
    <actuallyadditions:item_tele_staff>	: [
    	[null,<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:block_misc:6>],
    	[null,<actuallyadditions:block_misc:8>,null],
    	[<actuallyadditions:block_misc:8>,<thermalexpansion:capacitor:4>,null]
    ],
    <actuallyadditions:item_drill:3> : [
    	[null,<ore:dustDiamond>,<ore:dustDiamond>],
    	[<ore:ingotPlatinum>,<immersiveengineering:drillhead>,<ore:dustDiamond>],
    	[<immersiveengineering:drill>,<ore:ingotPlatinum>,null]
    ],
    <actuallyadditions:block_miner>	: [
    	[<actuallyadditions:block_misc:9>,<actuallyadditions:block_crystal_empowered:3>,<actuallyadditions:block_misc:9>],
    	[<actuallyadditions:block_crystal_empowered>,<forestry:flexible_casing>,<actuallyadditions:block_crystal_empowered>],
    	[<actuallyadditions:block_misc:9>,<actuallyadditions:item_drill:3>,<actuallyadditions:block_misc:9>]
    ],
    <actuallyadditions:block_giant_chest> : [
    	[<immersiveengineering:wooden_device0>,<ore:scaffoldingTreatedWood>,<immersiveengineering:wooden_device0>],
    	[<ore:scaffoldingTreatedWood>,<actuallyadditions:block_misc:4>,<ore:scaffoldingTreatedWood>],
    	[<immersiveengineering:wooden_device0>,<ore:scaffoldingTreatedWood>,<immersiveengineering:wooden_device0>]
    ],
    <actuallyadditions:item_misc:2>	: [
    	[null,<minecraft:flint>],
    	[<minecraft:flint>,null]
    ],
    <actuallyadditions:item_misc:3>	: [
    	[<immersiveengineering:material:4>,<ore:stickWood>],
    	[<ore:stickWood>,<immersiveengineering:material:4>]
    ],
    <actuallyadditions:item_chest_to_crate_upgrade>	: [
    	[null,<immersiveengineering:wooden_device0>,null],
    	[<immersiveengineering:wooden_device0>,<ore:scaffoldingTreatedWood>,<immersiveengineering:wooden_device0>],
    	[null,<immersiveengineering:wooden_device0>,null]
    ],
    <actuallyadditions:item_medium_to_large_crate_upgrade> : [
    	[null,<actuallyadditions:block_crystal_empowered:3>,null],
    	[<actuallyadditions:block_crystal_empowered:3>,<ore:scaffoldingTreatedWood>,<actuallyadditions:block_crystal_empowered:3>],
    	[null,<actuallyadditions:block_crystal_empowered:3>,null]
    ],
    <actuallyadditions:item_small_to_medium_crate_upgrade> : [
    	[null,<actuallyadditions:block_crystal:3>,null],
    	[<actuallyadditions:block_crystal:3>,<ore:scaffoldingTreatedWood>,<actuallyadditions:block_crystal:3>],
    	[null,<actuallyadditions:block_crystal:3>,null]
    ],
    <actuallyadditions:block_giant_chest_medium> : [
    	[<actuallyadditions:block_crystal:3>,<ore:scaffoldingTreatedWood>,<actuallyadditions:block_crystal:3>],
    	[<ore:scaffoldingTreatedWood>,<actuallyadditions:block_giant_chest>,<ore:scaffoldingTreatedWood>],
    	[<actuallyadditions:block_crystal:3>,<ore:scaffoldingTreatedWood>,<actuallyadditions:block_crystal:3>]
    ],
    <actuallyadditions:block_giant_chest_large>	: [
    	[<actuallyadditions:block_crystal_empowered:3>,<ore:scaffoldingTreatedWood>,<actuallyadditions:block_crystal_empowered:3>],
    	[<ore:scaffoldingTreatedWood>,<actuallyadditions:block_giant_chest_medium>,<ore:scaffoldingTreatedWood>],
    	[<actuallyadditions:block_crystal_empowered:3>,<ore:scaffoldingTreatedWood>,<actuallyadditions:block_crystal_empowered:3>]
    ],
    <actuallyadditions:item_misc:20> : [
    	[<actuallyadditions:item_crystal_empowered:1>,<enderio:block_dark_iron_bars>,<actuallyadditions:item_crystal_empowered:1>],
    	[<enderio:block_dark_iron_bars>,<woot:factorybase>,<enderio:block_dark_iron_bars>],
    	[<actuallyadditions:item_crystal_empowered:1>,<enderio:block_dark_iron_bars>,<actuallyadditions:item_crystal_empowered:1>]
    ],
    <actuallyadditions:block_coffee_machine> : [
    	[<ore:plateSteel>,<ore:plateSteel>,<actuallyadditions:item_misc:8>],
    	[null,<actuallyadditions:item_misc:14>,<actuallyadditions:block_misc:9>],
    	[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]
    ],
    <actuallyadditions:item_misc:18> : [
    	[<ore:plateBronze>,<thermalfoundation:glass_alloy:7>,<ore:plateBronze>],
    	[<thermalfoundation:glass_alloy:7>,<ore:gemQuartzBlack>,<thermalfoundation:glass_alloy:7>],
    	[<ore:plateBronze>,<thermalfoundation:glass_alloy:7>,<ore:plateBronze>]
    ]
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}

var recipeMapShapeless as IIngredient[][IItemStack] = {

    <actuallyadditions:item_misc:19>	:[
    	<contenttweaker:ender_star>,<minecraft:dragon_breath>,
    	<botania:manaresource:9>,<thermalfoundation:material:895>
    ],
    <actuallyadditions:item_misc:9>	:[
    	<harvestcraft:mixingbowlitem>,<ore:listAllwater>,<ore:dustSalt>,
    	<actuallyadditions:item_food:16>,<ore:foodFlour>
    ],
};

for key, value in recipeMapShapeless {
	recipes.remove(key);
    recipes.addShapeless(key, value);
}

Mixer.addRecipe(<liquid:crystaloil>*1000, <liquid:refinedcanolaoil>*1000, [<actuallyadditions:item_misc:23>], 512);
Mixer.addRecipe(<liquid:empoweredoil>*1000, <liquid:crystaloil>*1000, [<actuallyadditions:item_misc:24>], 512);

Crusher.addRecipe(<actuallyadditions:item_misc:5>*4, <actuallyadditions:block_misc:2>, 800, null, 0);
Pulverizer.addRecipe(<actuallyadditions:item_misc:5>*4, <actuallyadditions:block_misc:2>, 3000, null, 0);

var listCrystal as IItemStack[] = [
    <actuallyadditions:block_crystal_empowered>,
    <actuallyadditions:block_crystal_empowered:1>,
    <actuallyadditions:block_crystal_empowered:2>,
    <actuallyadditions:block_crystal_empowered:3>,
    <actuallyadditions:block_crystal_empowered:4>,
    <actuallyadditions:block_crystal_empowered:5>,

    <actuallyadditions:item_crystal_empowered>,
    <actuallyadditions:item_crystal_empowered:1>,
    <actuallyadditions:item_crystal_empowered:2>,
    <actuallyadditions:item_crystal_empowered:3>,
    <actuallyadditions:item_crystal_empowered:4>,
    <actuallyadditions:item_crystal_empowered:5>
];

for item in listCrystal {
    Empowerer.removeRecipe(item);
}

Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:0>, <actuallyadditions:item_crystal:0>, <ore:blockGlassRed>, <rftools:dimensional_shard>, <ore:blockGlassRed>, <rftools:dimensional_shard>, 8192, 100, [0.1, 0.1, 0.1]);
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal:1>, <ore:blockGlassBlue>, <rftools:dimensional_shard>, <ore:blockGlassBlue>, <rftools:dimensional_shard>, 8192, 100, [0.1, 0.1, 0.1]);
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal:2>, <ore:blockGlassCyan>, <rftools:dimensional_shard>, <ore:blockGlassCyan>, <rftools:dimensional_shard>, 8192, 100, [0.1, 0.1, 0.1]);
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal:3>, <ore:blockGlassBlack>, <rftools:dimensional_shard>, <ore:blockGlassBlack>, <rftools:dimensional_shard>, 8192, 100, [0.1, 0.1, 0.1]);
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal:4>, <ore:blockGlassLime>, <rftools:dimensional_shard>, <ore:blockGlassLime>, <rftools:dimensional_shard>, 8192, 100, [0.1, 0.1, 0.1]);
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal:5>, <ore:blockGlassWhite>, <rftools:dimensional_shard>, <ore:blockGlassWhite>, <rftools:dimensional_shard>, 8192, 100, [0.1, 0.1, 0.1]);

Empowerer.addRecipe(<actuallyadditions:item_flax_seed>, <immersiveengineering:seed>, <minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>, 2000, 400, [0.2, 0.4, 0.7]);

AtomicReconstructor.removeRecipe(<actuallyadditions:item_color_lens>);
AtomicReconstructor.removeRecipe(<actuallyadditions:item_explosion_lens>);
AtomicReconstructor.removeRecipe(<actuallyadditions:item_damage_lens>);

AtomicReconstructor.addRecipe(<actuallyadditions:item_explosion_lens>, <actuallyadditions:item_misc:18>, 5000);
AtomicReconstructor.addRecipe(<actuallyadditions:item_damage_lens>, <actuallyadditions:item_explosion_lens>, 5000);

Crusher.removeRecipe(<thermalfoundation:material:1>*6);
Crusher.removeRecipe(<actuallyadditions:item_dust:2>*6);
