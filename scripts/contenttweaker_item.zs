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
