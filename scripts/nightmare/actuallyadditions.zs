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
import mods.immersiveengineering.Crusher as IECrusher;
import mods.immersiveengineering.Mixer;
import mods.thermalexpansion.Pulverizer;

<actuallyadditions:item_misc:19>.displayName = "Dragon Star";

recipes.remove(<actuallyadditions:block_greenhouse_glass>);
recipes.addShaped(<actuallyadditions:block_greenhouse_glass> * 4, [
    [<ore:blockGlassHardened>,<forestry:crafting_material:7>,<ore:blockGlassHardened>],
    [<forestry:crafting_material:7>,<actuallyadditions:item_crystal_empowered:1>,<forestry:crafting_material:7>],
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
    	[<immersiveengineering:wirecoil:5>,<contenttweaker:copper_coil>,<immersiveengineering:wirecoil:5>],
    	[<ore:plankTreatedWood>,<immersiveengineering:wirecoil:5>,null]
    ],
    <actuallyadditions:item_misc:8>	: [
    	[null,<immersiveengineering:wirecoil:1>,<ore:plankTreatedWood>],
    	[<immersiveengineering:wirecoil:1>,<actuallyadditions:item_misc:7>,<immersiveengineering:wirecoil:1>],
    	[<ore:plankTreatedWood>,<immersiveengineering:wirecoil:1>,null]
    ],
	<actuallyadditions:block_misc:9> : [
		[<contenttweaker:black_iron>,<forestry:chipsets>,<contenttweaker:black_iron>],
		[<ore:stickAluminum>,<extrautils2:machine>,<ore:stickAluminum>],
		[<contenttweaker:black_iron>,<embers:aspectus_dawnstone>,<contenttweaker:black_iron>]
	],
    <actuallyadditions:item_misc:2> : [
        [<immersiveengineering:material:4>,<minecraft:flint>],
        [<minecraft:flint>,<immersiveengineering:material:4>]
    ],
    <actuallyadditions:item_misc:3> : [
        [<immersiveengineering:material:4>,<ore:stickWood>],
        [<ore:stickWood>,<immersiveengineering:material:4>]
    ],
    <actuallyadditions:item_knife> : [
        [<immersiveengineering:material:4>,<actuallyadditions:item_misc:2>],
        [<actuallyadditions:item_misc:3>,<immersiveengineering:material:4>]
    ],
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

IECrusher.addRecipe(<actuallyadditions:item_misc:5>*4, <actuallyadditions:block_misc:2>, 800, null, 0);
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

var t as int = 40;

AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal>, <enderio:item_alloy_ingot:3>, t);

AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:1>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:1>, <contenttweaker:large_tanzanite>, t);
