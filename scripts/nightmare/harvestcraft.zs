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

import mods.jei.JEI;
import mods.ic2.Macerator;
import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.Pulverizer;

JEI.removeAndHide(<harvestcraft:grinder>);
JEI.removeAndHide(<harvestcraft:market>);
JEI.removeAndHide(<harvestcraft:shippingbin>);
JEI.removeAndHide(<harvestcraft:well>);

recipes.remove(<harvestcraft:freshwateritem>);
recipes.addShaped(<harvestcraft:freshwateritem> * 8, [
    [getBucketDefault("water")]
]);

recipes.removeByRecipeName("harvestcraft:beeswaxitem_x8_cropcandle");
recipes.removeByRecipeName("harvestcraft:beeswaxitem_cropcandle");

recipes.addShapeless(<harvestcraft:hardenedleatheritem>,[<minecraft:leather>,<forestry:beeswax>]);

recipes.addShapeless(<harvestcraft:queenbeeitem>,[<harvestcraft:grubitem>,<forestry:royal_jelly>]);

var recipeMapShaped as IIngredient[][][][IItemStack] = {
    <harvestcraft:presser> : [
        [
            [<enderio:item_alloy_endergy_ingot>,<enderio:item_alloy_endergy_ingot>,<enderio:item_alloy_endergy_ingot>],
            [<enderio:item_alloy_endergy_ingot>,<contenttweaker:cutting_head>,<enderio:item_alloy_endergy_ingot>],
            [<immersiveengineering:treated_wood>,<minecraft:furnace>,<immersiveengineering:treated_wood>]
        ]
    ],
    <harvestcraft:apiary> : [
        [
            [<ore:plankTreatedWood>,<forestry:frame_untreated>,<ore:plankTreatedWood>],
            [<ore:plankTreatedWood>,<actuallyadditions:block_misc:4>,<ore:plankTreatedWood>],
            [<ore:plankTreatedWood>,<forestry:frame_untreated>,<ore:plankTreatedWood>]
        ]
    ],
    <harvestcraft:wovencottonitem> : [
        [
            [<ore:cropCotton>,<ore:cropCotton>,<ore:cropCotton>],
            [<ore:cropCotton>,<ore:cropCotton>,<ore:cropCotton>],
            [<ore:cropCotton>,<ore:cropCotton>,<ore:cropCotton>]
        ]
    ],
    <harvestcraft:groundtrap> : [
    	[
            [<ore:plankTreatedWood>,<minecraft:iron_sword>,<ore:plankTreatedWood>],
            [<ore:fenceTreatedWood>,<thermalexpansion:frame:64>,<ore:fenceTreatedWood>],
            [<ore:plankTreatedWood>,<forestry:scoop:*>.noReturn(),<ore:plankTreatedWood>]
        ]
    ],
    <harvestcraft:watertrap> : [
    	[
            [<ore:plankTreatedWood>,<minecraft:fishing_rod>,<ore:plankTreatedWood>],
            [<ore:fenceTreatedWood>,<thermalexpansion:frame:64>,<ore:fenceTreatedWood>],
            [<ore:plankTreatedWood>,<forestry:scoop:*>.noReturn(),<ore:plankTreatedWood>]
        ]
    ],
    <harvestcraft:waterfilter> : [
        [
            [<minecraft:iron_bars>,<minecraft:iron_bars>,<minecraft:iron_bars>],
            [<harvestcraft:wovencottonitem>,<thermalexpansion:frame:64>,<harvestcraft:wovencottonitem>],
            [<harvestcraft:wovencottonitem>,<minecraft:bucket>,<harvestcraft:wovencottonitem>]
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

var recipeMapShapeless as IIngredient[][][IItemStack] = {
    <harvestcraft:stockitem> : [
        [<harvestcraft:potitem>,<minecraft:bone>,<minecraft:bone>,<minecraft:bone>],
        [<harvestcraft:potitem>,<ore:listAllveggie>,<ore:listAllveggie>,<ore:listAllveggie>],
        [<harvestcraft:potitem>,<ore:listAllmeatraw>,<ore:listAllmeatraw>,<ore:listAllmeatraw>]
    ],
    <harvestcraft:coconutmilkitem> : [
        [<harvestcraft:juiceritem>,<harvestcraft:coconutitem>,<harvestcraft:coconutitem>]
    ],
    <harvestcraft:flouritem> : [
        [<harvestcraft:mortarandpestleitem>,<ore:listAllgrain>],
        [<harvestcraft:mortarandpestleitem>,<ore:cropRice>]
    ]
};

for key, value in recipeMapShapeless {
    var index as int = 0;
    recipes.remove(key);

    for recipe in value {
        var name as string = "ct_"+toString(key)+"_"+index;
        recipes.addShapeless(name, key, recipe);
        index += 1;
    }
}

var mapGroundMeat as IItemStack[IItemStack] = {
    <minecraft:beef> : <harvestcraft:groundbeefitem>,
    <minecraft:chicken> : <harvestcraft:groundchickenitem>,
    <harvestcraft:duckrawitem> : <harvestcraft:groundduckitem>,
    <minecraft:fish> : <harvestcraft:groundfishitem>,
    <minecraft:mutton> : <harvestcraft:groundmuttonitem>,
    <minecraft:porkchop> : <harvestcraft:groundporkitem>,
    <minecraft:rabbit> : <harvestcraft:groundrabbititem>,
    <harvestcraft:turkeyrawitem> : <harvestcraft:groundturkeyitem>,
    <harvestcraft:venisonrawitem> : <harvestcraft:groundvenisonitem>,
};

for input, output in mapGroundMeat {
    Pulverizer.addRecipe(output, input, 1024, output, 100);
    Macerator.addRecipe(output * 2, input);
}

Centrifuge.addRecipe([<harvestcraft:soymilkitem>,<harvestcraft:firmtofuitem>], <harvestcraft:silkentofuitem>, null, 4000);
