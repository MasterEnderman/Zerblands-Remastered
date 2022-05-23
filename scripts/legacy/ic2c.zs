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
import mods.ic2.Extractor;
import mods.jei.JEI;
import mods.tconstruct.Casting;

recipes.remove(<ic2:itemmisc:53>);

Casting.addTableRecipe(<ic2:itemharz>, <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}), <liquid:resin>, 250, false, 20);

Extractor.addRecipe(<ic2:itemmisc:450> * 3,<ic2:itemharz>);

recipes.remove(<ic2:itemmisc:258>);
recipes.addShaped(<ic2:itemmisc:258>, [
    [<ic2:itemmisc:181>,<ic2:itemmisc:257>,<ic2:itemmisc:181>],
    [<ic2:itemmisc:257>,<thermalfoundation:material:326>,<ic2:itemmisc:257>],
    [<ic2:itemmisc:181>,<ic2:itemmisc:257>,<ic2:itemmisc:181>]
]);

recipes.remove(<ic2:blockmachinelv>);
recipes.addShaped(<ic2:blockmachinelv>, [
    [<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>],
    [<ore:ingotSteel>,<ore:gearElectrum>,<ore:ingotSteel>],
    [<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>]
]);

recipes.remove(<ic2:blockmachinemv>);
recipes.addShaped(<ic2:blockmachinemv>, [
    [<ore:plateSteel>,<ic2:itemmisc:256>,<ore:plateSteel>],
    [<ic2:itemmisc:257>,<ic2:blockmachinelv>,<ic2:itemmisc:257>],
    [<ore:plateSteel>,<ic2:itemmisc:256>,<ore:plateSteel>]
]);

recipes.remove(<ic2:itemmisc:451>);
recipes.addShaped(<ic2:itemmisc:451>, [
    [<ic2:itemcable:1>,<opencomputers:material:8>,<ic2:itemcable:1>],
    [<ic2:itemcable:1>,<opencomputers:material:4>,<ic2:itemcable:1>],
    [<ic2:itemcable:1>,<opencomputers:material:8>,<ic2:itemcable:1>]
]);

recipes.addShaped(<ic2:itemmisc:181> * 4, [
    [<ic2:itemmisc:202>,<ore:dustIridium>,<ic2:itemmisc:202>],
    [<ore:dustIridium>,<ic2:itemmisc:202>,<ore:dustIridium>],
    [<ic2:itemmisc:202>,<ore:dustIridium>,<ic2:itemmisc:202>]
]);

recipes.remove(<ic2:itemmisc:452>);
recipes.addShaped(<ic2:itemmisc:452>, [
    [<opencomputers:material:9>,<contenttweaker:circuit8>,<opencomputers:material:9>],
    [<forestry:chipsets:3>,<ic2:itemmisc:451>,<forestry:chipsets:3>],
    [<opencomputers:material:9>,<opencomputers:material:5>,<opencomputers:material:9>]
]);

recipes.remove(<ic2:itemcrop>);
recipes.addShaped(<ic2:itemcrop> * 2, [
    [<immersiveengineering:material>,<immersiveengineering:material>],
    [<immersiveengineering:material>,<immersiveengineering:material>]
]);

recipes.remove(<ic2:itemmisc:264>);
recipes.addShaped(<ic2:itemmisc:264>,[
    [<ic2:itemmisc:263>,<ic2:itemmisc:257>,<ic2:itemmisc:263>],
    [<ic2:itemmisc:257>,<ic2:itemmisc:108>,<ic2:itemmisc:257>],
    [<ic2:itemmisc:263>,<ic2:itemmisc:257>,<ic2:itemmisc:263>]
]);

var te_cell as IItemStack = <thermalexpansion:cell>.withTag({Recv: 25000, RSControl: 0 as byte, Facing: 4 as byte, Creative: 1 as byte, Energy: 50000000, Level: 4 as byte, SideCache: [2, 2, 2, 2, 2, 2] as byte[] as byte[], Send: 25000});

Empowerer.addRecipe(<ic2:blockelectric:4>, <ic2:blockelectric:5>, te_cell, te_cell, te_cell, te_cell, 50000, 1000);
