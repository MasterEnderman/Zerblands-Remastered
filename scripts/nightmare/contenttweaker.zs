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
import mods.evilcraft.BloodInfuser;
import mods.immersiveengineering.AlloySmelter as Kiln;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.tconstruct.Casting;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Refinery;

furnace.addRecipe(<contenttweaker:ender_ingot>, <ore:dustEnder>);

Mixer.addRecipe(<liquid:sulfuric_acid>*1000, <liquid:distwater>*1000, [<ore:dustSulfur>*4,<ore:dustIron>], 1024);

Refinery.removeRecipe(<liquid:oil>);
Refinery.removeRecipe(<liquid:crude_oil>);

Mixer.addRecipe(<liquid:hydrogen_chlorid>*250, <liquid:sulfuric_acid>*250, [<ore:dustSalt>*4], 512);

Refinery.addRecipe(<liquid:ethylene>*8, <liquid:refined_oil>*8, <liquid:steam>*100, 512);
Refinery.addRecipe(<liquid:plastic>*16, <liquid:ethylene>*8, <liquid:hydrogen_chlorid>*8, 512);

Casting.addTableRecipe(<contenttweaker:plastic>, <tconstruct:cast_custom:3>, <liquid:plastic>, 512, false);

Kiln.addRecipe(<contenttweaker:black_iron>, <ore:ingotIron>, <ore:dustQuartzBlack>, 200);
AlloySmelter.addRecipe(<contenttweaker:black_iron>, [<ore:ingotIron>, <ore:dustQuartzBlack>], 5000);
InductionSmelter.addRecipe(<contenttweaker:black_iron>, <ore:ingotIron>, <ore:dustQuartzBlack>, 5000);

// inputStack, inputFluid, tier, outputStack, duration, xp
BloodInfuser.addRecipe(<contenttweaker:blood_infused_stone>, <liquid:evilcraftblood> * 5000, 1, <sonarcore:reinforcedstoneblock>, 100, 10);
