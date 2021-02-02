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

import mods.immersiveengineering.Fermenter;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Refinery;

Fermenter.removeFluidRecipe(<liquid:ethanol>);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*6,<thermalfoundation:material:818>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*8,<thermalfoundation:material:819>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*6,<thermalfoundation:material:816>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*8,<thermalfoundation:material:817>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*2,<actuallyadditions:item_misc:1>, 256);
Fermenter.addRecipe(null, <liquid:bio.ethanol>*4,<actuallyadditions:item_misc:21>, 256);

Refinery.removeRecipe(<liquid:biodiesel>);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*8, <liquid:plantoil>*8, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*8, <liquid:canolaoil>*8, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*8, <liquid:biocrude>*8, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*4, <liquid:refinedcanolaoil>*12, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*4, <liquid:refined_biofuel>*12, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*12, <liquid:seed.oil>*4, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*12, <liquid:seed_oil>*4, 256);
Refinery.addRecipe(<liquid:biodiesel>*16, <liquid:bio.ethanol>*12, <liquid:hootch>*4, 256);

MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>);
