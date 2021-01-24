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

import mods.ic2.Compressor;
import mods.immersiveengineering.Mixer;

Compressor.addRecipe(<immersiveengineering:material:18>, <immersiveengineering:material:17> * 8);

recipes.addShaped(<immersiveengineering:treated_wood> * 8, [
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [<ore:plankWood>,getBucketDefault("oil"),<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
]);

recipes.addShaped(<immersiveengineering:treated_wood> * 8, [
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [<ore:plankWood>,getBucketDefault("tree_oil"),<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
]);

recipes.addShaped(<immersiveengineering:treated_wood> * 8, [
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [<ore:plankWood>,getBucketDefault("canolaoil"),<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
]);

recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1>, [
    [<immersiveengineering:stone_decoration_slab:1>],
    [<immersiveengineering:stone_decoration_slab:1>]
]);
recipes.addShaped(<immersiveengineering:stone_decoration:1>, [
    [<earthworks:item_mud>,<earthworks:block_concrete>,<earthworks:item_mud>],
    [<earthworks:block_concrete>,<minecraft:furnace>,<earthworks:block_concrete>],
    [<earthworks:item_mud>,<earthworks:block_concrete>,<earthworks:item_mud>]
]);

recipes.remove(<immersiveengineering:material:14>);
recipes.addShaped(<immersiveengineering:material:14>,[[null,null,<ore:ingotSteel>],[null,<ore:ingotSteel>,null],[<ore:ingotSteel>,null,null]]);

Mixer.addRecipe(<liquid:crystaloil>*1000,<liquid:oil>*1000,[<actuallyadditions:item_misc:23>], 1000);
Mixer.addRecipe(<liquid:empoweredoil>*1000,<liquid:crystaloil>*1000,[<actuallyadditions:item_misc:24>], 1000);
