#priority 100000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

// https://refinedrelocation.github.io

global RR2 as string[string] = {
    "sorting_upgrade" : "Convert a vanilla chest to a Sorting Chest.",
    "stack_limiter" : "Upgrade for the Block Extender to add more functionality.",
    "input_filter" : "Upgrade for the Block Extender to add more functionality.",
    "output_filter" : "Upgrade for the Block Extender to add more functionality.",
    "slot_lock" : "Upgrade for the Block Extender to add more functionality.",
    "sorting_chest" : "Sorting chests are upgraded chests.\nTo upgrade an existing chest, right click a chest with a sorting upgrade.\nThe chests inventory will be preserved, and it will become a sorting chest.\nOtherwise, if you wish to create a new sorting chest, you can simply craft the chest.\nYou can also make a chest out of the sorting chest by crafting it alone in a crafting grid.",
    "block_extender" : "The regular version of a block extender allows basic extension of blocks.\nTo use, it must be placed on an inventory by shift-right clicking the inventory.\nOnce placed, it will transfer items, fluid, and energy to the connected block.",
    "fast_hopper" : "The fast hopper is a vanilla hopper,\nbut transfers stacks instead of single items.",
    "filtered_hopper" : "The filtering hopper is a fast hopper upgraded \nwith Refined Relocation's Filtering system",
    "sorting_connector" : "The Sorting Connector will work like an extension of the Sorting System,\ntwo chests with this block in between will be in the same network.\nMore than one sorting connector touching will still connect the Sorting Systems,\nso they can be used as connections between rooms.\nThe most common use case is to connect inventories around corners,\nwithout have a chest in the corner.",
    "sorting_interface" : "The Sorting Interface is used to connect \ninventories from other mods into the sorting network.",
};
