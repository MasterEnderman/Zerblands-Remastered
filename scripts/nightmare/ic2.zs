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

import mods.enderio.AlloySmelter;
import mods.forestry.Carpenter;
import mods.forestry.ThermionicFabricator;
import mods.ic2.Compressor;
import mods.ic2.Extractor;
import mods.ic2.Macerator;
import mods.immersiveengineering.AlloySmelter as Kiln;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.tconstruct.Casting;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;

import scripts.functions.calc_basic;
import scripts.functions.calc_scientific;
import scripts.functions.calc_flawless;

import scripts.mod_functions.betterExplosion;

recipes.remove(<ic2:itemmisc:53>);
recipes.remove(<ic2:itemmisc:252>);
recipes.remove(<ic2:itemmisc:250>);
recipes.remove(<ic2:blockminingpipe>);
<ore:blockCharcoal>.add(<ic2:blockmetal:12>);
<ore:dustWheat>.add(<ic2:itemmisc:156>);

recipes.remove(<ic2:blockmachinelv2:6>);
calc_flawless(<ic2:blockmachinelv2:6>,<minecraft:crafting_table>,<ic2:blockmachinelv>,<ic2:itemtoolbox:2>,<ic2:itemmisc:451>);

recipes.remove(<ic2:itemportableteleporter>);
calc_flawless(<ic2:itemportableteleporter>,<ic2:blockmachinehv:2>,<ic2:itemmemorystick>,<ic2:itempesd>,<ic2:itemmisc:258>);

recipes.remove(<ic2:blockgenerator:2>);
calc_basic(<ic2:blockgenerator:2>,<ic2:blockgenerator>,<immersiveengineering:wooden_device1>);

calc_scientific(<ic2:reactorheatpack>*4,<randomthings:lavacharm>,<ic2:itemcellempty>);

Crusher.addRecipe(<ic2:itemmisc:11>, <minecraft:netherrack>, 2048);
Crusher.addRecipe(<ic2:itemmisc:8>*2, <minecraft:clay>, 2048);

Casting.addTableRecipe(<ic2:itemmisc:350>, <ic2:itemharz>, <liquid:biomass>, 250, true, 200);
Transposer.addFillRecipe(<ic2:itemmisc:350>, <ic2:itemharz>,  <liquid:biomass> * 250, 2000);

var mapCableCasting as ILiquidStack[IItemStack] = {
    <ic2:itemcable> : <liquid:copper>,
    <ic2:itemcable:13> : <liquid:bronze>,
    <ic2:itemcable:2> : <liquid:gold>,
    <ic2:itemcable:5> : <liquid:steel>,
    <ic2:itemcable:10> : <liquid:tin>
};

for cable, metal in mapCableCasting {
    recipes.remove(cable);
    Casting.addTableRecipe(<contenttweaker:cast_cable>, cable, <liquid:gold>, 288, true, 100);
	Casting.addTableRecipe(<contenttweaker:cast_cable>, cable, <liquid:brass>, 144, true, 100);
	Casting.addTableRecipe(<contenttweaker:cast_cable>, cable, <liquid:alubrass>, 144, true, 100);
	Casting.addTableRecipe(cable, <contenttweaker:cast_cable>, metal, 72, false, 100);
}

var mapCableCrafting as IIngredient[IItemStack] = {
    <ic2:itemcable> : <ore:ingotCopper>,
    <ic2:itemcable:13> : <ore:ingotBronze>,
    <ic2:itemcable:2> : <ore:ingotGold>,
    <ic2:itemcable:5> : <ore:ingotSteel>,
    <ic2:itemcable:10> : <ore:ingotTin>
};

for cable, ingot in mapCableCrafting {
    recipes.addShapeless(cable, [<appliedenergistics2:nether_quartz_cutting_knife:*>, ingot]);
    recipes.addShapeless(cable, [<appliedenergistics2:certus_quartz_cutting_knife:*>, ingot]);
}

recipes.remove(<ic2:blockmachinelv:15>);
recipes.addShaped(<ic2:blockmachinelv:15>, [
    [<contenttweaker:cutting_head>,<contenttweaker:cutting_head>,<contenttweaker:cutting_head>],
    [<sonarcore:stablestone_normal>,<contenttweaker:heating_coil>,<sonarcore:stablestone_normal>],
    [<sonarcore:stablestone_normal>,<extrautils2:machine>,<sonarcore:stablestone_normal>]
]);

var mapRubber as IItemStack[][] = [
    [<ic2:itemcable>,<ic2:itemcable:1>],
    [<ic2:itemcable:13>,<ic2:itemcable:14>,<ic2:itemcable:15>],
    [<ic2:itemcable:2>,<ic2:itemcable:3>,<ic2:itemcable:4>],
    [<ic2:itemcable:5>,<ic2:itemcable:6>,<ic2:itemcable:7>,<ic2:itemcable:8>]
];

for cable in mapRubber {
    var index as int = 1;
    while index < cable.length {
        recipes.remove(cable[index]);
        InductionSmelter.addRecipe(cable[index], cable[index - 1], <ic2:itemmisc:450>, 2500);
        Kiln.addRecipe(cable[index], cable[index - 1], <ic2:itemmisc:450>, 200);
        index += 1;
    }
}

recipes.remove(<ic2:itembatcrystal>);
Compressor.addRecipe(<ic2:itembatcrystal>, <contenttweaker:energium_dust> * 9);
Macerator.addRecipe(<contenttweaker:energium_dust> * 9, <ic2:itembatcrystal>);

Compressor.addRecipe(<ic2:itemmisc:455>,<buildinggadgets:constructionblock_dense>);
Compressor.addRecipe(<ic2:itemmisc:455>,<buildinggadgets:constructionblockpowder>);

recipes.remove(<ic2:itemscrapbox>);
Compressor.addRecipe(<ic2:itemscrapbox>,<ic2:itemmisc:200> * 9);
Compactor.addPressRecipe(<ic2:itemscrapbox>, <ic2:itemmisc:200> * 9, 2000);
Carpenter.addRecipe(<ic2:itemscrapbox>, [
    [<ic2:itemmisc:200>,<ic2:itemmisc:200>],
    [<ic2:itemmisc:200>,<ic2:itemmisc:200>]
], 5, <liquid:water> * 100, <forestry:carton>);

recipes.remove(<ic2:itemreactorplating:2>);
AlloySmelter.addRecipe(<ic2:itemreactorplating:2>, [<ic2:itemheatvent:1>,<ore:plateTungsten>,<ic2:itemreactorplating:1>], 10000);

recipes.remove(<ic2:itemcable:9>);
ThermionicFabricator.addCast(<ic2:itemcable:9> * 6, [
    [<contenttweaker:energium_dust>,<contenttweaker:energium_dust>,<contenttweaker:energium_dust>],
    [<ore:ingotEnergeticSilver>,<contenttweaker:energy_module>,<ore:ingotEnergeticSilver>],
    [<contenttweaker:energium_dust>,<contenttweaker:energium_dust>,<contenttweaker:energium_dust>]
], <liquid:glass> * 500);

recipes.remove(<ic2:itemmisc:401>);
ThermionicFabricator.addCast(<ic2:itemmisc:401>, [
    [<ic2:itemmisc:451>,<randomthings:biomeradar>,<ic2:itemmisc:451>],
    [<contenttweaker:terrasteelprocessor>,<ic2:itemmisc:452>,<contenttweaker:terrasteelprocessor>],
    [<thermalfoundation:material:1027>,<botania:rune:2>,<thermalfoundation:material:1027>]
], <liquid:glass> * 500);

Compressor.addRecipe(<ic2:itemmisc:9>, findFirstItemFromMod("thermalfoundation","dust","obsidian") * 4);

recipes.remove(<ic2:blockfenceiron>);
recipes.addShaped(<ic2:blockfenceiron> * 3, [
    [<ore:ingotIron>,<ore:stickIron>,<ore:ingotIron>],
    [<ore:ingotIron>,<ore:stickIron>,<ore:ingotIron>]
]);

recipes.remove(<ic2:advcomparator>);
recipes.addShaped(<ic2:advcomparator>, [
    [null,<minecraft:redstone_torch>,null],
    [<minecraft:redstone_torch>,<immersiveengineering:material:27>,<minecraft:redstone_torch>],
    [<contenttweaker:stone_board>,<ore:plateSteel>,<contenttweaker:stone_board>]
]);

recipes.remove(<ic2:ic2upgrades>);
recipes.addShaped(<ic2:ic2upgrades> * 4, [
    [<ic2:itemheatstorage>,<ic2:itemheatstorage>,<ic2:itemheatstorage>],
    [<ic2:itemmisc:259>,<ic2:itemmisc:260>,<ic2:itemmisc:259>]
]);

recipes.remove(<ic2:blockutility:2>);
recipes.addShaped(<ic2:blockutility:2> * 8, [
    [<sonarcore:stablestone_normal>,<sonarcore:stablestone_normal>,<sonarcore:stablestone_normal>],
    [<sonarcore:stablestone_normal>,<ic2:itemmisc:257>,<sonarcore:stablestone_normal>],
    [<sonarcore:stablestone_normal>,<sonarcore:stablestone_normal>,<sonarcore:stablestone_normal>]
]);

recipes.remove(<ic2:blockutility:3>);
recipes.addShaped(<ic2:blockutility:3> * 8, [
    [<sonarcore:stableglass>,<sonarcore:stableglass>,<sonarcore:stableglass>],
    [<sonarcore:stableglass>,<ic2:itemmisc:257>,<sonarcore:stableglass>],
    [<sonarcore:stableglass>,<sonarcore:stableglass>,<sonarcore:stableglass>]
]);

recipes.remove(<ic2:itemcable:16>);
recipes.addShaped(<ic2:itemcable:16> * 4, [
    [<ore:plateStyreneButadieneRubber>,<ore:plateStyreneButadieneRubber>,<ore:plateStyreneButadieneRubber>],
    [<ic2:itemcable:9>,<ic2:itemmisc:264>,<ic2:itemcable:9>],
    [<ore:plateStyreneButadieneRubber>,<ore:plateStyreneButadieneRubber>,<ore:plateStyreneButadieneRubber>]
]);

recipes.remove(<ic2:itemmisc:151>);
recipes.addShapeless(<ic2:itemmisc:151> * 2, [<ic2:itemmisc:200>|<forestry:mulch>,<forestry:fertilizer_bio>]);

recipes.remove(<ic2:itemmisc:157>);
recipes.addShapeless(<ic2:itemmisc:157> * 3, [<botania:overgrowthseed>,<ic2:itemmisc:151>,<forestry:fertilizer_compound>,<botania:fertilizer>,<ic2:itemmisc:150>]);

var plantball as int[IIngredient] = {
    <actuallyadditions:item_food:16> : 1,
    <actuallyadditions:item_misc:13> : 1,
    <actuallyadditions:item_rice_seed> : 1,
    <actuallyadditions:item_canola_seed> : 1,
    <ore:listAllnut> : 2,
    <ore:listAllfruit> : 1,
    <ore:listAllveggie> : 1,
    <ore:listAllseed> : 1,
    <actuallyadditions:item_flax_seed> : 1,
    <actuallyadditions:item_coffee_seed> : 1,
    <actuallyadditions:item_coffee_beans> : 1,
    <immersiveengineering:seed> : 1,
};

for item, amount in plantball {
    recipes.addShaped(<ic2:itemmisc:350> * amount, [
        [item,item,item],
        [item,null,item],
        [item,item,item]
    ]);
}

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <ic2:itemtoolcutter> : [
        [
            [<ore:nuggetSteel>,null,<ore:nuggetSteel>],
            [null,<ore:gearSteel>,null],
            [<ore:stickIron>,null,<ore:stickIron>]
        ]
    ],
    <ic2:itemreactorplating> : [
        [
            [<contenttweaker:heat_conductor>],
            [<ic2:itemmisc:257>],
            [<ore:plateLead>]
        ]
    ],
    <ic2:itemheatswtiches> : [
        [
            [null,<ic2:itemmisc:451>,null],
            [<ore:ingotTin>,<ic2:itemreactorplating:1>,<ore:ingotTin>],
            [null,<ore:ingotTin>,null]
        ]
    ],
    <ic2:itemmisc:451> : [
        [
            [<ic2:itemcable:1>,<ic2:itemcable:1>,<ic2:itemcable:1>],
            [<contenttweaker:enrichedgold>,<contenttweaker:module_speed>,<contenttweaker:enrichedgold>],
            [<ic2:itemcable:1>,<ic2:itemcable:1>,<ic2:itemcable:1>]
        ]
    ],
    <ic2:blockmachinelv> : [
        [
            [<enderio:item_material:2>,<opencomputers:material:9>,<enderio:item_material:2>],
            [<ore:plateIridium>,<ic2:blockelectric>,<ore:plateIridium>],
            [<enderio:item_material:2>,<rftools:machine_base>,<enderio:item_material:2>]
        ]
    ],
    <ic2:itemtreetap> : [
        [
            [null,<forestry:oak_stick>,null],
            [<ore:plankTreatedWood>,<forestry:impregnated_casing>,<ore:plankTreatedWood>],
            [<tconstruct:wooden_hopper>,null,null]
        ]
    ],
    <ic2:blockmachinelv:1> : [
        [
            [<ic2:itemmisc:53>,<ic2:itemmisc:53>,<ic2:itemmisc:53>],
            [<ic2:itemmisc:53>,<minecraft:furnace>,<ic2:itemmisc:53>],
            [<ic2:itemmisc:53>,<ic2:itemmisc:53>,<ic2:itemmisc:53>]
        ]
    ],
    <ic2:blockgenerator> : [
        [
            [null,<ic2:itembatre>,null],
            [<contenttweaker:heat_conductor>,<ic2:blockmachinelv>,<contenttweaker:heat_conductor>],
            [null,<ic2:blockmachinelv:1>,null]
        ]
    ],
    <ic2:itemheatstorage:1> : [
        [
            [<ore:plateTin>,<ic2:reactorventspread>,<ore:plateTin>],
            [<ic2:itemheatstorage>,<ic2:itemheatstorage>,<ic2:itemheatstorage>],
            [<ore:plateTin>,<ic2:reactorventspread>,<ore:plateTin>]
        ]
    ],
    <ic2:itemheatstorage:2> : [
        [
            [<ore:plateTin>,<ic2:itemheatstorage:1>,<ore:plateTin>],
            [<ic2:reactorventspread>,<ic2:itemmisc:259>,<ic2:reactorventspread>],
            [<ore:plateTin>,<ic2:itemheatstorage:1>,<ore:plateTin>]
        ]
    ],
    <ic2:blockmachinemv> : [
        [
            [<ic2:itemmisc:263>,<ic2:itemmisc:256>,<ic2:itemmisc:263>],
            [<ic2:itemreactorplating>,<ic2:blockelectric:1>,<ic2:itemreactorplating>],
            [<ic2:itemmisc:263>,<ic2:itemmisc:256>,<ic2:itemmisc:263>]
        ]
    ],
    <ic2:blockelectric:2> : [
        [
            [<ic2:itembatlamacrystal>,<ic2:itemmisc:452>,<ic2:itembatlamacrystal>],
            [<ic2:itembatlamacrystal>,<ic2:blockmachinemv>,<ic2:itembatlamacrystal>],
            [<ic2:itembatlamacrystal>,<rftoolspower:cell2>,<ic2:itembatlamacrystal>]
        ]
    ],
    <ic2:itemreactorplating:1> : [
        [
            [<ic2:itemmisc:259>],
            [<ic2:itemreactorplating>],
            [<ic2:itemmisc:259>]
        ]
    ],
    <ic2:itemheatvent> : [
        [
            [<ore:ingotConstructionAlloy>,<randomthings:ingredient:8>,<ore:ingotConstructionAlloy>],
            [<randomthings:ingredient:8>,<contenttweaker:iron_rotor>,<randomthings:ingredient:8>],
            [<ore:ingotConstructionAlloy>,<randomthings:ingredient:8>,<ore:ingotConstructionAlloy>]
        ],
        [
            [<ic2:itemheatvent:20>]
        ],
        [
            [<ic2:itemheatvent:10>]
        ]
    ],
    <ic2:itembarrel> : [
        [
            [<ic2:itembarrel>]
        ],
        [
            [null,<tconstruct:pattern>,null],
            [<harvestcraft:beeswaxitem>|<forestry:beeswax>,<ore:logWood>,<harvestcraft:beeswaxitem>|<forestry:beeswax>],
            [null,<tconstruct:pattern>,null]
        ],
        [
            [null,<tconstruct:pattern>,null],
            [<embers:sealed_planks>,<embers:sealed_planks>,<embers:sealed_planks>],
            [null,<tconstruct:pattern>,null]
        ]
    ],
    <ic2:blockmachinehv:2> : [
        [
            [<ic2:itemmisc:452>,<enderio:block_tele_pad>,<ic2:itemmisc:452>],
            [<enderio:item_material:16>,<ic2:blockmachinemv>,<enderio:item_material:16>],
            [<ic2:itemmisc:452>,<contenttweaker:warp_module>,<ic2:itemmisc:452>]
        ]
    ],
    <ic2:itemmisc:264> : [
        [
            [<contenttweaker:hdpe_sheet>,<ic2:itemmisc:263>,<contenttweaker:hdpe_sheet>],
            [<ic2:itemmisc:256>,<ic2:itemmisc:108>,<ic2:itemmisc:256>],
            [<contenttweaker:hdpe_sheet>,<ic2:itemmisc:263>,<contenttweaker:hdpe_sheet>]
        ]
    ],
    <ic2:blockelectric:1> : [
        [
            [<ic2:itembatcrystal>,<ic2:itemmisc:451>,<ic2:itembatcrystal>],
            [<ic2:itembatcrystal>,<ic2:blockmachinelv>,<ic2:itembatcrystal>],
            [<ic2:itembatcrystal>,<rftoolspower:cell1>,<ic2:itembatcrystal>]
        ]
    ],
    <ic2:blockelectric> : [
        [
            [<ore:plankTreatedWood>,<ic2:itemcable:15>,<ore:plankTreatedWood>],
            [<ic2:itembatre>,<ic2:itembatre>,<ic2:itembatre>],
            [<ore:plankTreatedWood>,<forestry:impregnated_casing>,<ore:plankTreatedWood>]
        ]
    ],
    <ic2:blockelectric:5> : [
        [
            [<ic2:itempesd>,<contenttweaker:energy_flow_circuit>,<ic2:itempesd>],
            [<ic2:itempesd>,<contenttweaker:block_machine_hv>,<ic2:itempesd>],
            [<ic2:itempesd>,<rftoolspower:cell3>,<ic2:itempesd>]
        ]
    ],
    <ic2:blockscaffold> : [
        [
            [<bibliocraft:framingsheet>,<bibliocraft:framingsheet>,<bibliocraft:framingsheet>],
            [null,<bibliocraft:framingboard>,null],
            [<bibliocraft:framingboard>,null,<bibliocraft:framingboard>]
        ]
    ],
    <ic2:itemdrills> : [
        [
            [null,null,<immersiveengineering:drillhead>],
            [null,<immersiveengineering:drill>,null],
            [<ic2:itembatre>,<ic2:itemmisc:451>,null]
        ]
    ],
    <ic2:itemmisc:452> : [
        [
            [<bloodmagic:component:28>,<contenttweaker:elementiumprocessor>,<bloodmagic:component:28>],
            [<opencomputers:material:9>,<ic2:itemmisc:451>,<opencomputers:material:9>],
            [<bloodmagic:component:29>,<forestry:chipsets:3>,<bloodmagic:component:29>]
        ]
    ],
    <ic2:blockmachinehv:5> : [
        [
            [<ic2:blockpersonal:8>,<ic2:itemreflectors:2>,<ic2:blockpersonal:8>],
            [<ic2:itemreflectors:2>,<ic2:blockmachinemv:1>,<ic2:itemreflectors:2>],
            [<ic2:blockpersonal:8>,<contenttweaker:block_machine_hv>,<ic2:blockpersonal:8>]
        ]
    ],
    <ic2:blockmachinehv:4> : [
        [
            [<ic2:itemmisc:452>,<woot:anvil>,<ic2:itemmisc:452>],
            [<contenttweaker:data_orb>,<minecraft:enchanting_table>,<contenttweaker:data_orb>],
            [<extrautils2:decorativesolidwood:1>,<contenttweaker:block_machine_hv>,<extrautils2:decorativesolidwood:1>]
        ]
    ],
    <ic2:blockmachinehv:3> : [
        [
            [<ic2:itemreactorplating>,<ic2:itemreactorplating>,<ic2:itemreactorplating>],
            [<ic2:blockmachinelv:4>,<ic2:blockmachinemv:5>,<contenttweaker:energy_flow_circuit>],
            [<ic2:itemreactorplating>,<contenttweaker:block_machine_hv>,<ic2:itemreactorplating>]
        ]
    ],
    <ic2:blockmachinehv:1> : [
        [
            [<quantumflux:craftingpiece:4>,<ic2:itembatlamacrystal>,<quantumflux:craftingpiece:4>],
            [<contenttweaker:data_storage_circuit>,<abyssalcraft:gatekeeperessence>,<contenttweaker:data_storage_circuit>],
            [<appliedenergistics2:spatial_pylon>,<contenttweaker:block_machine_hv>,<appliedenergistics2:spatial_pylon>]
        ]
    ],
    <ic2:blockmachinehv> : [
        [
            [<ore:plateTungsten>,<ic2:itemmisc:401>,<ore:plateTungsten>],
            [<ore:gearLumium>,<extrautils2:terraformer>,<ore:gearLumium>],
            [<ore:plateTungsten>,<contenttweaker:block_machine_hv>,<ore:plateTungsten>]
        ]
    ],
    <ic2:reactorventspread> : [
        [
            [<ore:ingotConstructionAlloy>,<contenttweaker:heat_conductor>,<ore:ingotConstructionAlloy>],
            [<contenttweaker:heat_conductor>,<ic2:itemheatvent>,<contenttweaker:heat_conductor>],
            [<ore:ingotConstructionAlloy>,<contenttweaker:heat_conductor>,<ore:ingotConstructionAlloy>]
        ]
    ],
    <ic2:itemmemorystick> : [
        [
            [<ore:dustRedstone>,<ic2:itemcable:4>,<ore:dustRedstone>],
            [<ic2:itemmisc:452>,<enderutilities:enderpart:50>,<ic2:itemmisc:452>],
            [<ic2:itemmisc:256>,<ic2:itemmisc:260>,<ic2:itemmisc:256>]
        ]
    ],
    <ic2:blockgenerator:3> : [
        [
            [<enderio:item_material:3>],
            [<ic2:blockgenerator>],
            [<ic2:itemmisc:451>]
        ]
    ],
    <ic2:itemfreq> : [
        [
            [<xnet:antenna>],
            [<ic2:itemmisc:451>],
            [<thermalfoundation:material:640>]
        ]
    ],
    <ic2:itempesd> : [
        [
            [<ic2:itemmisc:256>,<contenttweaker:energy_flow_circuit>,<ic2:itemmisc:256>],
            [<contenttweaker:lapotronic_energy_orb>,<ic2:itemmisc:264>,<contenttweaker:lapotronic_energy_orb>],
            [<ic2:itemmisc:256>,<contenttweaker:energy_flow_circuit>,<ic2:itemmisc:256>]
        ]
    ],
    <ic2:itemtoolbox> : [
        [
            [<ore:plateSteel>,<metalchests:metal_chest:3>,<ore:plateSteel>],
            [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]
        ]
    ],
    <ic2:blockgenerator:5> : [
        [
            [null,<ic2:itemmisc:452>,null],
            [<ic2:blockchambers>,<ic2:blockchambers>,<ic2:blockchambers>],
            [<ic2:blockmachinemv>,<ic2:blockgenerator>,<ic2:blockmachinemv>]
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

recipes.addShaped(<ic2:itemmisc:451> * 16, [
    [<ic2:itemcable:1>,<ic2:itemcable:1>,<ic2:itemcable:1>],
    [<contenttweaker:enrichedgold>,<contenttweaker:circuit8>,<contenttweaker:enrichedgold>],
    [<ic2:itemcable:1>,<ic2:itemcable:1>,<ic2:itemcable:1>]
]);

recipes.addShaped(<ic2:itemmisc:451> * 32, [
    [<ic2:itemcable:1>,<ic2:itemcable:1>,<ic2:itemcable:1>],
    [<contenttweaker:enrichedgold>,<contenttweaker:neuro_processor>,<contenttweaker:enrichedgold>],
    [<ic2:itemcable:1>,<ic2:itemcable:1>,<ic2:itemcable:1>]
]);

recipes.addShaped(<ic2:itemmisc:451> * 64, [
    [<ic2:itemcable:1>,<ic2:itemcable:1>,<ic2:itemcable:1>],
    [<contenttweaker:enrichedgold>,<contenttweaker:wetware_assembly>,<contenttweaker:enrichedgold>],
    [<ic2:itemcable:1>,<ic2:itemcable:1>,<ic2:itemcable:1>]
]);

recipes.addShaped(<ic2:itemmisc:452> * 16, [
    [<bloodmagic:component:28>,<contenttweaker:elementiumprocessor>,<bloodmagic:component:28>],
    [<opencomputers:material:9>,<contenttweaker:circuit8>,<opencomputers:material:9>],
    [<bloodmagic:component:29>,<forestry:chipsets:3>,<bloodmagic:component:29>]
]);

recipes.addShaped(<ic2:itemmisc:452> * 32, [
    [<bloodmagic:component:28>,<contenttweaker:elementiumprocessor>,<bloodmagic:component:28>],
    [<opencomputers:material:9>,<contenttweaker:neuro_processor>,<opencomputers:material:9>],
    [<bloodmagic:component:29>,<forestry:chipsets:3>,<bloodmagic:component:29>]
]);

recipes.addShaped(<ic2:itemmisc:452> * 64, [
    [<bloodmagic:component:28>,<contenttweaker:elementiumprocessor>,<bloodmagic:component:28>],
    [<opencomputers:material:9>,<contenttweaker:wetware_assembly>,<opencomputers:material:9>],
    [<bloodmagic:component:29>,<forestry:chipsets:3>,<bloodmagic:component:29>]
]);

var mapMachineLV as IIngredient[][IItemStack] = {
    <ic2:blockmachinelv:3> : [<ic2:blockmachinelv:15>,<contenttweaker:cutting_head_diamond>],
    <ic2:blockmachinelv:4> : [<forestry:centrifuge>,<ic2:itemtreetap>],
    <ic2:blockmachinelv:5> : [<thermalexpansion:machine:5>, <minecraft:piston>],
    <ic2:blockmachinelv:7> : [<thermalexpansion:device:1>, <thermalexpansion:augment:129>],
    <ic2:blockmachinelv2:2> : [<ic2:blockmachinelv:7>, <ic2:blockmachinelv:4>],
    <ic2:blockmachinelv2:7> : [<thermalexpansion:machine:2>, <thermalfoundation:material:657>],
    <ic2:blockmachinelv:2> : [<thermalexpansion:machine>, <contenttweaker:heat_conductor>],
};

for machine, items in mapMachineLV {
    var top as IIngredient = items[0];
    var sides as IIngredient = items[1];

    recipes.remove(machine);
    recipes.addShaped(machine, [
        [null,top,null],
        [sides,<ic2:blockmachinelv>,sides],
        [<contenttweaker:electric_motor>,<ic2:itemmisc:451>,<contenttweaker:electric_motor>]
    ]);
}

furnace.remove(<ic2:itemmisc:450>);
InductionSmelter.addRecipe(<ic2:itemmisc:450> * 9, <contenttweaker:raw_rubber_pulp> * 9, findFirstItemFromMod("thermalfoundation","dust","sulfur"), 2500);
Kiln.addRecipe(<ic2:itemmisc:450> * 9, <contenttweaker:raw_rubber_pulp> * 9, findFirstItemFromMod("thermalfoundation","dust","sulfur"), 200);
Casting.addTableRecipe(<ic2:itemharz>, null, <liquid:resin>, 250, false, 400);
Carpenter.addRecipe(<ic2:itemharz>, [
    [<forestry:wood_pulp>,<forestry:wood_pulp>,<forestry:wood_pulp>],
    [<forestry:wood_pulp>,<ic2:itemmisc:350>,<forestry:wood_pulp>],
    [<forestry:wood_pulp>,<forestry:wood_pulp>,<forestry:wood_pulp>]
], 20, <liquid:for.honey> * 500);

recipes.remove(<ic2:itembatre>);
recipes.addShapeless(<ic2:itembatre> * 3, [<ic2:itemarmorindustrialbelt>]);
BottlingMachine.addRecipe(<ic2:itembatre>, <contenttweaker:battery_hull>, <liquid:battery_solution> * 500);
Transposer.addFillRecipe(<ic2:itembatre>, <contenttweaker:battery_hull>,  <liquid:battery_solution> * 500, 2000);

recipes.remove(<ic2:blockfoam>);
Transposer.addFillRecipe(<ic2:blockfoam>,<ic2:itemmisc:455>, <liquid:water> * 1000, 1000);

recipes.remove(<ic2:itemmisc:304>);
Blueprint.addRecipe("components", <ic2:itemmisc:304>, [
    <ore:gearSteel> * 1,
    <contenttweaker:iron_rotor_blade:0> * 8
]);

MetalPress.addRecipe(<ic2:itemmisc:55>, <ic2:itemmisc:180>, <contenttweaker:mold_ingot>, 2048);
MetalPress.addRecipe(<ic2:itemmisc:9>, <thermalfoundation:material:770> * 4, <immersiveengineering:mold:5>, 2048);
Compactor.addPressRecipe(<ic2:itemmisc:9>, <thermalfoundation:material:770> * 4, 2000);

recipes.remove(<ic2:itemcellempty>);
MetalPress.addRecipe(<ic2:itemcellempty>, <ore:ingotAluminum>, <immersiveengineering:mold:3>, 512);
Extractor.addRecipe(<ic2:itemcellempty>, <ore:ingotAluminum>);

Extractor.addRecipe(<ic2:itemcable>*4,<ore:ingotCopper>);
Extractor.addRecipe(<ic2:itemcable:13>*4,<ore:ingotBronze>);
Extractor.addRecipe(<ic2:itemcable:2>*4,<ore:ingotGold>);
Extractor.addRecipe(<ic2:itemcable:5>*4,<ore:ingotSteel>);
Extractor.addRecipe(<ic2:itemcable:10>*8,<ore:ingotSilver>);

recipes.remove(<ic2:itemmisc:258>);
betterExplosion(<ic2:itemmisc:258>, <contenttweaker:iridium_alloy_ingot>);

var mapMixedMetal as int[string][string] = {
    "first" : {
        "iron" : 0,
        "refinedIron" : 1,
        "nickel" : 2,
        "invar" : 3,
        "steel" : 3,
        "darkSteel" : 4,
        "starSteel" : 4,
        "endSteel" : 5
    },
    "second" : {
        "bronze" : 1,
        "constantan" : 2,
        "alubrass" : 3,
        "dawnstone" : 4,
        "alfSteel" : 5
    },
    "third" : {
        "tin" : 0,
        "silver" : 1,
        "aluminum" : 2,
        "iridium" : 3
    }
};

recipes.remove(<ic2:itemmisc:56>);

for metal_a, amount_a in mapMixedMetal["first"] {
    for metal_b, amount_b in mapMixedMetal["second"] {
        for metal_c, amount_c in mapMixedMetal["third"] {
            var amount as int = amount_a + amount_b + amount_c;
            recipes.addShaped(<ic2:itemmisc:56> * amount, [
                [getOreDict("ingot",metal_a),getOreDict("ingot",metal_a),getOreDict("ingot",metal_a)],
                [getOreDict("ingot",metal_b),getOreDict("ingot",metal_b),getOreDict("ingot",metal_b)],
                [getOreDict("ingot",metal_c),getOreDict("ingot",metal_c),getOreDict("ingot",metal_c)]
            ]);
        }
    }
}

Transposer.addFillRecipe(<ic2:itemmisc:7>, <thermalfoundation:material:768>,  <liquid:water> * 1000, 2000);
Casting.addTableRecipe(<ic2:itemmisc:7>, <thermalfoundation:material:768>, <liquid:water>, 1000, true, 200);
Transposer.addFillRecipe(<ic2:itemmisc:13>, <thermalfoundation:material:769>,  <liquid:water> * 1000, 2000);
Casting.addTableRecipe(<ic2:itemmisc:13>, <thermalfoundation:material:769>, <liquid:water>, 1000, true, 200);

Transposer.addFillRecipe(<ic2:itemcellempty:1>, <ic2:itemcellempty>,  <liquid:water> * 1000, 2000);
Transposer.addFillRecipe(<ic2:itemcellempty:2>, <ic2:itemcellempty>,  <liquid:lava> * 1000, 2000);

Compactor.addPressRecipe(<ic2:itembatcrystal>, <contenttweaker:energium_dust> * 18, 8000);
Compactor.addPressRecipe(<ic2:itemmisc:251>, <ic2:itemmisc:250> * 2, 8000);
Compactor.addPressRecipe(<ic2:itemmisc:253>, <ic2:itemmisc:252> * 2, 8000);
Compactor.addPressRecipe(<ic2:itemmisc:351>, <ic2:itemmisc:350> * 2, 8000);
Compactor.addPressRecipe(<ic2:itemmisc:356>, <ic2:itemmisc:354> * 2, 8000);

recipes.remove(<ic2:itemheatstorage>);
Transposer.addFillRecipe(<ic2:itemheatstorage>, <ic2:itemcellempty>,  <liquid:cryotheum> * 100, 2000);
