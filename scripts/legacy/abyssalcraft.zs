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

import mods.evilcraft.BloodInfuser;

furnace.remove(<abyssalcraft:charcoal>);

recipes.addShaped(<abyssalcraft:statue>, [
    [<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}).noReturn(),<calculator:enddiamond>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}).noReturn()],
    [<calculator:enddiamond>,<ore:blockDiamond>,<calculator:enddiamond>],
    [<abyssalcraft:stone:7>,<abyssalcraft:stone:7>,<abyssalcraft:stone:7>]
]);

// inputStack, inputFluid, tier, outputStack, duration, xp
BloodInfuser.addRecipe(<abyssalcraft:stone>, <liquid:evilcraftblood> * 3000, 3, <abyssalcraft:stone:7>, 100, 0);
BloodInfuser.addRecipe(<quantumflux:darkstone>, <liquid:evilcraftblood> * 3000, 3, <abyssalcraft:stone:7>, 100, 0);

<abyssalcraft:crystalbag_small>.addTooltip(format.green("*Only use for AbyssalCraft Crystals.*"));
<abyssalcraft:crystalbag_small>.addTooltip(format.green("*Can't store normal items.*"));
<abyssalcraft:crystalbag_medium>.addTooltip(format.green("*Only use for AbyssalCraft Crystals.*"));
<abyssalcraft:crystalbag_medium>.addTooltip(format.green("*Can't store normal items.*"));
<abyssalcraft:crystalbag_large>.addTooltip(format.green("*Only use for AbyssalCraft Crystals.*"));
<abyssalcraft:crystalbag_large>.addTooltip(format.green("*Can't store normal items.*"));
<abyssalcraft:crystalbag_huge>.addTooltip(format.green("*Only use for AbyssalCraft Crystals.*"));
<abyssalcraft:crystalbag_huge>.addTooltip(format.green("*Can't store normal items.*"));
