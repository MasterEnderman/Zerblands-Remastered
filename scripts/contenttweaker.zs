#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.LocalizedNameSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

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

var creative_block = VanillaFactory.createBlock("creative_block", <blockmaterial:iron>);
creative_block.setBlockHardness(5.0);
creative_block.setBlockResistance(30.0);
creative_block.setToolClass("pickaxe");
creative_block.setToolLevel(0);
creative_block.setBlockSoundType(<soundtype:metal>);
creative_block.register();

var bedrockium_block = VanillaFactory.createBlock("bedrockium_block", <blockmaterial:iron>);
bedrockium_block.setBlockHardness(5.0);
bedrockium_block.setBlockResistance(30.0);
bedrockium_block.setToolClass("pickaxe");
bedrockium_block.setToolLevel(0);
bedrockium_block.setBlockSoundType(<soundtype:metal>);
bedrockium_block.register();

var slate_blank = VanillaFactory.createBlock("slate_blank", <blockmaterial:iron>);
slate_blank.setBlockHardness(5.0);
slate_blank.setBlockResistance(30.0);
slate_blank.setToolClass("pickaxe");
slate_blank.setToolLevel(0);
slate_blank.setBlockSoundType(<soundtype:stone>);
slate_blank.register();

var slate_demonic = VanillaFactory.createBlock("slate_demonic", <blockmaterial:iron>);
slate_demonic.setBlockHardness(5.0);
slate_demonic.setBlockResistance(30.0);
slate_demonic.setToolClass("pickaxe");
slate_demonic.setToolLevel(0);
slate_demonic.setBlockSoundType(<soundtype:stone>);
slate_demonic.register();

var slate_ethereal = VanillaFactory.createBlock("slate_ethereal", <blockmaterial:iron>);
slate_ethereal.setBlockHardness(5.0);
slate_ethereal.setBlockResistance(30.0);
slate_ethereal.setToolClass("pickaxe");
slate_ethereal.setToolLevel(0);
slate_ethereal.setBlockSoundType(<soundtype:stone>);
slate_ethereal.register();

var slate_imbued = VanillaFactory.createBlock("slate_imbued", <blockmaterial:iron>);
slate_imbued.setBlockHardness(5.0);
slate_imbued.setBlockResistance(30.0);
slate_imbued.setToolClass("pickaxe");
slate_imbued.setToolLevel(0);
slate_imbued.setBlockSoundType(<soundtype:stone>);
slate_imbued.register();

var slate_reinforced = VanillaFactory.createBlock("slate_reinforced", <blockmaterial:iron>);
slate_reinforced.setBlockHardness(5.0);
slate_reinforced.setBlockResistance(30.0);
slate_reinforced.setToolClass("pickaxe");
slate_reinforced.setToolLevel(0);
slate_reinforced.setBlockSoundType(<soundtype:stone>);
slate_reinforced.register();
