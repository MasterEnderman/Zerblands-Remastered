#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.LocalizedNameSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

// legacy

var ender_token as Item = VanillaFactory.createItem("ender_token");
ender_token.setLocalizedNameSupplier(function(itemStack) {return "§5Ender Token§r";});
ender_token.maxStackSize = 1;
ender_token.register();

var glass_bell as Item = VanillaFactory.createItem("glass_bell");
glass_bell.setLocalizedNameSupplier(function(itemStack) {return "Glass Bell";});
glass_bell.maxStackSize = 1;
glass_bell.register();

var orb_armok as Item = VanillaFactory.createItem("orb_armok");
orb_armok.setLocalizedNameSupplier(function(itemStack) {return "§4True Blood Orb of Armok§r";});
orb_armok.maxStackSize = 1;
orb_armok.register();

var orb_armok_clean as Item = VanillaFactory.createItem("orb_armok_clean");
orb_armok_clean.setLocalizedNameSupplier(function(itemStack) {return "Blood Orb of Armok";});
orb_armok_clean.maxStackSize = 1;
orb_armok_clean.register();

var legacy as string[string] = {
    "supermassiv" : "Supermassiv",
    "creative" : "§dCreative Ingot§r",
    "creativecore" : "§dCreative Core§r",
    "infinite" : "§dCreative Singularity§r",
    "neutronium" : "Neutronium Singularity",
    "enderium" : "Enderium Singularity",
    "bronze" : "Bronze Singularity",
    "conductive" : "Conductive Iron Singularity",
    "demon" : "Demon Singularity",
    "invar" : "Invar Singularity",
    "signalum" : "Signalum Singularity",
    "steel" : "Steel Singularity",
    "vibrant" : "Vibrant Alloy Singularity",
    "reinforced_obsidian_ingot" : "Reinforced Obsidian Ingot",
    "bedrockium_nugget" : "Bedrockium Nugget",
    "bedrockium_ingot" : "Bedrockium Ingot",
    "red_core" : "Red Core",
    "red_coal" : "Red Coal" // fk XU2
};

for item, local in legacy {
    var newItem as Item = VanillaFactory.createItem(item);
    newItem.textureLocation = ResourceLocation.create("contenttweaker:items/"+item);
    newItem.setLocalizedNameSupplier(function(itemStack) {return local;});
    newItem.register();
}

// nightmare

var pattern_ingot = VanillaFactory.createItem("pattern_ingot");
pattern_ingot.setLocalizedNameSupplier(function(itemStack) {return "Ingot Pattern";});
pattern_ingot.maxStackSize = 1;
pattern_ingot.maxDamage = 7;
pattern_ingot.register();

var antispider_eye = VanillaFactory.createItem("antispider_eye");
antispider_eye.setLocalizedNameSupplier(function(itemStack) {return "Arachnida Actuator";});
antispider_eye.glowing = true;
antispider_eye.register();

var nightmare as string[string] = {
    "cast_wire" : "Wire Cast",
    "cast_stick" : "Stick Cast",
    "ender_ingot" : "Ender Ingot",
    "enhanced_ender_ingot" : "Enhanced Ender Ingot",
    "ender_star" : "Ender Star",
    "plastic" : "Plastic Sheet",
    "black_iron" : "Black Iron Ingot",
    "crystal_prism" : "Crystal Prism",
    "bone_shard" : "Bone Shard",
    "brick_dust" : "Brick Dust",
    "fireclay_brick" : "Fireclay Brick",
    "fireclay_dried" : "Dried Fireclay",
    "flint_shard" : "Flint Shard",
    "pressed_fireclay" : "Pressed Fireclay",
    "pressed_clay" : "Pressed Clay",
    "root_dried" : "Dried Root",
    "root_golden" : "Golden Root",
    "gravel_dust" : "Gravel Dust",
    "grind_wheel" : "Grinding Wheel",
    "rail_speed" : "Speed Rail",
    "rail_standard" : "Standard Rail",
    "rail_wood" : "Wooden Rail",
    "railbed_wood" : "Wooden Railbed",
    "tie_wood" : "Wooden Tie",
    "cutting_head" : "Basic Cutting Head",
    "cutting_head_iron" : "Iron Cutting Head",
    "cutting_head_diamond" : "Diamond Cutting Head",
    "basic_blade" : "Basic Blade",
    "fireclay_dust" : "Fire Clay Dust",
    "pressed_mud" : "Pressed Mud",
    "copper_coil" : "Copper Coil",
    "heat_conductor" : "Heat Conductor",
    "electric_motor" : "Electric Motor",
    "cast_cable" : "Cable Cast",
    "diode" : "Diode",
    "resistor" : "Resistor",
    "iron_rotor" : "Iron Rotor",
    "iron_rotor_blade" : "Iron Rotor Blade",
    "crushed_nether_wart" : "Crushed Nether Wart",
    "energium_dust" : "Energium Dust",
    "stone_board" : "Stone Circuit Board",
    "corruptedstarmetal" : "Corrupted Starmetal",
    "elementiumprint" : "Printed Elementium Circuit",
    "elementiumprocessor" : "Elementium Processor",
    "terrasteelprint" : "Printed Terrasteel Circuit",
    "terrasteelprocessor" : "Terrasteel Processor",
    "starsteel_ingot" : "Starsteel Ingot",
    "starsteel_nugget" : "Starsteel Nugget",
    "chest_lock" : "Chest Lock",
    "clay_plate" : "Clay Plate",
    "clay_plate_raw" : "Raw Clay Plate",
    "cordage_fiber" : "Cordage Fiber",
    "iridium_alloy_ingot" : "Iridium Alloy Ingot",
    "mold_ingot" : "Metal Press Mold: Ingot",
    "lithium_dust" : "Lithium Dust",
    "silicon_boule" : "Silicon Boule",
    "electrotine_dust" : "Electrotine Dust",
    "electro_silicon" : "Electrotine Doped Silicon Wafer",
    "battery_hull" : "Battery Hull",
    "raw_rubber_pulp" : "Raw Rubber Pulp",
    "malignant_heart" : "Malignant Heart",
    "signalum_base_ingot" : "Signalum Base",
    "lumium_base_ingot" : "Lumium Base",
    "alfsteel_ingot" : "Alfsteel Ingot",
    "alfsteel_nugget" : "Alfsteel Nugget",
    "sodium_dust" : "Sodium Dust",
    "flawless_diamond_shard" : "Flawless Diamond Shard",
    "end_stone_dust" : "End Stone Dust",
    "hdpe_pellet" : "HDPE Pellet",
    "hdpe_sheet" : "HDPE Sheet",
    "hdpe_substrate" : "HDPE Substrate",
    "bio_fuel" : "Bio Fuel",
    "eternalslate" : "Eternal Slate",
    "potatos" : "Potato Battery",
    "stemcells" : "Stem Cells",
    "petri_dish" : "Petri Dish",
    "neuro_processor" : "Neuro Processor",
    "wetware_assembly" : "Wetware Assembly",
    "advanced_powermodule" : "Advanced Power Module",
    "crystal_cluster_core" : "Crystal Cluster Core",
    "data_control_circuit" : "Data Control Circuit",
    "data_orb" : "Data Orb",
    "data_storage_circuit" : "Data Storage Circuit",
    "energy_flow_circuit" : "Energy Flow Circuit",
    "engraved_crystal_chip" : "Engraved Crystal Chip",
    "engraved_lapotronic_chip" : "Engraved Lapotronic Chip",
    "lapotronic_energy_orb" : "Lapotronic Energy Orb",
    "heating_coil" : "Heating Coil",
    "pink_slime" : "Pink Slime",
    "pink_slime_ingot" : "Pink Slime Ingot",
    "small_plutonium" : "Tiny Pile of Plutonium",
    "rtg_pellet" : "RTG Pellet",
    "plutonium" : "Plutonium"
};

for item, local in nightmare {
    var newItem as Item = VanillaFactory.createItem(item);
    newItem.textureLocation = ResourceLocation.create("contenttweaker:items/"+item);
    newItem.setLocalizedNameSupplier(function(itemStack) {return local;});
    newItem.register();
}

// electrodes

var electrodes as string[string] = {
    "electrode_apatite" : "Apatite Electrode",
    "electrode_blaze" : "Blaze Electrode",
    "electrode_bronze" : "Bronze Electrode",
    "electrode_copper" : "Copper Electrode",
    "electrode_diamond" : "Diamond Electrode",
    "electrode_emerald" : "Emerald Electrode",
    "electrode_ender" : "Ender Electrode",
    "electrode_gold" : "Gold Electrode",
    "electrode_iron" : "Iron Electrode",
    "electrode_lapis" : "Lapis Electrode",
    "electrode_obsidian" : "Obsidian Electrode",
    "electrode_orchid" : "Redstone Electrode",
    "electrode_rubber" : "Rubber Electrode",
    "electrode_tin" : "Tin Electrode",
};

for item, local in electrodes {
    var newItem as Item = VanillaFactory.createItem(item);
    newItem.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/"+item);
    newItem.setLocalizedNameSupplier(function(itemStack) {return local;});
    newItem.register();
}

// runes

var runes as string[string] = {
    "rune_blank" : "Blank Rune",
    "rune_common" : "Common Rune",
    "rune_legendary" : "Legendary Rune",
    "rune_rare" : "Rare Rune",
    "rune_uncommon" : "Uncommon Rune"
};

for item, local in runes {
    var newItem as Item = VanillaFactory.createItem(item);
    newItem.textureLocation = ResourceLocation.create("contenttweaker:items/rune/"+item);
    newItem.setLocalizedNameSupplier(function(itemStack) {return local;});
    newItem.register();
}

// quantum

var quantum as string[string] = {
    "q1" : "Qbit",
    "q2" : "Entanglement Qbit",
    "q3" : "Observation Qbit",
    "q4" : "Superposition Qbit",
};

for item, local in quantum {
    var newItem as Item = VanillaFactory.createItem(item);
    newItem.textureLocation = ResourceLocation.create("contenttweaker:items/quantum/"+item);
    newItem.setLocalizedNameSupplier(function(itemStack) {return local;});
    newItem.register();
}
