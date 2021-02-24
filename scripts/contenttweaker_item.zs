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

var supermassiv as Item = VanillaFactory.createItem("supermassiv");
supermassiv.setLocalizedNameSupplier(function(itemStack) {return "Supermassiv";});
supermassiv.register();

var orb_armok as Item = VanillaFactory.createItem("orb_armok");
orb_armok.setLocalizedNameSupplier(function(itemStack) {return "§4True Blood Orb of Armok§r";});
orb_armok.register();

var orb_armok_clean as Item = VanillaFactory.createItem("orb_armok_clean");
orb_armok_clean.setLocalizedNameSupplier(function(itemStack) {return "Blood Orb of Armok";});
orb_armok_clean.register();

var creative as Item = VanillaFactory.createItem("creative");
creative.setLocalizedNameSupplier(function(itemStack) {return "§dCreative Ingot§r";});
creative.register();

var creativecore as Item = VanillaFactory.createItem("creativecore");
creativecore.setLocalizedNameSupplier(function(itemStack) {return "§dCreative Core§r";});
creativecore.register();

var infinite as Item = VanillaFactory.createItem("infinite");
infinite.setLocalizedNameSupplier(function(itemStack) {return "§dCreative Singularity§r";});
infinite.register();

var neutronium as Item = VanillaFactory.createItem("neutronium");
neutronium.setLocalizedNameSupplier(function(itemStack) {return "Neutronium Singularity";});
neutronium.register();

var enderium as Item = VanillaFactory.createItem("enderium");
enderium.setLocalizedNameSupplier(function(itemStack) {return "Enderium Singularity";});
enderium.register();

var bronze as Item = VanillaFactory.createItem("bronze");
bronze.setLocalizedNameSupplier(function(itemStack) {return "Bronze Singularity";});
bronze.register();

var conductive as Item = VanillaFactory.createItem("conductive");
conductive.setLocalizedNameSupplier(function(itemStack) {return "Conductive Iron Singularity";});
conductive.register();

var demon as Item = VanillaFactory.createItem("demon");
demon.setLocalizedNameSupplier(function(itemStack) {return "Demon Singularity";});
demon.register();

var invar as Item = VanillaFactory.createItem("invar");
invar.setLocalizedNameSupplier(function(itemStack) {return "Invar Singularity";});
invar.register();

var signalum as Item = VanillaFactory.createItem("signalum");
signalum.setLocalizedNameSupplier(function(itemStack) {return "Signalum Singularity";});
signalum.register();

var steel as Item = VanillaFactory.createItem("steel");
steel.setLocalizedNameSupplier(function(itemStack) {return "Steel Singularity";});
steel.register();

var vibrant as Item = VanillaFactory.createItem("vibrant");
vibrant.setLocalizedNameSupplier(function(itemStack) {return "Vibrant Alloy Singularity";});
vibrant.register();

var reinforced_obsidian_ingot as Item = VanillaFactory.createItem("reinforced_obsidian_ingot");
reinforced_obsidian_ingot.setLocalizedNameSupplier(function(itemStack) {return "Reinforced Obsidian Ingot";});
reinforced_obsidian_ingot.register();

var bedrockium_nugget as Item = VanillaFactory.createItem("bedrockium_nugget");
bedrockium_nugget.setLocalizedNameSupplier(function(itemStack) {return "Bedrockium Nugget";});
bedrockium_nugget.register();

var bedrockium_ingot as Item = VanillaFactory.createItem("bedrockium_ingot");
bedrockium_ingot.setLocalizedNameSupplier(function(itemStack) {return "Bedrockium Ingot";});
bedrockium_ingot.register();

var red_core as Item = VanillaFactory.createItem("red_core");
red_core.setLocalizedNameSupplier(function(itemStack) {return "Red Core";});
red_core.register();

// nightmare

var cast_wire = VanillaFactory.createItem("cast_wire");
cast_wire.setLocalizedNameSupplier(function(itemStack) {return "Wire Cast";});
cast_wire.register();

var cast_stick = VanillaFactory.createItem("cast_stick");
cast_stick.setLocalizedNameSupplier(function(itemStack) {return "Stick Cast";});
cast_stick.register();

var ender_ingot = VanillaFactory.createItem("ender_ingot");
ender_ingot.setLocalizedNameSupplier(function(itemStack) {return "Ender Ingot";});
ender_ingot.register();

var enhanced_ender_ingot = VanillaFactory.createItem("enhanced_ender_ingot");
enhanced_ender_ingot.setLocalizedNameSupplier(function(itemStack) {return "Enhanced Ender Ingot";});
enhanced_ender_ingot.register();

var ender_star = VanillaFactory.createItem("ender_star");
ender_star.setLocalizedNameSupplier(function(itemStack) {return "Ender Star";});
ender_star.register();

var plastic = VanillaFactory.createItem("plastic");
plastic.setLocalizedNameSupplier(function(itemStack) {return "Plastic Sheet";});
plastic.register();

var black_iron = VanillaFactory.createItem("black_iron");
black_iron.setLocalizedNameSupplier(function(itemStack) {return "Black Iron Ingot";});
black_iron.register();

var crystal_prism = VanillaFactory.createItem("crystal_prism");
crystal_prism.setLocalizedNameSupplier(function(itemStack) {return "Crystal Prism";});
crystal_prism.register();

var bone_shard = VanillaFactory.createItem("bone_shard");
bone_shard.setLocalizedNameSupplier(function(itemStack) {return "Bone Shard";});
bone_shard.register();

var brick_dust = VanillaFactory.createItem("brick_dust");
brick_dust.setLocalizedNameSupplier(function(itemStack) {return "Brick Dust";});
brick_dust.register();

var fireclay_brick = VanillaFactory.createItem("fireclay_brick");
fireclay_brick.setLocalizedNameSupplier(function(itemStack) {return "Fireclay Brick";});
fireclay_brick.register();

var fireclay_dried = VanillaFactory.createItem("fireclay_dried");
fireclay_dried.setLocalizedNameSupplier(function(itemStack) {return "Dried Fireclay";});
fireclay_dried.register();

var flint_shard = VanillaFactory.createItem("flint_shard");
flint_shard.setLocalizedNameSupplier(function(itemStack) {return "Flint Shard";});
flint_shard.register();

var pressed_fireclay = VanillaFactory.createItem("pressed_fireclay");
pressed_fireclay.setLocalizedNameSupplier(function(itemStack) {return "Pressed Fireclay";});
pressed_fireclay.register();

var pressed_clay = VanillaFactory.createItem("pressed_clay");
pressed_clay.setLocalizedNameSupplier(function(itemStack) {return "Pressed Clay";});
pressed_clay.register();

var root_dried = VanillaFactory.createItem("root_dried");
root_dried.setLocalizedNameSupplier(function(itemStack) {return "Dried Root";});
root_dried.register();

var root_golden = VanillaFactory.createItem("root_golden");
root_golden.setLocalizedNameSupplier(function(itemStack) {return "Golden Root";});
root_golden.register();

var gravel_dust = VanillaFactory.createItem("gravel_dust");
gravel_dust.setLocalizedNameSupplier(function(itemStack) {return "Gravel Dust";});
gravel_dust.register();

var grind_wheel = VanillaFactory.createItem("grind_wheel");
grind_wheel.setLocalizedNameSupplier(function(itemStack) {return "Grinding Wheel";});
grind_wheel.register();

var rail_speed = VanillaFactory.createItem("rail_speed");
rail_speed.setLocalizedNameSupplier(function(itemStack) {return "Speed Rail";});
rail_speed.register();

var rail_standard = VanillaFactory.createItem("rail_standard");
rail_standard.setLocalizedNameSupplier(function(itemStack) {return "Standard Rail";});
rail_standard.register();

var railbed_wood = VanillaFactory.createItem("railbed_wood");
railbed_wood.setLocalizedNameSupplier(function(itemStack) {return "Wooden Railbed";});
railbed_wood.register();

var tie_wood = VanillaFactory.createItem("tie_wood");
tie_wood.setLocalizedNameSupplier(function(itemStack) {return "Wooden Tie";});
tie_wood.register();

var cutting_head = VanillaFactory.createItem("cutting_head");
cutting_head.setLocalizedNameSupplier(function(itemStack) {return "Basic Cutting Head";});
cutting_head.register();

var pattern_ingot = VanillaFactory.createItem("pattern_ingot");
pattern_ingot.setLocalizedNameSupplier(function(itemStack) {return "Ingot Pattern";});
pattern_ingot.maxStackSize = 1;
pattern_ingot.maxDamage = 7;
pattern_ingot.register();

var basic_blade = VanillaFactory.createItem("basic_blade");
basic_blade.setLocalizedNameSupplier(function(itemStack) {return "Basic Blade";});
basic_blade.register();

var fireclay_dust = VanillaFactory.createItem("fireclay_dust");
fireclay_dust.setLocalizedNameSupplier(function(itemStack) {return "Fire Clay Dust";});
fireclay_dust.register();

var pressed_mud = VanillaFactory.createItem("pressed_mud");
pressed_mud.setLocalizedNameSupplier(function(itemStack) {return "Pressed Mud";});
pressed_mud.register();

var copper_coil = VanillaFactory.createItem("copper_coil");
copper_coil.setLocalizedNameSupplier(function(itemStack) {return "Copper Coil";});
copper_coil.register();

var heat_conductor = VanillaFactory.createItem("heat_conductor");
heat_conductor.setLocalizedNameSupplier(function(itemStack) {return "Heat Conductor";});
heat_conductor.register();

var electric_motor = VanillaFactory.createItem("electric_motor");
electric_motor.setLocalizedNameSupplier(function(itemStack) {return "Electric Motor";});
electric_motor.register();

var cast_cable = VanillaFactory.createItem("cast_cable");
cast_cable.setLocalizedNameSupplier(function(itemStack) {return "Cable Cast";});
cast_cable.register();

var diode = VanillaFactory.createItem("diode");
diode.setLocalizedNameSupplier(function(itemStack) {return "Diode";});
diode.register();

var resistor = VanillaFactory.createItem("resistor");
resistor.setLocalizedNameSupplier(function(itemStack) {return "Resistor";});
resistor.register();

// electrodes

var electrode_apatite = VanillaFactory.createItem("electrode_apatite");
electrode_apatite.setLocalizedNameSupplier(function(itemStack) {return "Apatite Electrode";});
electrode_apatite.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_apatite");
electrode_apatite.register();

var electrode_blaze = VanillaFactory.createItem("electrode_blaze");
electrode_blaze.setLocalizedNameSupplier(function(itemStack) {return "Blaze Electrode";});
electrode_blaze.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_blaze");
electrode_blaze.register();

var electrode_bronze = VanillaFactory.createItem("electrode_bronze");
electrode_bronze.setLocalizedNameSupplier(function(itemStack) {return "Bronze Electrode";});
electrode_bronze.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_bronze");
electrode_bronze.register();

var electrode_copper = VanillaFactory.createItem("electrode_copper");
electrode_copper.setLocalizedNameSupplier(function(itemStack) {return "Copper Electrode";});
electrode_copper.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_copper");
electrode_copper.register();

var electrode_diamond = VanillaFactory.createItem("electrode_diamond");
electrode_diamond.setLocalizedNameSupplier(function(itemStack) {return "Diamond Electrode";});
electrode_diamond.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_diamond");
electrode_diamond.register();

var electrode_emerald = VanillaFactory.createItem("electrode_emerald");
electrode_emerald.setLocalizedNameSupplier(function(itemStack) {return "Emerald Electrode";});
electrode_emerald.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_emerald");
electrode_emerald.register();

var electrode_ender = VanillaFactory.createItem("electrode_ender");
electrode_ender.setLocalizedNameSupplier(function(itemStack) {return "Ender Electrode";});
electrode_ender.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_ender");
electrode_ender.register();

var electrode_gold = VanillaFactory.createItem("electrode_gold");
electrode_gold.setLocalizedNameSupplier(function(itemStack) {return "Gold Electrode";});
electrode_gold.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_gold");
electrode_gold.register();

var electrode_iron = VanillaFactory.createItem("electrode_iron");
electrode_iron.setLocalizedNameSupplier(function(itemStack) {return "Iron Electrode";});
electrode_iron.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_iron");
electrode_iron.register();

var electrode_lapis = VanillaFactory.createItem("electrode_lapis");
electrode_lapis.setLocalizedNameSupplier(function(itemStack) {return "Lapis Electrode";});
electrode_lapis.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_lapis");
electrode_lapis.register();

var electrode_obsidian = VanillaFactory.createItem("electrode_obsidian");
electrode_obsidian.setLocalizedNameSupplier(function(itemStack) {return "Obsidian Electrode";});
electrode_obsidian.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_obsidian");
electrode_obsidian.register();

var electrode_orchid = VanillaFactory.createItem("electrode_orchid");
electrode_orchid.setLocalizedNameSupplier(function(itemStack) {return "Redstone Electrode";});
electrode_orchid.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_orchid");
electrode_orchid.register();

var electrode_rubber = VanillaFactory.createItem("electrode_rubber");
electrode_rubber.setLocalizedNameSupplier(function(itemStack) {return "Rubber Electrode";});
electrode_rubber.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_rubber");
electrode_rubber.register();

var electrode_tin = VanillaFactory.createItem("electrode_tin");
electrode_tin.setLocalizedNameSupplier(function(itemStack) {return "Tin Electrode";});
electrode_tin.textureLocation = ResourceLocation.create("contenttweaker:items/electrode/electrode_tin");
electrode_tin.register();
