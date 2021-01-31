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

import mods.bloodmagic.AlchemyArray;
import mods.bloodmagic.TartaricForge;
import mods.chisel.Carving;
import mods.jei.JEI;

JEI.removeAndHide(<bloodarsenal:slate>);
JEI.removeAndHide(<bloodarsenal:slate:1>);
JEI.removeAndHide(<bloodarsenal:slate:2>);
JEI.removeAndHide(<bloodarsenal:slate:3>);
JEI.removeAndHide(<bloodarsenal:slate:4>);

TartaricForge.removeRecipe([<bloodarsenal:soul_pendant:3>, <bloodarsenal:blood_diamond:1>, <bloodarsenal:slate:4>, <minecraft:nether_star>]);
TartaricForge.addRecipe(<bloodarsenal:soul_pendant:4>, [<bloodarsenal:soul_pendant:3>, <bloodarsenal:blood_diamond:1>, <contenttweaker:slate_ethereal>, <minecraft:nether_star>], 4000, 3000);

AlchemyArray.addRecipe(<bloodarsenal:blood_diamond:3>, <bloodmagic:component:8>, <bloodarsenal:blood_diamond:2>, "bloodmagic:textures/models/alchemyarrays/bindingarray.png");

Carving.addGroup("slateblock");
Carving.addVariation("slateblock", <contenttweaker:slate_ethereal>);
Carving.addVariation("slateblock", <bloodarsenal:slate>);
Carving.addVariation("slateblock", <bloodarsenal:slate:1>);
Carving.addVariation("slateblock", <bloodarsenal:slate:2>);
Carving.addVariation("slateblock", <bloodarsenal:slate:3>);
Carving.addVariation("slateblock", <bloodarsenal:slate:4>);
