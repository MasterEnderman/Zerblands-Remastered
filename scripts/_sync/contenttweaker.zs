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

import mods.avaritia.ExtremeCrafting;
import mods.bloodmagic.BloodAltar;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.immersivetechnology.ElectrolyticCrucibleBattery;
import mods.tconstruct.Casting;

ExtremeCrafting.addShaped("creativeingot",<contenttweaker:creative>,[
    [<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>],
    [<ore:ingotInfinity>,<ore:ingotCosmicNeutronium>,<contenttweaker:creativecore>,<contenttweaker:creativecore>,<ore:ingotCosmicNeutronium>,<contenttweaker:creativecore>,<contenttweaker:creativecore>,<ore:ingotCosmicNeutronium>,<ore:ingotInfinity>],
    [<ore:ingotInfinity>,<contenttweaker:creativecore>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<contenttweaker:creativecore>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<contenttweaker:creativecore>,<ore:ingotInfinity>],
    [<ore:ingotInfinity>,<ore:ingotCosmicNeutronium>,<contenttweaker:creativecore>,<contenttweaker:creativecore>,<ore:ingotCosmicNeutronium>,<contenttweaker:creativecore>,<contenttweaker:creativecore>,<ore:ingotCosmicNeutronium>,<ore:ingotInfinity>],
    [<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>],
]);

ExtremeCrafting.addShaped("creativecore",<contenttweaker:creativecore> * 11, [
    [null,null,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,null,null],
    [null,<bloodmagic:decorative_brick:2>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<bloodmagic:decorative_brick:2>,null],
    [<bloodmagic:decorative_brick:2>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<bloodmagic:decorative_brick:2>],
    [<bloodmagic:decorative_brick:2>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<bloodmagic:decorative_brick:2>],
    [<bloodmagic:decorative_brick:2>,<draconicevolution:chaotic_core>,<draconicevolution:chaotic_core>,<draconicevolution:chaotic_core>,<avaritia:resource:5>,<draconicevolution:chaotic_core>,<draconicevolution:chaotic_core>,<draconicevolution:chaotic_core>,<bloodmagic:decorative_brick:2>],
    [<bloodmagic:decorative_brick:2>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<bloodmagic:decorative_brick:2>],
    [<bloodmagic:decorative_brick:2>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<bloodmagic:decorative_brick:2>],
    [null,<bloodmagic:decorative_brick:2>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<ic2:itemmisc:264>,<draconicevolution:chaotic_core>,<bloodmagic:decorative_brick:2>,null],
    [null,null,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,null,null]
]);

<contenttweaker:orb_armok>.addTooltip(format.green("A homage to the original"));
<contenttweaker:orb_armok>.addTooltip(format.green("Avaritia Mod back in 1.7.10"));
BloodAltar.addRecipe(<contenttweaker:orb_armok>,<contenttweaker:orb_armok_clean>,5,2147483647,1000,1000);
ExtremeCrafting.addShaped("orb_armok",<contenttweaker:orb_armok_clean>, [
    [null,null,null,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,null,null,null],
    [null,null,<ore:ingotInfinity>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}).noReturn(),<ore:ingotInfinity>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}).noReturn(),<ore:ingotInfinity>,null,null],
    [null,null,<ore:ingotInfinity>,<ore:ingotInfinity>,<avaritia:resource:5>,<ore:ingotInfinity>,<ore:ingotInfinity>,null,null],
    [null,<ore:ingotCosmicNeutronium>,<ore:ingotInfinity>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}).noReturn(),<ore:ingotInfinity>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:transcendent"}).noReturn(),<ore:ingotInfinity>,<ore:ingotCosmicNeutronium>,null],
    [<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotInfinity>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>],
    [null,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,null],
    [null,null,null,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,null,null,null],
    [null,null,null,null,null,null,null,null,null],
    [null,null,null,null,null,null,null,null,null]
]);

Refinery.addRecipe(<liquid:colour_out_of_space>*20, <liquid:astralsorcery.liquidstarlight>*15, <liquid:liquidantimatter>*5, 512);
Refinery.addRecipe(<liquid:colour_out_of_space>*10, <liquid:astralsorcery.liquidstarlight>*10, <liquid:liquidcoralium>*10, 512);

ElectrolyticCrucibleBattery.removeRecipe(<liquid:water>);
ElectrolyticCrucibleBattery.addRecipe(<liquid:hydrogen>*800,<liquid:oxygen>*400,null,null,<liquid:water>*1200,2048*250,250);

Casting.addTableRecipe(<contenttweaker:sodium_dust>, null, <liquid:moltensodium>, 250, false, 600);
Mixer.addRecipe(<liquid:sodium_persulfate>*1000, <liquid:oxygen>*1000, [<ore:dustSulfur>,<contenttweaker:sodium_dust>], 512);

recipes.addShaped(<contenttweaker:supermassiv>, [
    [<extrautils2:compressedcobblestone:7>,<extrautils2:compressedcobblestone:7>,<extrautils2:compressedcobblestone:7>],
    [<extrautils2:compressedcobblestone:7>,<appliedenergistics2:material:47>,<extrautils2:compressedcobblestone:7>],
    [<extrautils2:compressedcobblestone:7>,<extrautils2:compressedcobblestone:7>,<extrautils2:compressedcobblestone:7>]
]);

recipes.addShaped(<contenttweaker:glass_bell>, [
    [null,<minecraft:glass>,null],
    [<minecraft:glass>,<ore:rodStone>,<minecraft:glass>],
    [<minecraft:glass>,<minecraft:stone_button>,<minecraft:glass>]
]);
