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

import mods.actuallyadditions.Empowerer;
import mods.calculator.basic;
import mods.immersiveengineering.MetalPress;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import mods.tconstruct.Melting;

Drying.addRecipe(<tconstruct:materials:1>, <earthworks:item_mud>, 2400);

Melting.removeRecipe(<liquid:stone>);
Melting.addRecipe(<liquid:stone>*144, <tconstruct:soil>, 250);

Melting.addRecipe(<liquid:dirt>*36, <earthworks:item_mud>, 250);
Melting.addRecipe(<liquid:dirt>*144, <earthworks:block_mud>, 250);

Melting.removeEntityMelting(<entity:minecraft:villager>);
Melting.removeEntityMelting(<entity:minecraft:horse>);

Empowerer.addRecipe(<tconstruct:slime_sapling:0>, <minecraft:deadbush>, <tconstruct:slime_congealed>, <tconstruct:slime_congealed:1>, <tconstruct:slime_congealed>, <tconstruct:slime_congealed:1>, 4000, 1200, [0.7, 0.6, 0.1]);
Empowerer.addRecipe(<tconstruct:slime_sapling:1>, <minecraft:deadbush>, <tconstruct:slime_congealed>, <tconstruct:slime_congealed:2>, <tconstruct:slime_congealed>, <tconstruct:slime_congealed:2>, 4000, 1200, [0.8, 0.2, 0.8]);
Empowerer.addRecipe(<tconstruct:slime_sapling:2>, <minecraft:deadbush>, <tconstruct:slime_congealed:3>, <tconstruct:slime_congealed:4>, <tconstruct:slime_congealed:3>, <tconstruct:slime_congealed:4>, 4000, 1200, [0.4, 0.1, 0.4]);

recipes.remove(<tconstruct:stone_stick>);
MetalPress.addRecipe(<tconstruct:stone_stick>*2, <ore:cobblestone>, <immersiveengineering:mold:2>, 64);
MetalPress.addRecipe(<tconstruct:stone_stick>*4, <ore:stone>, <immersiveengineering:mold:2>, 64);

Melting.removeRecipe(<liquid:glowstone>);
Melting.removeRecipe(<liquid:redstone>);

Melting.removeRecipe(<liquid:dirt>, <earthworks:item_adobe>);

Melting.removeRecipe(<liquid:ender>, <minecraft:ender_pearl>);
Casting.removeTableRecipe(<minecraft:ender_pearl>);

recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.remove(<tconstruct:tinker_tank_controller>);
Casting.addBasinRecipe(<tconstruct:tinker_tank_controller>, <extrautils2:drum>, <liquid:stone>, 576, true, 100);

recipes.remove(<tconstruct:brownstone:1>);
basic.addRecipe(<chisel:brownstone>,<minecraft:redstone>,<tconstruct:brownstone:1>);

recipes.remove(<tconstruct:firewood:1>);
basic.addRecipe(<tconstruct:firewood>,<embers:dust_ember>,<tconstruct:firewood:1>);

recipes.remove(<tconstruct:pattern>);
recipes.addShaped(<tconstruct:pattern> * 2,[
	[<ore:stickWood>,<ore:plankWood>],
	[<ore:plankWood>,<ore:stickWood>]
]);
recipes.addShaped(<tconstruct:pattern> * 2,[
	[<ore:plankWood>,<ore:stickWood>],
	[<ore:stickWood>,<ore:plankWood>]
]);
recipes.addShaped(<tconstruct:pattern> * 4,[
	[<ore:plankTreatedWood>,<ore:stickTreatedWood>],
	[<ore:stickTreatedWood>,<ore:plankTreatedWood>]
]);
recipes.addShaped(<tconstruct:pattern> * 4,[
	[<ore:stickTreatedWood>,<ore:plankTreatedWood>],
    [<ore:plankTreatedWood>,<ore:stickTreatedWood>]
]);

recipes.remove(<tconstruct:soil>);
recipes.addShaped(<tconstruct:soil> * 2, [
	[<embers:blend_caminite>,<minecraft:gravel>],
	[<minecraft:gravel>,<embers:blend_caminite>]
]);
recipes.addShaped(<tconstruct:soil> * 2, [
	[<minecraft:gravel>,<embers:blend_caminite>],
	[<embers:blend_caminite>,<minecraft:gravel>]
]);

recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped(<tconstruct:smeltery_controller>, [
	[<tconstruct:materials>,<immersiveengineering:stone_decoration>,<tconstruct:materials>],
	[<immersiveengineering:stone_decoration>,<thermalfoundation:material:23>,<immersiveengineering:stone_decoration>],
	[<tconstruct:materials>,<immersiveengineering:stone_decoration>,<tconstruct:materials>]
]);

val slimebo = [
<tconstruct:slime_boots>,
<tconstruct:slime_boots:1>,
<tconstruct:slime_boots:2>,
<tconstruct:slime_boots:3>,
<tconstruct:slime_boots:4>
] as IItemStack[];

val slimebl = [
<tconstruct:slime>,
<tconstruct:slime:1>,
<tconstruct:slime:2>,
<tconstruct:slime:3>,
<tconstruct:slime:4>
] as IItemStack[];

for i, item in slimebo {
	recipes.remove(slimebo[i]);
	recipes.addShaped(slimebo[i],[[slimebl[i],<minecraft:diamond_boots>,slimebl[i]],[slimebl[i],null,slimebl[i]]]);
}

val bricks = [
    <minecraft:brick>,
    <minecraft:netherbrick>,
    <earthworks:item_adobe>,
    <tconstruct:materials>,
    <tconstruct:materials:1>,
    <tconstruct:materials:2>,
] as IItemStack[];

Casting.removeTableRecipe(<tconstruct:cast_custom:0>);

for item in bricks {
	Casting.addTableRecipe(<tconstruct:cast_custom:0>, item, <liquid:gold>, 288, true);
	Casting.addTableRecipe(<tconstruct:cast_custom:0>, item, <liquid:brass>, 144, true);
	Casting.addTableRecipe(<tconstruct:cast_custom:0>, item, <liquid:alubrass>, 144, true);
}
