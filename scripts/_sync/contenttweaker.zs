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
