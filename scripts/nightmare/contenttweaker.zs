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
import mods.astralsorcery.Grindstone;
import mods.bloodmagic.AlchemyTable;
import mods.enderio.AlloySmelter;
import mods.evilcraft.BloodInfuser;
import mods.immersiveengineering.AlloySmelter as Kiln;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.immersivetechnology.SolarTower;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Refinery as TERefinery;

Mixer.addRecipe(<liquid:sulfuric_acid>*1000, <liquid:distwater>*1000, [<ore:dustSulfur>*4,<ore:dustIron>], 1024);

TERefinery.removeRecipe(<liquid:oil>);
TERefinery.removeRecipe(<liquid:crude_oil>);

Mixer.addRecipe(<liquid:hydrogen_chlorid>*250, <liquid:sulfuric_acid>*250, [<ore:dustSalt>*4], 512);

Refinery.addRecipe(<liquid:ethylene>*8, <liquid:refined_oil>*8, <liquid:steam>*100, 512);
Refinery.addRecipe(<liquid:plastic>*16, <liquid:ethylene>*8, <liquid:hydrogen_chlorid>*8, 512);

Casting.addTableRecipe(<contenttweaker:plastic>, <tconstruct:cast_custom:3>, <liquid:plastic>, 512, false);

AlchemyTable.addRecipe(<contenttweaker:crystal_prism>, [
	<astralsorcery:itemrockcrystalsimple>,<tconstruct:edible:30>,<tconstruct:edible:31>,
    <tconstruct:edible:32>,<tconstruct:edible:33>,<tconstruct:edible:34>
], 3000, 100, 0);

// inputStack, inputFluid, tier, outputStack, duration, xp
BloodInfuser.addRecipe(<contenttweaker:blood_infused_stone>, <liquid:evilcraftblood> * 5000, 1, <sonarcore:reinforcedstoneblock>, 100, 10);

// mods.immersivetechnology.SolarTower.addRecipe(ILiquidStack outputFluid, ILiquidStack inputFluid, int time);
SolarTower.removeRecipe(<liquid:water>);
SolarTower.addRecipe(<liquid:brackish_water> * 100, <liquid:water> * 1000, 10);
SolarTower.addRecipe(<liquid:saline_water> * 100, <liquid:brackish_water> * 1000, 10);
SolarTower.addRecipe(<liquid:briny_water> * 100, <liquid:saline_water> * 1000, 10);

Altar.addDiscoveryAltarRecipe("grinding_wheel", <contenttweaker:grind_wheel>, 200, 200, [
    <ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>,
    <ore:stoneMarble>, <ore:gearStone>, <ore:stoneMarble>,
    <ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>
]);

Drying.addRecipe(<contenttweaker:root_dried>,<botania:manaresource:20>,200);
Casting.addTableRecipe(<contenttweaker:root_golden>, <contenttweaker:root_dried>, <liquid:gold>, 288, true);

recipes.addShapeless(<contenttweaker:pattern_ingot>, [
    <actuallyadditions:item_knife:*>.transformDamage(),<tconstruct:pattern>
]);

var mapPressed as IItemStack[IItemStack] = {
    <contenttweaker:pressed_mud> : <earthworks:item_mud>,
    <contenttweaker:pressed_clay> : <minecraft:clay_ball>,
    <contenttweaker:pressed_fireclay> : <contenttweaker:fireclay_dust>
};

for output, input in mapPressed {
    recipes.addShapeless(output, [
        <contenttweaker:pattern_ingot:*>.transformDamage(),input
    ]);
}

recipes.addShaped(<contenttweaker:cutting_head>, [
    [<contenttweaker:basic_blade>,<contenttweaker:basic_blade>,<contenttweaker:basic_blade>],
    [<contenttweaker:basic_blade>,<ore:gearStone>,<contenttweaker:basic_blade>],
    [<contenttweaker:basic_blade>,<contenttweaker:basic_blade>,<contenttweaker:basic_blade>]
]);

recipes.addShaped(<contenttweaker:copper_coil>, [
    [null,<immersiveengineering:wirecoil>,<ore:stickIron>],
    [<immersiveengineering:wirecoil>,<ore:gemQuartzBlack>,<immersiveengineering:wirecoil>],
    [<ore:stickIron>,<immersiveengineering:wirecoil>,null]
]);

Grindstone.addRecipe(<minecraft:bone>, <contenttweaker:bone_shard>, 0.1f);
Grindstone.addRecipe(<minecraft:flint>, <contenttweaker:flint_shard>, 0.1f);

recipes.addShapeless(<contenttweaker:fireclay_dust> * 2, [
    <contenttweaker:brick_dust>,<ic2:itemmisc:11>,
    <ic2:itemmisc:8>,<ic2:itemmisc:9>
]);

Drying.addRecipe(<contenttweaker:fireclay_dried>,<contenttweaker:pressed_fireclay>,400);
furnace.addRecipe(<contenttweaker:fireclay_brick>,<contenttweaker:fireclay_dried>);

Blueprint.addRecipe("components", <contenttweaker:electric_motor>, [
    <immersiveengineering:material:8> * 1,
    <extrautils2:ingredients:13> * 1,
    <actuallyadditions:item_misc:7> * 1,
    <ic2:itemcable> * 4
]);
