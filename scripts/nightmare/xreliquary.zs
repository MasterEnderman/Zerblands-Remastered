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
import mods.bloodmagic.AlchemyTable;
import mods.botania.RuneAltar;
import mods.immersiveengineering.Blueprint;

import scripts.functions.calc_atomic;
import scripts.functions.calc_flawless;

recipes.remove(<xreliquary:emperor_chalice>);
calc_atomic(<xreliquary:emperor_chalice>, <evilcraft:bucket_eternal_water>, <xreliquary:void_tear>, <ore:ingotGold>);

recipes.remove(<xreliquary:witherless_rose>);
calc_flawless(<xreliquary:witherless_rose>, <minecraft:double_plant:4>, <tp:netherstar_block>, <xreliquary:mob_ingredient:9>, <randomthings:imbue:3>);

recipes.remove(<xreliquary:alkahestry_tome:1001>);
Altar.addDiscoveryAltarRecipe("alkahestry_tome", <xreliquary:alkahestry_tome:1001>, 200, 200, [
    <xreliquary:sojourner_staff>,<xreliquary:phoenix_down>,<xreliquary:rod_of_lyssa>,
    <xreliquary:infernal_tear>,<thermalfoundation:tome_experience>,<xreliquary:glowing_bread>,
    <xreliquary:ender_staff>,<xreliquary:rending_gale>,<xreliquary:glacial_staff>
]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <xreliquary:magazine> : [
        [
            [<ore:nuggetIron>,<immersiveengineering:bullet>,<ore:nuggetIron>],
            [<immersiveengineering:bullet>,<ore:dyeBlack>,<immersiveengineering:bullet>],
            [<ore:nuggetIron>,<immersiveengineering:bullet>,<ore:nuggetIron>]
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

recipes.remove(<xreliquary:magicbane>);
RuneAltar.addRecipe(<xreliquary:magicbane>, [
    <botania:enderdagger>,
    <abyssalcraft:soulreaper>,
    <minecraft:golden_sword>,
    <abyssalcraft:transmutationgem>,
    <embers:shifting_scales>,
    <xreliquary:mob_ingredient:11>,
    <xreliquary:mob_ingredient:11>,
    <xreliquary:mob_ingredient:11>,
    <xreliquary:mob_ingredient:11>
], 20000);

var mapPedestal as IItemStack[IItemStack] = {
    <xreliquary:pedestal:0> : <xreliquary:pedestal_passive:0>,
    <xreliquary:pedestal:1> : <xreliquary:pedestal_passive:1>,
    <xreliquary:pedestal:2> : <xreliquary:pedestal_passive:2>,
    <xreliquary:pedestal:3> : <xreliquary:pedestal_passive:3>,
    <xreliquary:pedestal:4> : <xreliquary:pedestal_passive:4>,
    <xreliquary:pedestal:5> : <xreliquary:pedestal_passive:5>,
    <xreliquary:pedestal:6> : <xreliquary:pedestal_passive:6>,
    <xreliquary:pedestal:7> : <xreliquary:pedestal_passive:7>,
    <xreliquary:pedestal:8> : <xreliquary:pedestal_passive:8>,
    <xreliquary:pedestal:9> : <xreliquary:pedestal_passive:9>,
    <xreliquary:pedestal:10> : <xreliquary:pedestal_passive:10>,
    <xreliquary:pedestal:11> : <xreliquary:pedestal_passive:11>,
    <xreliquary:pedestal:12> : <xreliquary:pedestal_passive:12>,
    <xreliquary:pedestal:13> : <xreliquary:pedestal_passive:13>,
    <xreliquary:pedestal:14> : <xreliquary:pedestal_passive:14>,
    <xreliquary:pedestal:15> : <xreliquary:pedestal_passive:15>,
};

for pedestal, input in mapPedestal {
    recipes.remove(pedestal);
    recipes.addShaped(pedestal, [
        [<botania:manaresource:22>,<embers:winding_gears>,<botania:manaresource:22>],
        [<abyssalcraft:calcifiedstone>,input,<abyssalcraft:calcifiedstone>],
        [<abyssalcraft:calcifiedstone>,<abyssalcraft:platec>,<abyssalcraft:calcifiedstone>]
    ]);
}

var mapAlchemyTable as IIngredient[][IItemStack][int] = {
    0 : {
        <xreliquary:mob_ingredient:4> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:slime_ball>,<minecraft:slime_ball>,<minecraft:slime_ball>],
        <xreliquary:mob_ingredient> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:bone>,<minecraft:bone>,<minecraft:bone>],
        <xreliquary:mob_ingredient:11> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:ender_pearl>,<minecraft:ender_pearl>,<minecraft:ender_pearl>],
        <xreliquary:mob_ingredient:7> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:blaze_rod>,<minecraft:blaze_powder>,<minecraft:magma_cream>],
        <xreliquary:mob_ingredient:16> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:prismarine_crystals>,<minecraft:prismarine_crystals>,<minecraft:prismarine_shard>],
        <xreliquary:mob_ingredient:10> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:packed_ice>,<minecraft:snowball>,<minecraft:snowball>],
        <xreliquary:mob_ingredient:8> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:skull:4>,<minecraft:skull:4>,<minecraft:gunpowder>],
        <xreliquary:mob_ingredient:2> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:spider_eye>,<minecraft:spider_eye>,<minecraft:string>],
        <xreliquary:mob_ingredient:3> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:ghast_tear>,<minecraft:ghast_tear>,<minecraft:gunpowder>],
        <xreliquary:mob_ingredient:6> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>],
        <xreliquary:mob_ingredient:1> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:skull:1>,<tconstruct:materials:17>,<tconstruct:materials:17>],
        <xreliquary:mob_ingredient:12> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:dye>,<minecraft:dye>,<minecraft:dye>],
        <xreliquary:witch_hat> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:gunpowder>,<minecraft:glowstone_dust>,<minecraft:redstone>],
        <xreliquary:mob_ingredient:5> : [<evilcraft:dark_power_gem>,<contenttweaker:rune_blank>,<woot:soulsanddust>,<minecraft:feather>,<minecraft:feather>,<minecraft:feather>],
    },
    1 : {
        <xreliquary:mob_ingredient:15> : [<minecraft:wool:14>,<minecraft:wool:15>,<xreliquary:mob_ingredient:11>,<xreliquary:mob_ingredient:11>,<botania:manaresource:22>,<botania:manaresource:22>],
        <xreliquary:mob_ingredient:14> : [<xreliquary:mob_ingredient:12>,<xreliquary:mob_ingredient:12>,<xreliquary:mob_ingredient:12>,<xreliquary:mob_ingredient:4>],
        <xreliquary:mob_ingredient:13> : [<minecraft:leather>,<xreliquary:mob_ingredient:7>,<xreliquary:mob_ingredient>,<xreliquary:mob_ingredient:4>],
        <xreliquary:mob_ingredient:9> : [<ic2:itemmisc:157>,<xreliquary:mob_ingredient:4>,<xreliquary:mob_ingredient:3>,<xreliquary:mob_ingredient>],
        <xreliquary:gun_part:1> : [<immersiveengineering:material:14>,<ore:plateIron>,<xreliquary:mob_ingredient:7>,<xreliquary:mob_ingredient:11>],
        <xreliquary:gun_part> : [<immersiveengineering:material:15>,<ore:plateIron>,<minecraft:magma_cream>,<xreliquary:magazine>],
        <xreliquary:gun_part:2> : [<immersiveengineering:material:16>,<ore:plateIron>,<minecraft:blaze_rod>,<xreliquary:mob_ingredient:7>],
        <xreliquary:glowing_water> : [<minecraft:water_bucket>,<minecraft:glowstone_dust>,<minecraft:gunpowder>,<contenttweaker:crushed_nether_wart>,<minecraft:glass_bottle>],
        <xreliquary:angelic_feather> : [<minecraft:feather>,<xreliquary:mob_ingredient:5>,<xreliquary:mob_ingredient:11>,<xreliquary:mob_ingredient:9>],
        <xreliquary:interdiction_torch> : [<minecraft:blaze_rod>,<minecraft:torch>,<xreliquary:mob_ingredient:11>,<xreliquary:mob_ingredient:7>,<xreliquary:mob_ingredient:5>],
        <xreliquary:apothecary_mortar> : [<botania:altar>,<xreliquary:mob_ingredient:3>,<xreliquary:mob_ingredient:3>,<xreliquary:mob_ingredient:3>,<botania:pestleandmortar>,<sonarcore:stablestone_normal>],
        <xreliquary:void_tear> : [<minecraft:ghast_tear>,<xreliquary:mob_ingredient:4>,<evilcraft:ender_tear>,<xreliquary:mob_ingredient:11>],
        <xreliquary:salamander_eye> : [<minecraft:ender_eye>,<xreliquary:mob_ingredient:7>,<xreliquary:mob_ingredient:11>,<xreliquary:mob_ingredient:10>],
        <xreliquary:fertile_potion> : [<minecraft:water_bucket>,<forestry:mulch>,<forestry:mulch>,<xreliquary:mob_ingredient:9>,<minecraft:glass_bottle>],
    },
    2 : {
        <xreliquary:apothecary_cauldron> : [<minecraft:cauldron>,<xreliquary:mob_ingredient:13>,<xreliquary:mob_ingredient:13>,<xreliquary:mob_ingredient:7>,<xreliquary:mob_ingredient:11>,<xreliquary:mob_ingredient:3>],
        <xreliquary:handgun> : [<xreliquary:gun_part>,<xreliquary:gun_part:1>,<xreliquary:gun_part:2>,<xreliquary:mob_ingredient:4>,<ore:ingotDarkSteel>,<immersiveengineering:material:13>],
        <xreliquary:lantern_of_paranoia> : [<immersiveengineering:metal_decoration2:4>,<xreliquary:mob_ingredient:7>,<xreliquary:mob_ingredient:4>,<xreliquary:interdiction_torch>],
        <xreliquary:twilight_cloak> : [<embers:ashen_cloak_chest>,<xreliquary:mob_ingredient:15>,<xreliquary:mob_ingredient:15>,<xreliquary:mob_ingredient:15>,<xreliquary:mob_ingredient:15>,<evilcraft:ender_tear>],
        <xreliquary:holy_hand_grenade> : [<xreliquary:glowing_water>,<ore:coinGold>,<appliedenergistics2:tiny_tnt>,<xreliquary:mob_ingredient:3>],
        <xreliquary:serpent_staff> : [<enderio:item_material:16>,<minecraft:ender_eye>,<xreliquary:mob_ingredient:14>,<xreliquary:mob_ingredient:2>,<xreliquary:mob_ingredient:2>,<evilcraft:dark_stick>],
        <xreliquary:mercy_cross> : [<xreliquary:mob_ingredient:1>,<xreliquary:mob_ingredient>,<xreliquary:mob_ingredient:6>,<minecraft:leather>,<minecraft:skull:1>,<ore:blockGold>],
        <xreliquary:midas_touchstone> : [<xreliquary:void_tear>,<xreliquary:mob_ingredient:3>,<minecraft:anvil>,<ore:blockGold>,<ore:blockGold>,<xreliquary:mob_ingredient:7>],
        <xreliquary:infernal_claws> : [<xreliquary:mob_ingredient:13>,<xreliquary:mob_ingredient:13>,<xreliquary:mob_ingredient:13>,<xreliquary:mob_ingredient:4>],
        <xreliquary:kraken_shell> : [<xreliquary:mob_ingredient:14>,<xreliquary:mob_ingredient:14>,<xreliquary:mob_ingredient:14>,<xreliquary:mob_ingredient:11>],
        <xreliquary:shears_of_winter> : [<xreliquary:mob_ingredient:10>,<botania:rune:7>,<minecraft:shears>,<ore:gemDiamond>,<ore:gemDiamond>],
        <xreliquary:angelheart_vial> : [<minecraft:milk_bucket>,<xreliquary:mob_ingredient:13>,<xreliquary:mob_ingredient:9>,<xreliquary:mob_ingredient:9>,<minecraft:glass_bottle>,<scalinghealth:heartcontainer>],
        <xreliquary:altar> : [<minecraft:obsidian>,<minecraft:glowstone>,<xreliquary:mob_ingredient:11>,<xreliquary:mob_ingredient:3>],
        <xreliquary:wraith_node> : [<actuallyadditions:block_misc:6>,<xreliquary:mob_ingredient:11>,<ore:blockEmerald>],
        <xreliquary:fortune_coin> : [<ore:coinGold>,<xreliquary:mob_ingredient:11>,<xreliquary:mob_ingredient:4>,<xreliquary:mob_ingredient:5>],
    },
    3 : {
        <xreliquary:rending_gale> : [<xreliquary:mob_ingredient:8>,<xreliquary:mob_ingredient:5>,<xreliquary:mob_ingredient:5>,<xreliquary:void_tear>,<notenoughwands:wandcore>,<evilcraft:dark_stick>],
        <xreliquary:ice_magus_rod> : [<ore:stickIron>,<xreliquary:void_tear>,<xreliquary:mob_ingredient:10>,<ore:gemDiamond>],
        <xreliquary:sojourner_staff> : [<minecraft:blaze_rod>,<notenoughwands:wandcore>,<xreliquary:void_tear>,<xreliquary:mob_ingredient:7>],
        <xreliquary:harvest_rod> : [<evilcraft:dark_stick>,<xreliquary:mob_ingredient:9>,<xreliquary:void_tear>,<minecraft:double_plant:4>,<minecraft:double_plant:4>,<minecraft:vine>],
        <xreliquary:glowing_bread> : [<xreliquary:glowing_water>,<actuallyadditions:item_misc:4>,<minecraft:fire_charge>],
        <xreliquary:phoenix_down> : [<xreliquary:angelic_feather>,<xreliquary:angelheart_vial>,<xreliquary:angelheart_vial>,<xreliquary:angelheart_vial>],
        <xreliquary:infernal_tear> : [<xreliquary:void_tear>,<xreliquary:witch_hat>,<xreliquary:mob_ingredient:7>,<xreliquary:mob_ingredient:13>],
        <xreliquary:fertile_lilypad> : [<minecraft:waterlily>,<xreliquary:mob_ingredient:9>,<xreliquary:mob_ingredient:9>,<xreliquary:mob_ingredient:9>],
        <xreliquary:rod_of_lyssa> : [<minecraft:fishing_rod>,<xreliquary:mob_ingredient:5>,<xreliquary:mob_ingredient:11>,<xreliquary:mob_ingredient:13>],
        <xreliquary:ender_staff> : [<minecraft:ender_eye>,<xreliquary:mob_ingredient:11>,<xreliquary:mob_ingredient:5>,<xreliquary:mob_ingredient:5>,<evilcraft:dark_stick>],
    },
    4 : {
        <xreliquary:destruction_catalyst> : [<minecraft:flint_and_steel>,<xreliquary:mob_ingredient:7>,<xreliquary:mob_ingredient:3>,<xreliquary:infernal_tear>],
        <xreliquary:glacial_staff> : [<xreliquary:ice_magus_rod>,<xreliquary:void_tear>,<xreliquary:mob_ingredient:10>,<xreliquary:shears_of_winter>],
        <xreliquary:pyromancer_staff> : [<minecraft:blaze_rod>,<xreliquary:salamander_eye>,<xreliquary:infernal_claws>,<xreliquary:infernal_tear>],
        <xreliquary:infernal_chalice> : [<xreliquary:infernal_claws>,<xreliquary:emperor_chalice>,<xreliquary:infernal_tear>,<xreliquary:mob_ingredient:7>],
        <xreliquary:hero_medallion> : [<xreliquary:fortune_coin>,<xreliquary:mob_ingredient:11>,<xreliquary:witch_hat>,<xreliquary:infernal_tear>],
    }
};

for tier, items in mapAlchemyTable {
    for item, recipe in items {
        recipes.remove(item);
        AlchemyTable.addRecipe(item, recipe, 1000 * (tier + 1), 40 * (tier + 1), tier);
    }
}

<ore:bulletEmpty>.add(<xreliquary:bullet>);
<ore:bulletEmpty>.add(<immersiveengineering:bullet>);

recipes.removeByRecipeName("xreliquary:items/bullets/neutral");
recipes.remove(<xreliquary:bullet:2>);
recipes.remove(<xreliquary:bullet:3>);
recipes.remove(<xreliquary:bullet:4>);
recipes.remove(<xreliquary:bullet:5>);
recipes.remove(<xreliquary:bullet:6>);
recipes.remove(<xreliquary:bullet:7>);
recipes.remove(<xreliquary:bullet:8>);
recipes.remove(<xreliquary:bullet:9>);

var bullets as IIngredient[][IItemStack] = {
    <xreliquary:bullet:1> * 8 : [
        <ore:bulletEmpty> * 8,
        <ore:nuggetGold> * 2,
        <minecraft:flint:0>,
        <minecraft:gunpowder:0>
    ],
    <xreliquary:bullet:2> * 8 : [
        <xreliquary:bullet:1> * 8,
        <xreliquary:mob_ingredient:6>
    ],
    <xreliquary:bullet:3> * 8 : [
        <ore:bulletEmpty> * 8,
        <ore:nuggetGold> * 2,
        <minecraft:blaze_rod:0>,
        <minecraft:blaze_powder:0>
    ],
    <xreliquary:bullet:4> * 8 : [
        <xreliquary:bullet:7> * 8,
        <xreliquary:mob_ingredient:11>
    ],
    <xreliquary:bullet:5> * 8 : [
        <ore:bulletEmpty> * 8,
        <ore:nuggetGold> * 2,
        <ore:slimeball>,
        <minecraft:gunpowder:0>
    ],
    <xreliquary:bullet:6> * 8 : [
        <xreliquary:bullet:5> * 8,
        <xreliquary:mob_ingredient:3>
    ],
    <xreliquary:bullet:7> * 8 : [
        <ore:bulletEmpty> * 8,
        <ore:nuggetGold> * 2,
        <ore:gemLapis>,
        <minecraft:gunpowder:0>
    ],
    <xreliquary:bullet:8> * 8 : [
        <ore:bulletEmpty> * 8,
        <ore:nuggetGold>,
        <ore:slimeball>,
        <ore:sandstone>,
        <minecraft:gunpowder:0>
    ],
    <xreliquary:bullet:9> * 8 : [
        <ore:bulletEmpty> * 8,
        <ore:nuggetGold> * 2,
        <xreliquary:mob_ingredient:3> * 2,
        <minecraft:gunpowder:0>
    ],
};

for bullet, recipe in bullets {
    Blueprint.addRecipe("bullet", bullet, recipe);
}
