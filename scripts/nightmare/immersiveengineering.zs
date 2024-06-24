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
import mods.ic2.Compressor;
import mods.ic2.Extractor;
import mods.ic2.Macerator;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.Fermenter;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.jei.JEI;
import mods.tconstruct.Casting;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Transposer;

JEI.addItem(<immersiveengineering:blueprint>.withTag({blueprint: "rails"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "rails"}),[
    [null,<contenttweaker:tie_wood>,null],
    [<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],
    [<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]
]);

JEI.addItem(<immersiveengineering:blueprint>.withTag({blueprint: "machinery"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "machinery"}),[
    [null,<ore:gearStone>,null],
    [<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],
    [<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]
]);

Fermenter.removeFluidRecipe(<liquid:ethanol>);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*6,<thermalfoundation:material:818>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*8,<thermalfoundation:material:819>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*6,<thermalfoundation:material:816>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*8,<thermalfoundation:material:817>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*2,<actuallyadditions:item_misc:1>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*4,<actuallyadditions:item_misc:21>, 256);

Refinery.removeRecipe(<liquid:biodiesel>);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*8, <liquid:plantoil>*8, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*8, <liquid:canolaoil>*8, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*8, <liquid:biocrude>*8, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*4, <liquid:refinedcanolaoil>*12, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*4, <liquid:refined_biofuel>*12, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*12, <liquid:seed.oil>*4, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*12, <liquid:seed_oil>*4, 256);
// Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*12, <liquid:fish_oil>*4, 256); disabled until v2.3.0
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*12, <liquid:hootch>*4, 256);

MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>);

Compressor.addRecipe(<immersiveengineering:material:18>, <immersiveengineering:material:17> * 8);

Macerator.addRecipe(<immersiveengineering:material:17>, <ore:fuelCoke>);

var mapConcrete as IItemStack[string][string] = {
    "White" : {
        "solid" : <minecraft:concrete:0>,
        "powder" : <minecraft:concrete_powder:0>
    },
    "Orange" : {
        "solid" : <minecraft:concrete:1>,
        "powder" : <minecraft:concrete_powder:1>
    },
    "Magenta" : {
        "solid" : <minecraft:concrete:2>,
        "powder" : <minecraft:concrete_powder:2>
    },
    "LightBlue" : {
        "solid" : <minecraft:concrete:3>,
        "powder" : <minecraft:concrete_powder:3>
    },
    "Yellow" : {
        "solid" : <minecraft:concrete:4>,
        "powder" : <minecraft:concrete_powder:4>
    },
    "Lime" : {
        "solid" : <minecraft:concrete:5>,
        "powder" : <minecraft:concrete_powder:5>
    },
    "Pink" : {
        "solid" : <minecraft:concrete:6>,
        "powder" : <minecraft:concrete_powder:6>
    },
    "Gray" : {
        "solid" : <minecraft:concrete:7>,
        "powder" : <minecraft:concrete_powder:7>
    },
    "LightGray" : {
        "solid" : <minecraft:concrete:8>,
        "powder" : <minecraft:concrete_powder:8>
    },
    "Cyan" : {
        "solid" : <minecraft:concrete:9>,
        "powder" : <minecraft:concrete_powder:9>
    },
    "Purple" : {
        "solid" : <minecraft:concrete:10>,
        "powder" : <minecraft:concrete_powder:10>
    },
    "Blue" : {
        "solid" : <minecraft:concrete:11>,
        "powder" : <minecraft:concrete_powder:11>
    },
    "Brown" : {
        "solid" : <minecraft:concrete:12>,
        "powder" : <minecraft:concrete_powder:12>
    },
    "Green" : {
        "solid" : <minecraft:concrete:13>,
        "powder" : <minecraft:concrete_powder:13>
    },
    "Red" : {
        "solid" : <minecraft:concrete:14>,
        "powder" : <minecraft:concrete_powder:14>
    },
    "Black" : {
        "solid" : <minecraft:concrete:15>,
        "powder" : <minecraft:concrete_powder:15>
    },
};

recipes.remove(<immersiveengineering:stone_decoration:5>);
Casting.addBasinRecipe(<immersiveengineering:stone_decoration:5>, <earthworks:block_concrete>, <liquid:concrete>, 250, true, 100);
Crucible.addRecipe(<liquid:concrete> * 250, <immersiveengineering:stone_decoration:5>, 25000);

recipes.remove(<immersiveengineering:bullet>);
recipes.remove(<immersiveengineering:bullet:1>);
JEI.addItem(<immersiveengineering:bullet:1>);
recipes.addShapeless(<immersiveengineering:bullet:1>,[<immersiveengineering:bullet>,<minecraft:paper>,<ore:dyeRed>]);

for dye, concrete in mapConcrete {
    var oreDye as IIngredient = getOreDict("dye",dye);
    var solid as IItemStack = mapConcrete[dye]["solid"];
    var powder as IItemStack = mapConcrete[dye]["powder"];

    recipes.remove(powder);
    Casting.addBasinRecipe(solid, oreDye, <liquid:concrete>, 250, true, 100);
    BottlingMachine.addRecipe(solid, powder, <liquid:water> * 500);
}

Mixer.removeRecipe(<liquid:concrete>);
Mixer.addRecipe(<liquid:concrete> * 100,<liquid:water> * 1000,[
    <thermalfoundation:material:864>,
    <earthworks:item_slaked_lime>,
    <ic2:itemmisc:8>,
    <earthworks:item_sand>,
    <contenttweaker:gravel_dust>,
    <earthworks:item_mud>,
], 1024);
Mixer.addRecipe(<liquid:concrete> * 1000,<liquid:sodium_hydroxide> * 500,[
    <thermalfoundation:material:864>,
    <earthworks:item_slaked_lime>,
    <ic2:itemmisc:8>,
    <earthworks:item_sand>,
    <contenttweaker:gravel_dust>,
    <earthworks:item_mud>,
], 1024);
Mixer.addRecipe(<liquid:concrete> * 2000,<liquid:sodium_hydroxide> * 500,[
    <thermalfoundation:material:865>,
    <earthworks:item_slaked_lime>,
    <ic2:itemmisc:8>,
    <earthworks:item_sand>,
    <contenttweaker:gravel_dust>,
    <earthworks:item_mud>,
], 1024);
# I hate CraftTweaker and Thermal Expansion for this stupid way to add a simple recipe for all kinds of planks to process them into Treated Wooden Planks
recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood");
Casting.addBasinRecipe(<immersiveengineering:treated_wood>, <ore:plankWood>, <liquid:creosote>, 250, true, 100);
for i in 0 .. 6 {
	var plank as IItemStack = <minecraft:planks>.definition.makeStack(i);
    var fire_plank as IItemStack = <forestry:planks.vanilla.fireproof.0>.definition.makeStack(i);
    var vert_plank as IItemStack = <earthworks:block_planks_vert>.definition.makeStack(i);
    BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, plank, <liquid:creosote> * 200);
    BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, fire_plank, <liquid:creosote> * 200);
    BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, vert_plank, <liquid:creosote> * 200);
    Transposer.addFillRecipe(<immersiveengineering:treated_wood>, plank, <liquid:creosote> * 100, 2000);
    Transposer.addFillRecipe(<immersiveengineering:treated_wood>, fire_plank, <liquid:creosote> * 100, 2000);
    Transposer.addFillRecipe(<immersiveengineering:treated_wood>, vert_plank, <liquid:creosote> * 100, 2000);
}
for i in 0 .. 16 {
	var plank as IItemStack = <forestry:planks.0>.definition.makeStack(i);
    var fire_plank as IItemStack = <forestry:planks.fireproof.0>.definition.makeStack(i);
    BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, plank, <liquid:creosote> * 200);
    BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, fire_plank, <liquid:creosote> * 200);
    Transposer.addFillRecipe(<immersiveengineering:treated_wood>, plank, <liquid:creosote> * 100, 2000);
    Transposer.addFillRecipe(<immersiveengineering:treated_wood>, fire_plank, <liquid:creosote> * 100, 2000);
}
for i in 0 .. 13 {
	var plank as IItemStack = <forestry:planks.1>.definition.makeStack(i);
    var fire_plank as IItemStack = <forestry:planks.fireproof.1>.definition.makeStack(i);
    BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, plank, <liquid:creosote> * 200);
    BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, fire_plank, <liquid:creosote> * 200);
    Transposer.addFillRecipe(<immersiveengineering:treated_wood>, plank, <liquid:creosote> * 100, 2000);
    Transposer.addFillRecipe(<immersiveengineering:treated_wood>, fire_plank, <liquid:creosote> * 100, 2000);
}

BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, <abyssalcraft:dltplank:0>, <liquid:creosote> * 200);
Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <abyssalcraft:dltplank:0>, <liquid:creosote> * 100, 2000);

BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, <abyssalcraft:dreadplanks:0>, <liquid:creosote> * 200);
Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <abyssalcraft:dreadplanks:0>, <liquid:creosote> * 100, 2000);

BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, <bloodarsenal:blood_infused_wooden_planks:0>, <liquid:creosote> * 200);
Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <bloodarsenal:blood_infused_wooden_planks:0>, <liquid:creosote> * 100, 2000);

BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, <evilcraft:undead_plank:0>, <liquid:creosote> * 200);
Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <evilcraft:undead_plank:0>, <liquid:creosote> * 100, 2000);

BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, <extrautils2:ironwood_planks:0>, <liquid:creosote> * 200);
Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <extrautils2:ironwood_planks:0>, <liquid:creosote> * 100, 2000);

BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, <extrautils2:ironwood_planks:1>, <liquid:creosote> * 200);
Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <extrautils2:ironwood_planks:1>, <liquid:creosote> * 100, 2000);

BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, <integrateddynamics:menril_planks:0>, <liquid:creosote> * 200);
Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <integrateddynamics:menril_planks:0>, <liquid:creosote> * 100, 2000);

BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, <randomthings:spectreplank:0>, <liquid:creosote> * 200);
Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <randomthings:spectreplank:0>, <liquid:creosote> * 100, 2000);

recipes.remove(<immersiveengineering:wooden_decoration:1>);
Casting.addBasinRecipe(<immersiveengineering:wooden_decoration:1>, <ic2:blockscaffold>, <liquid:creosote>, 500, true, 100);
BottlingMachine.addRecipe(<immersiveengineering:wooden_decoration:1>, <ic2:blockscaffold>, <liquid:creosote> * 500);
Transposer.addFillRecipe(<immersiveengineering:wooden_decoration:1>, <ic2:blockscaffold>, <liquid:creosote> * 500, 2000);

recipes.remove(<immersiveengineering:material:8>);
Blueprint.removeRecipe(<immersiveengineering:material:8>);
Blueprint.addRecipe("components", <immersiveengineering:material:8>, [
    <ore:stickIron> * 4,
    <ore:plateCopper> * 2,
    <ore:gearLead> * 1
]);

recipes.remove(<immersiveengineering:material:9>);
Blueprint.removeRecipe(<immersiveengineering:material:9>);
Blueprint.addRecipe("components", <immersiveengineering:material:9>, [
    <ore:stickSteel> * 4,
    <ore:plateBronze> * 2,
    <ore:gearElectrum> * 1
]);

Blueprint.removeRecipe(<immersiveengineering:material:27>);
Blueprint.addRecipe("components", <immersiveengineering:material:27>, [
    <immersiveengineering:stone_decoration:8> * 1,
    <ore:plateAluminum> * 1,
    <appliedenergistics2:light_detector:0> * 1,
    <immersiveengineering:material:26> * 1,
    <embers:shard_ember:0> * 1,
    <ic2:itemcable:0> * 4
]);

recipes.remove(<immersiveengineering:material:11>);
Blueprint.addRecipe("components", <immersiveengineering:material:11>, [
    <immersiveengineering:material:0> * 6,
    <immersiveengineering:treated_wood:0> * 3,
    <bibliocraft:framingsheet:0> * 2,
    <minecraft:iron_nugget:0> * 6,
    <bibliocraft:framingboard:0> * 4
]);

recipes.remove(<immersiveengineering:material:10>);
Blueprint.addRecipe("components", <immersiveengineering:material:10>, [
    <immersiveengineering:material:0> * 4,
    <immersiveengineering:treated_wood:0> * 2,
    <bibliocraft:framingsheet:0> * 2,
    <ore:nuggetSteel> * 6,
    <bibliocraft:framingboard:0> * 2
]);

recipes.remove(<immersiveengineering:drillhead:1>);
Blueprint.addRecipe("components", <immersiveengineering:drillhead:1>, [
    <ore:blockIron> * 2,
    <ore:ingotRefinedIron> * 8
]);

recipes.remove(<immersiveengineering:drillhead:0>);
Blueprint.addRecipe("components", <immersiveengineering:drillhead:0>, [
    <ore:blockSteel> * 2,
    <ore:ingotDarkSteel> * 8
]);

recipes.remove(<immersiveengineering:material:12>);
Blueprint.addRecipe("components", <immersiveengineering:material:12>, [
    <immersiveengineering:material:5> * 6,
    <bibliocraft:framingboard:0> * 6,
    <ore:nuggetSteel> * 3
]);

recipes.remove(<immersiveengineering:metal_device1:1>);
Blueprint.addRecipe("machinery", <immersiveengineering:metal_device1:1>, [
    <embers:blasting_core:0> * 1,
    <contenttweaker:heating_coil:0> * 1,
    <immersiveengineering:metal_decoration0:0> * 1,
    <immersiveengineering:sheetmetal:9> * 2,
]);

recipes.remove(<immersiveengineering:stone_decoration:8>);
Casting.addBasinRecipe(<immersiveengineering:stone_decoration:8>, <ore:blockGlassGreen>, <liquid:iron>, 288, true, 100);
BottlingMachine.addRecipe(<immersiveengineering:stone_decoration:8>, <ore:blockGlassGreen>, <liquid:iron> * 288);
Transposer.addFillRecipe(<immersiveengineering:stone_decoration:8>, <minecraft:stained_glass:13>, <liquid:iron> * 144, 2000);

BlastFurnace.removeFuel(<thermalfoundation:storage_resource:1>);
BlastFurnace.removeFuel(<thermalfoundation:material:802>);
BlastFurnace.removeFuel(<minecraft:coal:1>);
BlastFurnace.removeFuel(<thermalfoundation:storage_resource>);

BlastFurnace.addFuel(<embers:dust_ember>, 2400);
BlastFurnace.addFuel(<contenttweaker:firecoal>, 24000);

BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
BlastFurnace.removeRecipe(<thermalfoundation:material:160>);
BlastFurnace.addRecipe(<thermalfoundation:material:160>, <contenttweaker:reinforcediron_ingot>, 1200, <thermalfoundation:material:864>);

BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
BlastFurnace.removeRecipe(<thermalfoundation:storage_alloy>);
BlastFurnace.addRecipe(<thermalfoundation:storage_alloy>, <contenttweaker:reinforced_iron_block>, 12000, <thermalfoundation:material:864> * 9);

furnace.remove(<immersiveengineering:material:19>);
AtomicReconstructor.addRecipe(<immersiveengineering:material:19>, <immersiveengineering:material:18>, 5000);

var electrode as IItemStack = <immersiveengineering:graphite_electrode>;
Empowerer.addRecipe(electrode.withTag({Unbreakable:1}), <ic2:itemmisc:258>, electrode, electrode, electrode, electrode, 200000, 400, [0.0, 0.0, 0.0]);

recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 4, [
    [<immersiveengineering:sheetmetal:9>,<contenttweaker:redstone_ingot>,<immersiveengineering:sheetmetal:9>],
    [<contenttweaker:redstone_ingot>,<ore:plateCopper>,<contenttweaker:redstone_ingot>],
    [<immersiveengineering:sheetmetal:9>,<contenttweaker:redstone_ingot>,<immersiveengineering:sheetmetal:9>]
]);

recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 4, [
    [<immersiveengineering:sheetmetal:9>,<immersiveengineering:material:8>,<immersiveengineering:sheetmetal:9>],
    [<immersiveengineering:material:8>,<ore:plateCopper>,<immersiveengineering:material:8>],
    [<immersiveengineering:sheetmetal:9>,<immersiveengineering:material:8>,<immersiveengineering:sheetmetal:9>]
]);

recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped(<immersiveengineering:metal_decoration0:5> * 4, [
    [<immersiveengineering:sheetmetal:8>,<immersiveengineering:material:9>,<immersiveengineering:sheetmetal:8>],
    [<immersiveengineering:material:9>,<ore:plateElectrum>,<immersiveengineering:material:9>],
    [<immersiveengineering:sheetmetal:8>,<immersiveengineering:material:9>,<immersiveengineering:sheetmetal:8>]
]);

recipes.remove(<immersiveengineering:metal_decoration0:7>);
recipes.addShaped(<immersiveengineering:metal_decoration0:7> * 4, [
    [<immersiveengineering:sheetmetal:8>,<contenttweaker:copper_coil>,<immersiveengineering:sheetmetal:8>],
    [<contenttweaker:copper_coil>,<ore:plateConstantan>,<contenttweaker:copper_coil>],
    [<immersiveengineering:sheetmetal:8>,<contenttweaker:copper_coil>,<immersiveengineering:sheetmetal:8>]
]);

recipes.remove(<immersiveengineering:metal_decoration0:6>);
recipes.addShaped(<immersiveengineering:metal_decoration0:6> * 4, [
    [<immersiveengineering:sheetmetal:8>,<contenttweaker:electric_motor>,<immersiveengineering:sheetmetal:8>],
    [<contenttweaker:electric_motor>,<immersiveengineering:metal_device1:2>,<contenttweaker:electric_motor>],
    [<immersiveengineering:sheetmetal:8>,<contenttweaker:electric_motor>,<immersiveengineering:sheetmetal:8>]
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <immersiveengineering:stone_decoration:10> : [
        [
            [<minecraft:brick>,<tconstruct:materials:2>,<minecraft:brick>],
            [<tconstruct:materials:2>,<embers:block_caminite_brick>,<tconstruct:materials:2>],
            [<minecraft:brick>,<tconstruct:materials:2>,<minecraft:brick>]
        ],
        [
            [<minecraft:brick>,<tconstruct:materials:2>,<minecraft:brick>],
            [<tconstruct:materials:2>,<tconstruct:deco_ground>,<tconstruct:materials:2>],
            [<minecraft:brick>,<tconstruct:materials:2>,<minecraft:brick>]
        ]
    ],
    <immersiveengineering:stone_decoration> : [
        [
            [<earthworks:item_lime_plaster>,<earthworks:item_adobe>,<earthworks:item_lime_plaster>],
            [<tconstruct:materials:1>,<forestry:ash_brick>,<tconstruct:materials:1>],
            [<earthworks:item_lime_plaster>,<earthworks:item_adobe>,<earthworks:item_lime_plaster>]
        ],
        [
            [<earthworks:item_lime_plaster>,<earthworks:item_adobe>,<earthworks:item_lime_plaster>],
            [<tconstruct:materials:2>,<forestry:ash_brick>,<tconstruct:materials:2>],
            [<earthworks:item_lime_plaster>,<earthworks:item_adobe>,<earthworks:item_lime_plaster>]
        ]
    ],
    <immersiveengineering:stone_decoration:1> : [
        [
            [<enderio:item_material:72>,<contenttweaker:magma_soaked_cobblestone>,<enderio:item_material:72>],
            [<contenttweaker:magma_soaked_cobblestone>,<tconstruct:firewood:1>,<contenttweaker:magma_soaked_cobblestone>],
            [<enderio:item_material:72>,<contenttweaker:magma_soaked_cobblestone>,<enderio:item_material:72>]
        ]
    ],
    <immersiveengineering:tool> : [
        [
            [null,<embers:archaic_brick>,<immersiveengineering:material:4>],
            [null,<ore:stickWood>,<embers:archaic_brick>],
            [<ore:stickWood>,null,null]
        ]
    ],
    <immersiveengineering:wooden_device1> : [
        [
            [<immersiveengineering:material:10>,<immersiveengineering:material:10>,<immersiveengineering:material:10>],
            [<immersiveengineering:material:10>,<tconstruct:tough_tool_rod>.withTag({Material: "steel"}),<immersiveengineering:material:10>],
            [<immersiveengineering:material:10>,<immersiveengineering:material:10>,<immersiveengineering:material:10>]
        ]
    ],
    <immersiveengineering:material:5> : [
        [
            [<immersiveengineering:material:4>,<immersiveengineering:material:4>,<immersiveengineering:material:4>],
            [<immersiveengineering:material:4>,<ore:stickTreatedWood>,<immersiveengineering:material:4>],
            [<immersiveengineering:material:4>,<immersiveengineering:material:4>,<immersiveengineering:material:4>]
        ]
    ],
    <immersiveengineering:wooden_device1:1> : [
        [
            [<immersiveengineering:material:11>,<immersiveengineering:material:11>,<immersiveengineering:material:11>],
            [<immersiveengineering:material:11>,<tconstruct:tough_tool_rod>.withTag({Material: "iron"}),<immersiveengineering:material:11>],
            [<immersiveengineering:material:11>,<immersiveengineering:material:11>,<immersiveengineering:material:11>]
        ]
    ],
    <immersiveengineering:metal_decoration0> : [
        [
            [<immersiveengineering:wirecoil>,<immersiveengineering:wirecoil>,<immersiveengineering:wirecoil>],
            [<immersiveengineering:wirecoil>,<ic2:blockfenceiron>,<immersiveengineering:wirecoil>],
            [<immersiveengineering:wirecoil>,<immersiveengineering:wirecoil>,<immersiveengineering:wirecoil>]
        ]
    ],
    <immersiveengineering:metal_decoration0:1> : [
        [
            [<immersiveengineering:wirecoil:1>,<immersiveengineering:wirecoil:1>,<immersiveengineering:wirecoil:1>],
            [<immersiveengineering:wirecoil:1>,<ic2:blockfenceiron>,<immersiveengineering:wirecoil:1>],
            [<immersiveengineering:wirecoil:1>,<immersiveengineering:wirecoil:1>,<immersiveengineering:wirecoil:1>]
        ]
    ],
    <immersiveengineering:metal_decoration0:2> : [
        [
            [<immersiveengineering:wirecoil:2>,<immersiveengineering:wirecoil:2>,<immersiveengineering:wirecoil:2>],
            [<immersiveengineering:wirecoil:2>,<ic2:blockfenceiron>,<immersiveengineering:wirecoil:2>],
            [<immersiveengineering:wirecoil:2>,<immersiveengineering:wirecoil:2>,<immersiveengineering:wirecoil:2>]
        ]
    ],
    <immersiveengineering:metal_device1:2> : [
        [
            [<ore:plateIron>,<cd4017be_lib:m:400>,<ore:plateIron>],
            [<ore:plateIron>,<immersiveengineering:metal_decoration0>,<contenttweaker:electric_motor>],
            [<ore:plateIron>,<embers:mech_core>,<ore:plateIron>]
        ]
    ],
    <immersiveengineering:tool:1> : [
        [
            [<ore:stickTreatedWood>,<ore:ingotSteel>],
            [null,<ore:stickTreatedWood>]
        ]
    ],
    <immersiveengineering:wirecoil> * 4	:[
    	[
            [null,<ore:wireCopper>,null],
            [<ore:wireCopper>,<ore:stickTreatedWood>,<ore:wireCopper>],
            [null,<ore:wireCopper>,null]
        ]
    ],
    <immersiveengineering:wirecoil:1> * 4	:[
    	[
            [null,<ore:wireElectrum>,null],
            [<ore:wireElectrum>,<ore:stickTreatedWood>,<ore:wireElectrum>],
            [null,<ore:wireElectrum>,null]
        ]
    ],
    <immersiveengineering:wirecoil:2> * 4	:[
    	[
            [null,<ore:wireAluminum>,null],
            [<ore:wireSteel>,<ore:stickTreatedWood>,<ore:wireSteel>],
            [null,<ore:wireAluminum>,null]
        ]
    ],
    <immersiveengineering:wirecoil:3> * 4	:[
    	[
            [null,<ore:fiberHemp>,null],
            [<ore:fiberHemp>,<ore:stickTreatedWood>,<ore:fiberHemp>],
            [null,<ore:fiberHemp>,null]
        ]
    ],
    <immersiveengineering:wirecoil:4> * 4	:[
    	[
            [null,<ore:wireSteel>,null],
            [<ore:wireSteel>,<ore:stickTreatedWood>,<ore:wireSteel>],
            [null,<ore:wireSteel>,null]
        ]
    ],
    <immersiveengineering:wirecoil:5> * 4 : [
        [
            [null,<ore:wireRedAlloy>,null],
            [<ore:wireRedAlloy>,<ore:stickTreatedWood>,<ore:wireRedAlloy>],
            [null,<ore:wireRedAlloy>,null]
        ]
    ],
    <immersiveengineering:metal_device1:13>	: [
    	[
            [<actuallyadditions:block_greenhouse_glass>,<immersiveengineering:metal_device1:4>,<actuallyadditions:block_greenhouse_glass>],
            [<actuallyadditions:block_greenhouse_glass>,<randomthings:fertilizeddirt>,<actuallyadditions:block_greenhouse_glass>],
            [<ore:plankTreatedWood>,<immersiveengineering:metal_decoration0:5>,<ore:plankTreatedWood>]
        ]
    ],
    <immersiveengineering:wooden_device0> : [
        [
            [<ore:plankTreatedWood>,<ore:plankTreatedWood>,<ore:plankTreatedWood>],
            [<ore:plankTreatedWood>,<extrautils2:minichest>,<ore:plankTreatedWood>],
            [<ore:plankTreatedWood>,<ore:plankTreatedWood>,<ore:plankTreatedWood>]
        ]
    ],
    <immersiveengineering:drill> : [
        [
            [null,null,<immersiveengineering:material:13>],
            [null,<actuallyadditions:item_misc:16>,<immersiveengineering:material:13>],
            [<immersiveengineering:material:9>,null,null]
        ]
    ],
    <immersiveengineering:metal_device1:7> : [
        [
            [<immersiveengineering:metal_decoration1:1>,<immersiveengineering:material:9>,<immersiveengineering:metal_decoration1:1>],
            [<immersiveengineering:metal_decoration1:1>,<actuallyadditions:item_misc:16>,<immersiveengineering:metal_decoration1:1>],
            [<immersiveengineering:metal_decoration0:4>,<immersiveengineering:drillhead>,<immersiveengineering:metal_decoration0:4>]
        ]
    ],
    <immersiveengineering:wooden_device0:2> : [
        [
            [<ore:slabTreatedWood>,<ore:slabTreatedWood>,<ore:slabTreatedWood>],
            [<forestry:worktable>,null,<immersiveengineering:wooden_decoration>]
        ]
    ],
    <immersiveengineering:toolupgrade> : [
        [
            [<ic2:itemmisc:100>,<ore:dyeBlue>,null],
            [<ore:dyeBlue>,<ic2:itemmisc:100>,<ore:dyeBlue>],
            [null,<ore:dyeBlue>,<immersiveengineering:material:8>]
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

Extractor.addRecipe(<immersiveengineering:material:20> * 4, <ore:plateCopper>);
Extractor.addRecipe(<immersiveengineering:material:21> * 4, <ore:plateElectrum>);
Extractor.addRecipe(<immersiveengineering:material:22> * 4, <ore:plateAluminum>);
Extractor.addRecipe(<immersiveengineering:material:23> * 4, <ore:plateSteel>);
Extractor.addRecipe(findFirstItemFromMod("contenttweaker","wire","redAlloy") * 4, <ore:plateRedAlloy>);

var mapMold as IItemStack[IItemStack] = {
    <contenttweaker:mold_ingot> : <botania:craftpattern>,
    <immersiveengineering:mold> : <botania:craftpattern:7>,
    <immersiveengineering:mold:1> : <botania:craftpattern:8>,
    <immersiveengineering:mold:2> : <botania:craftpattern:2>,
    <immersiveengineering:mold:3> : <botania:craftpattern:3>,
    <immersiveengineering:mold:4> : <botania:craftpattern:6>,
    <immersiveengineering:mold:5> : <botania:craftpattern:1>,
    <immersiveengineering:mold:6> : <botania:manaresource:11>,
    <immersiveengineering:mold:7> : <botania:craftpattern:5>,
};

for mold, input in mapMold {
    Blueprint.removeRecipe(mold);
    Blueprint.addRecipe("molds",mold,[
        <ore:plateSteel> * 6
    ]);
    Casting.addTableRecipe(mold, input, <liquid:steel>, 144*6, true, 100);
}
