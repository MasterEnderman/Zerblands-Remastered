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

import mods.abyssalcraft.Crystallizer;
import mods.abyssalcraft.Rituals;
import mods.abyssalcraft.Transmutator;
import mods.botania.ManaInfusion;
import mods.jei.JEI;
import mods.thermalexpansion.InductionSmelter;

JEI.removeAndHide(<abyssalcraft:ccluster2>);
JEI.removeAndHide(<abyssalcraft:ccluster3>);
JEI.removeAndHide(<abyssalcraft:ccluster4>);
JEI.removeAndHide(<abyssalcraft:ccluster5>);
JEI.removeAndHide(<abyssalcraft:ccluster6>);
JEI.removeAndHide(<abyssalcraft:ccluster7>);
JEI.removeAndHide(<abyssalcraft:ccluster8>);

<abyssalcraft:crystalbag_small>.addTooltip(format.green("*Only used for AbyssalCraft Crystals.*"));
<abyssalcraft:crystalbag_small>.addTooltip(format.green("*Can't store normal items.*"));
<abyssalcraft:crystalbag_medium>.addTooltip(format.green("*Only used for AbyssalCraft Crystals.*"));
<abyssalcraft:crystalbag_medium>.addTooltip(format.green("*Can't store normal items.*"));
<abyssalcraft:crystalbag_large>.addTooltip(format.green("*Only used for AbyssalCraft Crystals.*"));
<abyssalcraft:crystalbag_large>.addTooltip(format.green("*Can't store normal items.*"));
<abyssalcraft:crystalbag_huge>.addTooltip(format.green("*Only used for AbyssalCraft Crystals.*"));
<abyssalcraft:crystalbag_huge>.addTooltip(format.green("*Can't store normal items.*"));

<abyssalcraft:crystallizer>.addTooltip("Can be found in the Lair of Cha'garoth.");

Rituals.modifyRitualBookType("powerStone", 2);
Rituals.modifyRitualSacrifice("oblivionCatalyst", <evilcraft:promise:3>);

Transmutator.addTransmutation(<abyssalcraft:dreadsapling>, <abyssalcraft:dltsapling>, 0.2);
Transmutator.addTransmutation(<earthworks:block_chalk>, <abyssalcraft:calcifiedstone>, 0.1);

<ore:coal>.remove(<abyssalcraft:charcoal>);
furnace.remove(<abyssalcraft:charcoal>);
InductionSmelter.addRecipe(<abyssalcraft:charcoal>, <abyssalcraft:crystal:3>, <abyssalcraft:crystal:14>, 3000);

mods.abyssalcraft.Crystallizer.addSingleCrystallization(<forestry:phosphor>, <abyssalcraft:crystal:7> * 1, 0.5);

var recipeMapShaped as IIngredient[][][IItemStack] = {
    <abyssalcraft:coraliumstone> : [
        [<ore:stone>,<ore:stone>,<ore:stone>],
        [<ore:stone>,<abyssalcraft:ccluster9>,<ore:stone>],
        [<ore:stone>,<ore:stone>,<ore:stone>]
    ],
    <abyssalcraft:ccluster9> : [
    	[<abyssalcraft:coralium>,<abyssalcraft:coralium>,<abyssalcraft:coralium>],
    	[<abyssalcraft:coralium>,<abyssalcraft:coralium>,<abyssalcraft:coralium>],
    	[<abyssalcraft:coralium>,<abyssalcraft:coralium>,<abyssalcraft:coralium>]
    ]
};

for key, value in recipeMapShaped {
	recipes.remove(key);
    recipes.addShaped("ct_"+toString(key), key, value);
}

ManaInfusion.addConjuration(<abyssalcraft:coralium> * 2, <abyssalcraft:coralium>, 1000);
