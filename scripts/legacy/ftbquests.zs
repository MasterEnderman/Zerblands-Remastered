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

import mods.jei.JEI;

JEI.removeAndHide(<ftbquests:screen>);
JEI.removeAndHide(<ftbquests:screen>.withTag({BlockEntityTag: {Size: 1 as byte, id: "ftbquests:screen_core"}, display: {Lore: ["(+NBT)"]}}));
JEI.removeAndHide(<ftbquests:screen>.withTag({BlockEntityTag: {Size: 2 as byte, id: "ftbquests:screen_core"}, display: {Lore: ["(+NBT)"]}}));
JEI.removeAndHide(<ftbquests:screen>.withTag({BlockEntityTag: {Size: 3 as byte, id: "ftbquests:screen_core"}, display: {Lore: ["(+NBT)"]}}));
JEI.removeAndHide(<ftbquests:screen>.withTag({BlockEntityTag: {Size: 4 as byte, id: "ftbquests:screen_core"}, display: {Lore: ["(+NBT)"]}}));
JEI.removeAndHide(<ftbquests:progress_detector>);
JEI.removeAndHide(<ftbquests:detector>);
JEI.removeAndHide(<ftbquests:detector:1>);
JEI.removeAndHide(<ftbquests:progress_screen>);
JEI.removeAndHide(<ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 2 as byte, id: "ftbquests:progress_screen_core", Width: 1 as byte}, display: {Lore: ["(+NBT)"]}}));
JEI.removeAndHide(<ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 4 as byte, id: "ftbquests:progress_screen_core", Width: 2 as byte}, display: {Lore: ["(+NBT)"]}}));
JEI.removeAndHide(<ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 6 as byte, id: "ftbquests:progress_screen_core", Width: 3 as byte}, display: {Lore: ["(+NBT)"]}}));
JEI.removeAndHide(<ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 8 as byte, id: "ftbquests:progress_screen_core", Width: 4 as byte}, display: {Lore: ["(+NBT)"]}}));
JEI.removeAndHide(<ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 3 as byte, id: "ftbquests:progress_screen_core", Width: 2 as byte}, display: {Lore: ["(+NBT)"]}}));
JEI.removeAndHide(<ftbquests:chest>);
JEI.removeAndHide(<ftbquests:loot_crate_storage>);
JEI.removeAndHide(<ftbquests:loot_crate_opener>);
JEI.removeAndHide(<ftbquests:barrier>);
JEI.removeAndHide(<ftbquests:reward_collector>);
JEI.removeAndHide(<ftbquests:custom_icon>.withTag({icon: "ftblib:textures/icons/support.png"}));
