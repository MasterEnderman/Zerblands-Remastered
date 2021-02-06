#packmode legacy

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
import mods.calculator.atomic;
import mods.calculator.basic;
import mods.calculator.conductorMast;
import mods.chisel.Carving;
import mods.jei.JEI;
import mods.thermalexpansion.InductionSmelter;

var list as IItemStack[] = [
    <calculator:electricaxe>,
    <calculator:electrichoe>,
    <calculator:electricpickaxe>,
    <calculator:electricshovel>,
    <calculator:electricsword>,
    <calculator:endforgedaxe>,
    <calculator:endforgedhoe>,
    <calculator:endforgedpickaxe>,
    <calculator:endforgedshovel>,
    <calculator:endforgedsword>,
    <calculator:enrichedgoldaxe>,
    <calculator:enrichedgoldhoe>,
    <calculator:enrichedgoldpickaxe>,
    <calculator:enrichedgoldshovel>,
    <calculator:enrichedgoldsword>,
    <calculator:firediamondaxe>,
    <calculator:firediamondhoe>,
    <calculator:firediamondpickaxe>,
    <calculator:firediamondshovel>,
    <calculator:firediamondsword>,
    <calculator:flawlessdiamondaxe>,
    <calculator:flawlessdiamondhoe>,
    <calculator:flawlessdiamondpickaxe>,
    <calculator:flawlessdiamondshovel>,
    <calculator:flawlessdiamondsword>,
    <calculator:redstoneaxe>,
    <calculator:redstonehoe>,
    <calculator:redstonepickaxe>,
    <calculator:redstoneshovel>,
    <calculator:redstonesword>,
    <calculator:reinforcedaxe>,
    <calculator:reinforcedhoe>,
    <calculator:reinforcedironaxe>,
    <calculator:reinforcedironhoe>,
    <calculator:reinforcedironpickaxe>,
    <calculator:reinforcedironshovel>,
    <calculator:reinforcedironsword>,
    <calculator:reinforcedpickaxe>,
    <calculator:reinforcedshovel>,
    <calculator:reinforcedsword>,
    <calculator:weakeneddiamondaxe>,
    <calculator:weakeneddiamondhoe>,
    <calculator:weakeneddiamondpickaxe>,
    <calculator:weakeneddiamondshovel>,
    <calculator:weakeneddiamondsword>,

    <calculator:reinforcedfurnace>,
    <calculator:advancedpowercube>,
    <calculator:handcrankedgenerator>,
    <calculator:crankhandle>,
    <calculator:weathercontroller>
];

for item in list {
    JEI.removeAndHide(item);
}

furnace.remove(<calculator:enrichedgoldingot>);
InductionSmelter.addRecipe(<calculator:enrichedgoldingot>, <calculator:enrichedgold>, <minecraft:sand>, 1500);

conductorMast.removeRecipe(<calculator:scientificcalculator>);
conductorMast.removeRecipe(<calculator:electricdiamond>);
conductorMast.removeRecipe(<calculator:material:7>);

atomic.removeRecipe(<calculator:conductormast>);
atomic.removeRecipe(<calculator:weatherstation>*4);
atomic.removeRecipe(<calculator:transmitter>);

JEI.removeAndHide(<calculator:conductormast>);
JEI.removeAndHide(<calculator:weatherstation>);
JEI.removeAndHide(<calculator:transmitter>);

basic.removeRecipe(<calculator:wrench>);
basic.addRecipe(<chiselsandbits:wrench_wood>,<sonarcore:reinforcedstoneblock>,<calculator:wrench>);

basic.removeRecipe(<calculator:sickle>);
basic.addRecipe(<extrautils2:sickle_wood>,<sonarcore:reinforcedstoneblock>,<calculator:sickle>);

recipes.remove(<calculator:atomicmultiplier>);
recipes.addShaped(<calculator:atomicmultiplier>, [
    [<draconicevolution:reactor_core>,<contenttweaker:infinite>,<draconicevolution:reactor_core>],
    [<draconicevolution:crafting_injector:3>,<calculator:fabricationchamber>, <draconicevolution:crafting_injector:3>],
    [<ic2:itemreactorrods:14>,<actuallyadditions:block_atomic_reconstructor>,<ic2:itemreactorrods:14>]
]);

recipes.remove(<calculator:calculatorplug>);
recipes.addShaped(<calculator:calculatorplug>, [
    [null,<calculator:energymodule>,null],
    [<calculator:atomicassembly>,<actuallyadditions:block_empowerer>,<calculator:atomicassembly>],
    [<calculator:material:9>,<calculator:material:9>,<calculator:material:9>]
]);

recipes.remove(<calculator:calculatorassembly>);
recipes.addShaped(<calculator:calculatorassembly>, [
    [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>],
    [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>],
    [<opencomputers:material:16>,<opencomputers:material:16>,<opencomputers:material:16>]
]);

recipes.remove(<calculator:advancedassembly>);
recipes.addShaped(<calculator:advancedassembly>, [
    [<calculator:enrichedgoldingot>,<calculator:calculatorassembly>,<calculator:enrichedgoldingot>],
    [<calculator:calculatorassembly>,<calculator:reinforcedironingot>,<calculator:calculatorassembly>],
    [<calculator:enrichedgoldingot>,<calculator:calculatorassembly>,<calculator:enrichedgoldingot>]
]);

recipes.remove(<calculator:atomicmodule>);
recipes.addShaped(<calculator:atomicmodule>, [
    [<calculator:largetanzanite>,<calculator:advancedassembly>,<calculator:largetanzanite>],
    [<calculator:advancedassembly>,<calculator:material:4>,<calculator:advancedassembly>],
    [<calculator:largetanzanite>,<calculator:advancedassembly>,<calculator:largetanzanite>]
]);

recipes.remove(<calculator:flawlessassembly>);
recipes.addShaped(<calculator:flawlessassembly>, [
    [<calculator:atomicassembly>,<calculator:atomicmodule>,<calculator:atomicassembly>],
    [<calculator:atomicmodule>,<calculator:material:5>,<calculator:atomicmodule>],
    [<calculator:atomicassembly>,<calculator:atomicmodule>,<calculator:atomicassembly>]
]);

recipes.remove(<calculator:calculatorlocator>);
recipes.addShaped(<calculator:calculatorlocator>, [
    [null,<minecraft:beacon>,null],
    [<calculator:flawlessassembly>,<calculator:calculatorplug>,<calculator:flawlessassembly>],
    [<calculator:purifiedobsidian>,<calculator:purifiedobsidian>,<calculator:purifiedobsidian>]
]);

Empowerer.addRecipe(<calculator:electricdiamond>,<calculator:firediamond>,<redstonearsenal:material:64>,<redstonearsenal:material:64>,<redstonearsenal:material:64>,<redstonearsenal:material:64>, 500, 100);

var listStableStone as IItemStack[] = [
    <sonarcore:stablestone_normal>,
    <sonarcore:stablestonerimmed_normal>,
    <sonarcore:stablestoneblackrimmed_normal>,
    <sonarcore:stablestone_black>,
    <sonarcore:stablestonerimmed_black>,
    <sonarcore:stablestoneblackrimmed_black>,
    <sonarcore:stablestone_blue>,
    <sonarcore:stablestonerimmed_blue>,
    <sonarcore:stablestoneblackrimmed_blue>,
    <sonarcore:stablestone_brown>,
    <sonarcore:stablestonerimmed_brown>,
    <sonarcore:stablestoneblackrimmed_brown>,
    <sonarcore:stablestone_cyan>,
    <sonarcore:stablestonerimmed_cyan>,
    <sonarcore:stablestoneblackrimmed_cyan>,
    <sonarcore:stablestone_green>,
    <sonarcore:stablestonerimmed_green>,
    <sonarcore:stablestoneblackrimmed_green>,
    <sonarcore:stablestone_lightblue>,
    <sonarcore:stablestonerimmed_lightblue>,
    <sonarcore:stablestoneblackrimmed_lightblue>,
    <sonarcore:stablestone_lightgrey>,
    <sonarcore:stablestonerimmed_lightgrey>,
    <sonarcore:stablestoneblackrimmed_lightgrey>,
    <sonarcore:stablestone_lime>,
    <sonarcore:stablestonerimmed_lime>,
    <sonarcore:stablestoneblackrimmed_lime>,
    <sonarcore:stablestone_magenta>,
    <sonarcore:stablestonerimmed_magenta>,
    <sonarcore:stablestoneblackrimmed_magenta>,
    <sonarcore:stablestone_orange>,
    <sonarcore:stablestonerimmed_orange>,
    <sonarcore:stablestoneblackrimmed_orange>,
    <sonarcore:stablestone_pink>,
    <sonarcore:stablestonerimmed_pink>,
    <sonarcore:stablestoneblackrimmed_pink>,
    <sonarcore:stablestone_plain>,
    <sonarcore:stablestonerimmed_plain>,
    <sonarcore:stablestoneblackrimmed_plain>,
    <sonarcore:stablestone_purple>,
    <sonarcore:stablestonerimmed_purple>,
    <sonarcore:stablestoneblackrimmed_purple>,
    <sonarcore:stablestone_red>,
    <sonarcore:stablestonerimmed_red>,
    <sonarcore:stablestoneblackrimmed_red>,
    <sonarcore:stablestone_yellow>,
    <sonarcore:stablestonerimmed_yellow>,
    <sonarcore:stablestoneblackrimmed_yellow>
];

Carving.addGroup("stablestone");
recipes.remove(<sonarcore:reinforcedstonebrick>);

for item in listStableStone {
    recipes.remove(item);
    Carving.addVariation("stablestone", item);
}
