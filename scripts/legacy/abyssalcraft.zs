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

import mods.abyssalcraft.Rituals;
import mods.abyssalcraft.Transmutator;
import mods.actuallyadditions.Empowerer;
import mods.chisel.Carving;
import mods.evilcraft.BloodInfuser;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.jei.JEI;
import mods.thermalexpansion.InductionSmelter;

JEI.removeAndHide(<abyssalcraft:ccluster2>);
JEI.removeAndHide(<abyssalcraft:ccluster3>);
JEI.removeAndHide(<abyssalcraft:ccluster4>);
JEI.removeAndHide(<abyssalcraft:ccluster5>);
JEI.removeAndHide(<abyssalcraft:ccluster6>);
JEI.removeAndHide(<abyssalcraft:ccluster7>);
JEI.removeAndHide(<abyssalcraft:ccluster8>);

furnace.remove(<abyssalcraft:charcoal>);
InductionSmelter.addRecipe(<abyssalcraft:charcoal>, <abyssalcraft:crystal:3>, <abyssalcraft:crystal:14>, 1500);

Mixer.addRecipe(<fluid:colour_out_of_space>*1000, <liquid:astralsorcery.liquidstarlight>*1000, [<ore:dustAstralStarmetal>*2,<ore:dustEnder>*2], 8192);
Refinery.addRecipe(<liquid:liquidantimatter>*10, <liquid:colour_out_of_space>*5, <liquid:liquidcoralium>*5, 512);

Empowerer.addRecipe(<abyssalcraft:ethaxiumingot>, <extrautils2:ingredients:2>, <abyssalcraft:ethbrick>, <abyssalcraft:ethbrick>, <abyssalcraft:ethbrick>, <abyssalcraft:ethbrick>, 50000, 100);

recipes.addShaped(<abyssalcraft:statue>, [
    [<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}).noReturn(),<contenttweaker:enddiamond>,<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}).noReturn()],
    [<contenttweaker:enddiamond>,<ore:blockDiamond>,<contenttweaker:enddiamond>],
    [<abyssalcraft:stone:7>,<abyssalcraft:stone:7>,<abyssalcraft:stone:7>]
]);

recipes.remove(<abyssalcraft:ccluster9>);
recipes.addShaped(<abyssalcraft:ccluster9>, [
    [<abyssalcraft:coralium>,<abyssalcraft:coralium>,<abyssalcraft:coralium>],
    [<abyssalcraft:coralium>,<abyssalcraft:coralium>,<abyssalcraft:coralium>],
    [<abyssalcraft:coralium>,<abyssalcraft:coralium>,<abyssalcraft:coralium>]
]);

recipes.remove(<abyssalcraft:necronomicon>);
recipes.addShaped(<abyssalcraft:necronomicon>, [
    [<ore:materialFlesh>,<evilcraft:reinforced_undead_plank>,<ore:materialFlesh>],
    [<evilcraft:reinforced_undead_plank>,<minecraft:book>,<evilcraft:reinforced_undead_plank>],
    [<ore:materialFlesh>,<evilcraft:reinforced_undead_plank>,<ore:materialFlesh>]
]);

recipes.remove(<abyssalcraft:transmutator>);
recipes.addShaped(<abyssalcraft:transmutator>, [
    [<abyssalcraft:platec>,<abyssalcraft:eoa>,<abyssalcraft:platec>],
    [<abyssalcraft:cstonebrick>,<abyssalcraft:transmutationgem>,<abyssalcraft:cstonebrick>],
    [<abyssalcraft:ingotblock:1>,getBucketDefault("liquidantimatter"),<abyssalcraft:ingotblock:1>]
]);

Rituals.modifyRitualSacrifice("oblivionCatalyst", <evilcraft:promise:3>);

Transmutator.addTransmutation(<abyssalcraft:dreadsapling>, <abyssalcraft:dltsapling>, 0.2);
Transmutator.addTransmutation(<earthworks:block_chalk>, <abyssalcraft:calcifiedstone>, 0.1);

// inputStack, inputFluid, tier, outputStack, duration, xp
BloodInfuser.addRecipe(<abyssalcraft:stone>, <liquid:evilcraftblood> * 3000, 3, <abyssalcraft:stone:7>, 100, 0);
BloodInfuser.addRecipe(<quantumflux:darkstone>, <liquid:evilcraftblood> * 3000, 3, <abyssalcraft:stone:7>, 100, 0);

<abyssalcraft:crystalbag_small>.addTooltip(format.green("*Only used for AbyssalCraft Crystals.*"));
<abyssalcraft:crystalbag_small>.addTooltip(format.green("*Can't store normal items.*"));
<abyssalcraft:crystalbag_medium>.addTooltip(format.green("*Only used for AbyssalCraft Crystals.*"));
<abyssalcraft:crystalbag_medium>.addTooltip(format.green("*Can't store normal items.*"));
<abyssalcraft:crystalbag_large>.addTooltip(format.green("*Only used for AbyssalCraft Crystals.*"));
<abyssalcraft:crystalbag_large>.addTooltip(format.green("*Can't store normal items.*"));
<abyssalcraft:crystalbag_huge>.addTooltip(format.green("*Only used for AbyssalCraft Crystals.*"));
<abyssalcraft:crystalbag_huge>.addTooltip(format.green("*Can't store normal items.*"));
