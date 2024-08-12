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

var removeAndHide as string[] = [
    // special items
    "pattern_ingot",
    "antispider_eye",
    // expert items
    "cast_wire" ,
    "cast_stick" ,
    "ender_ingot" ,
    "enhanced_ender_ingot" ,
    "ender_star" ,
    "plastic" ,
    "black_iron" ,
    "crystal_prism" ,
    "bone_shard" ,
    "brick_dust" ,
    "fireclay_brick" ,
    "fireclay_dried" ,
    "flint_shard" ,
    "pressed_fireclay" ,
    "pressed_clay" ,
    "root_dried" ,
    "root_golden" ,
    "gravel_dust" ,
    "grind_wheel" ,
    "rail_speed" ,
    "rail_standard" ,
    "rail_wood" ,
    "railbed_wood" ,
    "tie_wood" ,
    "cutting_head" ,
    "cutting_head_iron" ,
    "cutting_head_diamond" ,
    "basic_blade" ,
    "fireclay_dust" ,
    "pressed_mud" ,
    "copper_coil" ,
    "heat_conductor" ,
    "electric_motor" ,
    "cast_cable" ,
    "diode" ,
    "resistor" ,
    "iron_rotor" ,
    "iron_rotor_blade" ,
    "crushed_nether_wart" ,
    "energium_dust" ,
    "stone_board" ,
    "corruptedstarmetal" ,
    "elementiumprint" ,
    "elementiumprocessor" ,
    "terrasteelprint" ,
    "terrasteelprocessor" ,
    "starsteel_ingot" ,
    "starsteel_nugget" ,
    "chest_lock" ,
    "clay_plate" ,
    "clay_plate_raw" ,
    "cordage_fiber" ,
    "iridium_alloy_ingot" ,
    "mold_ingot",
    "lithium_dust" ,
    "silicon_boule" ,
    "electrotine_dust" ,
    "electro_silicon" ,
    "battery_hull" ,
    "raw_rubber_pulp" ,
    "malignant_heart" ,
    "signalum_base_ingot" ,
    "lumium_base_ingot" ,
    "alfsteel_ingot" ,
    "alfsteel_nugget" ,
    "sodium_dust" ,
    "flawless_diamond_shard" ,
    "end_stone_dust" ,
    "hdpe_pellet" ,
    "hdpe_sheet" ,
    "hdpe_substrate" ,
    "bio_fuel" ,
    "eternalslate" ,
    "potatos" ,
    "stemcells" ,
    "petri_dish" ,
    "neuro_processor" ,
    "wetware_assembly" ,
    "advanced_powermodule" ,
    "crystal_cluster_core" ,
    "data_control_circuit" ,
    "data_orb" ,
    "data_storage_circuit" ,
    "energy_flow_circuit" ,
    "engraved_crystal_chip" ,
    "engraved_lapotronic_chip" ,
    "lapotronic_energy_orb" ,
    "heating_coil" ,
    "pink_slime" ,
    "pink_slime_ingot" ,
    "small_plutonium" ,
    "rtg_pellet" ,
    "plutonium" ,
    "dense_neuron_chip" ,
    "resource_infinity_drop" ,
    "big_pearl" ,
    "pearl_lattice" ,
    "raw_atomicbinder",
    "artifact_blackpearl",
    "crystal_ender",
    // electrodes
    "electrode_apatite",
    "electrode_blaze",
    "electrode_bronze",
    "electrode_copper",
    "electrode_diamond",
    "electrode_emerald",
    "electrode_ender",
    "electrode_gold",
    "electrode_iron",
    "electrode_lapis",
    "electrode_obsidian",
    "electrode_orchid",
    "electrode_rubber",
    "electrode_tin",
    // runes
    "rune_blank",
    "rune_common",
    "rune_legendary",
    "rune_rare",
    "rune_uncommon",
    // qbits
    "q1",
    "q2",
    "q3",
    "q4",
];

for item in removeAndHide {
    JEI.removeAndHide(getItem("contenttweaker", item));
}
