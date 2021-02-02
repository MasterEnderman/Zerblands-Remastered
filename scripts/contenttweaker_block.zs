#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.LocalizedNameSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

// legacy

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

var blood_infused_stone = VanillaFactory.createBlock("blood_infused_stone", <blockmaterial:iron>);
blood_infused_stone.setBlockHardness(5.0);
blood_infused_stone.setBlockResistance(30.0);
blood_infused_stone.setToolClass("pickaxe");
blood_infused_stone.setToolLevel(0);
blood_infused_stone.setBlockSoundType(<soundtype:stone>);
blood_infused_stone.register();
