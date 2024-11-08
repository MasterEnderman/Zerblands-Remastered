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

import mods.botania.PureDaisy;
import mods.enderio.AlloySmelter;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.tconstruct.Casting;

PureDaisy.addRecipe(<botanicadds:dreamrock>, <contenttweaker:runestone>, 100);

furnace.addRecipe(<contenttweaker:blood_infused_stone>,<evilcraft:bloody_cobblestone>);

recipes.addShaped(<contenttweaker:red_core>, [
    [<contenttweaker:red_coal>,<abyssalcraft:charcoal>,<contenttweaker:red_coal>],
    [<abyssalcraft:charcoal>,<extrautils2:ingredients:2>,<abyssalcraft:charcoal>],
    [<contenttweaker:red_coal>,<abyssalcraft:charcoal>,<contenttweaker:red_coal>]
]);

recipes.addShaped(<contenttweaker:omega_core>, [
    [<projecte:item.pe_klein_star:5>,<projecte:item.pe_klein_star:5>,<projecte:item.pe_klein_star:5>],
    [<projecte:item.pe_klein_star:5>,<draconicevolution:chaotic_core>,<projecte:item.pe_klein_star:5>],
    [<projecte:item.pe_klein_star:5>,<projecte:item.pe_klein_star:5>,<projecte:item.pe_klein_star:5>]
]);

Casting.removeTableRecipe(<contenttweaker:ender_ingot>);
AlloySmelter.addRecipe(<contenttweaker:ender_ingot>, [<threng:material>, <enderio:item_alloy_endergy_ingot:3>, <extrautils2:ingredients:17>], 50000);
AlloySmelter.addRecipe(<contenttweaker:enhanced_ender_ingot>, [<immersiveengineering:material:19>, <ic2:itemmisc:60>, <contenttweaker:ender_ingot>], 50000);

furnace.addRecipe(<contenttweaker:reinforced_obsidian_ingot>,<enderio:block_reinforced_obsidian>);
furnace.addRecipe(<contenttweaker:flawless_diamond_shard>,<contenttweaker:flawlessdiamond>);

Mixer.addRecipe(<liquid:sulfuric_acid>*100, <liquid:distwater>*100, [<ore:dustSulfur>*4,<ore:dustIron>], 1024);
Refinery.addRecipe(<liquid:hydrogen_chlorid> * 200, <liquid:chlorine> * 100, <liquid:hydrogen> * 100, 512);

recipes.addShaped(<contenttweaker:energy_flow_circuit>, [
    [<ic2:itemmisc:452>,<ic2:itemmisc:257>,<ic2:itemmisc:452>],
    [<ic2:itembatlamacrystal>,<ic2:itemmisc:258>,<ic2:itembatlamacrystal>],
    [<ic2:itemmisc:452>,<ic2:itemmisc:257>,<ic2:itemmisc:452>]
]);

recipes.addShaped(<contenttweaker:rtg_pellet>, [
    [<advancedsolars:reinforcediridiumironplate>,<ic2:itemreflectors:2>.noReturn(),<advancedsolars:reinforcediridiumironplate>],
    [<ic2:itemreflectors:2>.noReturn(),<ic2:itemreactorrods:14>.noReturn(),<ic2:itemreflectors:2>.noReturn()],
    [<advancedsolars:reinforcediridiumironplate>,<ic2:itemreflectors:2>.noReturn(),<advancedsolars:reinforcediridiumironplate>]
]);

recipes.addShaped(<contenttweaker:module_transfer>, [
    [<openmodularturrets:intermediate_regular>,null,<openmodularturrets:intermediate_regular>],
    [<openmodularturrets:intermediate_regular>,<contenttweaker:circuit8>,<openmodularturrets:intermediate_regular>],
    [<openmodularturrets:intermediate_regular>,null,<openmodularturrets:intermediate_regular>]
]);

recipes.addShaped(<contenttweaker:jump_module>, [
    [<ore:ingotVividAlloy>,<contenttweaker:circuit8>,<ore:ingotVividAlloy>],
    [<ore:ingotVividAlloy>,<contenttweaker:energy_module>,<ore:ingotVividAlloy>],
    [null,<ore:ingotVibrantAlloy>,null]
]);
