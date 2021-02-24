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

// Roots Legacy

var runestone = VanillaFactory.createBlock("runestone", <blockmaterial:iron>);
runestone.textureLocation = ResourceLocation.create("contenttweaker:blocks/roots/runestone");
runestone.setBlockHardness(5.0);
runestone.setBlockResistance(30.0);
runestone.setToolClass("pickaxe");
runestone.setToolLevel(0);
runestone.setBlockSoundType(<soundtype:stone>);
runestone.register();

var runestone_brick = VanillaFactory.createBlock("runestone_brick", <blockmaterial:iron>);
runestone_brick.textureLocation = ResourceLocation.create("contenttweaker:blocks/roots/runestone_brick");
runestone_brick.setBlockHardness(5.0);
runestone_brick.setBlockResistance(30.0);
runestone_brick.setToolClass("pickaxe");
runestone_brick.setToolLevel(0);
runestone_brick.setBlockSoundType(<soundtype:stone>);
runestone_brick.register();

var runestone_chiseled = VanillaFactory.createBlock("runestone_chiseled", <blockmaterial:iron>);
runestone_chiseled.textureLocation = ResourceLocation.create("contenttweaker:blocks/roots/runestone_chiseled");
runestone_chiseled.setBlockHardness(5.0);
runestone_chiseled.setBlockResistance(30.0);
runestone_chiseled.setToolClass("pickaxe");
runestone_chiseled.setToolLevel(0);
runestone_chiseled.setBlockSoundType(<soundtype:stone>);
runestone_chiseled.register();

// AbyssalCraft Legacy

var asb = VanillaFactory.createBlock("asb", <blockmaterial:iron>);
asb.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/asb");
asb.setBlockHardness(5.0);
asb.setBlockResistance(30.0);
asb.setToolClass("pickaxe");
asb.setToolLevel(0);
asb.setBlockSoundType(<soundtype:stone>);
asb.register();

var asbc = VanillaFactory.createBlock("asbc", <blockmaterial:iron>);
asbc.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/asbc");
asbc.setBlockHardness(5.0);
asbc.setBlockResistance(30.0);
asbc.setToolClass("pickaxe");
asbc.setToolLevel(0);
asbc.setBlockSoundType(<soundtype:stone>);
asbc.register();

var asbcr = VanillaFactory.createBlock("asbcr", <blockmaterial:iron>);
asbcr.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/asbcr");
asbcr.setBlockHardness(5.0);
asbcr.setBlockResistance(30.0);
asbcr.setToolClass("pickaxe");
asbcr.setToolLevel(0);
asbcr.setBlockSoundType(<soundtype:stone>);
asbcr.register();

var asbf = VanillaFactory.createBlock("asbf", <blockmaterial:iron>);
asbf.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/asbf");
asbf.setBlockHardness(5.0);
asbf.setBlockResistance(30.0);
asbf.setToolClass("pickaxe");
asbf.setToolLevel(0);
asbf.setBlockSoundType(<soundtype:stone>);
asbf.register();

var asc = VanillaFactory.createBlock("asc", <blockmaterial:iron>);
asc.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/asc");
asc.setBlockHardness(5.0);
asc.setBlockResistance(30.0);
asc.setToolClass("pickaxe");
asc.setToolLevel(0);
asc.setBlockSoundType(<soundtype:stone>);
asc.register();

var boa = VanillaFactory.createBlock("boa", <blockmaterial:iron>);
boa.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/boa");
boa.setBlockHardness(5.0);
boa.setBlockResistance(30.0);
boa.setToolClass("pickaxe");
boa.setToolLevel(0);
boa.setBlockSoundType(<soundtype:stone>);
boa.register();

var boc = VanillaFactory.createBlock("boc", <blockmaterial:iron>);
boc.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/boc");
boc.setBlockHardness(5.0);
boc.setBlockResistance(30.0);
boc.setToolClass("pickaxe");
boc.setToolLevel(0);
boc.setBlockSoundType(<soundtype:stone>);
boc.register();

var bod = VanillaFactory.createBlock("bod", <blockmaterial:iron>);
bod.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/bod");
bod.setBlockHardness(5.0);
bod.setBlockResistance(30.0);
bod.setToolClass("pickaxe");
bod.setToolLevel(0);
bod.setBlockSoundType(<soundtype:stone>);
bod.register();

var boe = VanillaFactory.createBlock("boe", <blockmaterial:iron>);
boe.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/boe");
boe.setBlockHardness(5.0);
boe.setBlockResistance(30.0);
boe.setToolClass("pickaxe");
boe.setToolLevel(0);
boe.setBlockSoundType(<soundtype:stone>);
boe.register();

var coraliumcobblestone = VanillaFactory.createBlock("coraliumcobblestone", <blockmaterial:iron>);
coraliumcobblestone.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/coraliumcobblestone");
coraliumcobblestone.setBlockHardness(5.0);
coraliumcobblestone.setBlockResistance(30.0);
coraliumcobblestone.setToolClass("pickaxe");
coraliumcobblestone.setToolLevel(0);
coraliumcobblestone.setBlockSoundType(<soundtype:stone>);
coraliumcobblestone.register();

var cstone = VanillaFactory.createBlock("cstone", <blockmaterial:iron>);
cstone.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/cstone");
cstone.setBlockHardness(5.0);
cstone.setBlockResistance(30.0);
cstone.setToolClass("pickaxe");
cstone.setToolLevel(0);
cstone.setBlockSoundType(<soundtype:stone>);
cstone.register();

var cstonebrick = VanillaFactory.createBlock("cstonebrick", <blockmaterial:iron>);
cstonebrick.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/cstonebrick");
cstonebrick.setBlockHardness(5.0);
cstonebrick.setBlockResistance(30.0);
cstonebrick.setToolClass("pickaxe");
cstonebrick.setToolLevel(0);
cstonebrick.setBlockSoundType(<soundtype:stone>);
cstonebrick.register();

var cstonebrickc = VanillaFactory.createBlock("cstonebrickc", <blockmaterial:iron>);
cstonebrickc.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/cstonebrickc");
cstonebrickc.setBlockHardness(5.0);
cstonebrickc.setBlockResistance(30.0);
cstonebrickc.setToolClass("pickaxe");
cstonebrickc.setToolLevel(0);
cstonebrickc.setBlockSoundType(<soundtype:stone>);
cstonebrickc.register();

var cstonebrickcr = VanillaFactory.createBlock("cstonebrickcr", <blockmaterial:iron>);
cstonebrickcr.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/cstonebrickcr");
cstonebrickcr.setBlockHardness(5.0);
cstonebrickcr.setBlockResistance(30.0);
cstonebrickcr.setToolClass("pickaxe");
cstonebrickcr.setToolLevel(0);
cstonebrickcr.setBlockSoundType(<soundtype:stone>);
cstonebrickcr.register();

var deb = VanillaFactory.createBlock("deb", <blockmaterial:iron>);
deb.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/deb");
deb.setBlockHardness(5.0);
deb.setBlockResistance(30.0);
deb.setToolClass("pickaxe");
deb.setToolLevel(0);
deb.setBlockSoundType(<soundtype:stone>);
deb.register();

var debc = VanillaFactory.createBlock("debc", <blockmaterial:iron>);
debc.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/debc");
debc.setBlockHardness(5.0);
debc.setBlockResistance(30.0);
debc.setToolClass("pickaxe");
debc.setToolLevel(0);
debc.setBlockSoundType(<soundtype:stone>);
debc.register();

var debcr = VanillaFactory.createBlock("debcr", <blockmaterial:iron>);
debcr.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/debcr");
debcr.setBlockHardness(5.0);
debcr.setBlockResistance(30.0);
debcr.setToolClass("pickaxe");
debcr.setToolLevel(0);
debcr.setBlockSoundType(<soundtype:stone>);
debcr.register();

var debp = VanillaFactory.createBlock("debp", <blockmaterial:iron>);
debp.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/debp");
debp.setBlockHardness(5.0);
debp.setBlockResistance(30.0);
debp.setToolClass("pickaxe");
debp.setToolLevel(0);
debp.setBlockSoundType(<soundtype:stone>);
debp.register();

var debp_top = VanillaFactory.createBlock("debp_top", <blockmaterial:iron>);
debp_top.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/debp_top");
debp_top.setBlockHardness(5.0);
debp_top.setBlockResistance(30.0);
debp_top.setToolClass("pickaxe");
debp_top.setToolLevel(0);
debp_top.setBlockSoundType(<soundtype:stone>);
debp_top.register();

var drs = VanillaFactory.createBlock("drs", <blockmaterial:iron>);
drs.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/drs");
drs.setBlockHardness(5.0);
drs.setBlockResistance(30.0);
drs.setToolClass("pickaxe");
drs.setToolLevel(0);
drs.setBlockSoundType(<soundtype:stone>);
drs.register();

var drsb = VanillaFactory.createBlock("drsb", <blockmaterial:iron>);
drsb.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/drsb");
drsb.setBlockHardness(5.0);
drsb.setBlockResistance(30.0);
drsb.setToolClass("pickaxe");
drsb.setToolLevel(0);
drsb.setBlockSoundType(<soundtype:stone>);
drsb.register();

var drsbc = VanillaFactory.createBlock("drsbc", <blockmaterial:iron>);
drsbc.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/drsbc");
drsbc.setBlockHardness(5.0);
drsbc.setBlockResistance(30.0);
drsbc.setToolClass("pickaxe");
drsbc.setToolLevel(0);
drsbc.setBlockSoundType(<soundtype:stone>);
drsbc.register();

var drsbcr = VanillaFactory.createBlock("drsbcr", <blockmaterial:iron>);
drsbcr.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/drsbcr");
drsbcr.setBlockHardness(5.0);
drsbcr.setBlockResistance(30.0);
drsbcr.setToolClass("pickaxe");
drsbcr.setToolLevel(0);
drsbcr.setBlockSoundType(<soundtype:stone>);
drsbcr.register();

var ds = VanillaFactory.createBlock("ds", <blockmaterial:iron>);
ds.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/ds");
ds.setBlockHardness(5.0);
ds.setBlockResistance(30.0);
ds.setToolClass("pickaxe");
ds.setToolLevel(0);
ds.setBlockSoundType(<soundtype:stone>);
ds.register();

var dsb = VanillaFactory.createBlock("dsb", <blockmaterial:iron>);
dsb.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/dsb");
dsb.setBlockHardness(5.0);
dsb.setBlockResistance(30.0);
dsb.setToolClass("pickaxe");
dsb.setToolLevel(0);
dsb.setBlockSoundType(<soundtype:stone>);
dsb.register();

var dsbc = VanillaFactory.createBlock("dsbc", <blockmaterial:iron>);
dsbc.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/dsbc");
dsbc.setBlockHardness(5.0);
dsbc.setBlockResistance(30.0);
dsbc.setToolClass("pickaxe");
dsbc.setToolLevel(0);
dsbc.setBlockSoundType(<soundtype:stone>);
dsbc.register();

var dsbcr = VanillaFactory.createBlock("dsbcr", <blockmaterial:iron>);
dsbcr.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/dsbcr");
dsbcr.setBlockHardness(5.0);
dsbcr.setBlockResistance(30.0);
dsbcr.setToolClass("pickaxe");
dsbcr.setToolLevel(0);
dsbcr.setBlockSoundType(<soundtype:stone>);
dsbcr.register();

var dsbf = VanillaFactory.createBlock("dsbf", <blockmaterial:iron>);
dsbf.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/dsbf");
dsbf.setBlockHardness(5.0);
dsbf.setBlockResistance(30.0);
dsbf.setToolClass("pickaxe");
dsbf.setToolLevel(0);
dsbf.setBlockSoundType(<soundtype:stone>);
dsbf.register();

var dsc = VanillaFactory.createBlock("dsc", <blockmaterial:iron>);
dsc.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/dsc");
dsc.setBlockHardness(5.0);
dsc.setBlockResistance(30.0);
dsc.setToolClass("pickaxe");
dsc.setToolLevel(0);
dsc.setBlockSoundType(<soundtype:stone>);
dsc.register();

var dsglow = VanillaFactory.createBlock("dsglow", <blockmaterial:iron>);
dsglow.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/dsglow");
dsglow.setBlockHardness(5.0);
dsglow.setBlockResistance(30.0);
dsglow.setToolClass("pickaxe");
dsglow.setToolLevel(0);
dsglow.setBlockSoundType(<soundtype:stone>);
dsglow.register();

var dsssides = VanillaFactory.createBlock("dsssides", <blockmaterial:iron>);
dsssides.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/dsssides");
dsssides.setBlockHardness(5.0);
dsssides.setBlockResistance(30.0);
dsssides.setToolClass("pickaxe");
dsssides.setToolLevel(0);
dsssides.setBlockSoundType(<soundtype:stone>);
dsssides.register();

var dsstop = VanillaFactory.createBlock("dsstop", <blockmaterial:iron>);
dsstop.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/dsstop");
dsstop.setBlockHardness(5.0);
dsstop.setBlockResistance(30.0);
dsstop.setToolClass("pickaxe");
dsstop.setToolLevel(0);
dsstop.setBlockSoundType(<soundtype:stone>);
dsstop.register();

var eb = VanillaFactory.createBlock("eb", <blockmaterial:iron>);
eb.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/eb");
eb.setBlockHardness(5.0);
eb.setBlockResistance(30.0);
eb.setToolClass("pickaxe");
eb.setToolLevel(0);
eb.setBlockSoundType(<soundtype:stone>);
eb.register();

var ebc = VanillaFactory.createBlock("ebc", <blockmaterial:iron>);
ebc.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/ebc");
ebc.setBlockHardness(5.0);
ebc.setBlockResistance(30.0);
ebc.setToolClass("pickaxe");
ebc.setToolLevel(0);
ebc.setBlockSoundType(<soundtype:stone>);
ebc.register();

var ebcr = VanillaFactory.createBlock("ebcr", <blockmaterial:iron>);
ebcr.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/ebcr");
ebcr.setBlockHardness(5.0);
ebcr.setBlockResistance(30.0);
ebcr.setToolClass("pickaxe");
ebcr.setToolLevel(0);
ebcr.setBlockSoundType(<soundtype:stone>);
ebcr.register();

var ebp = VanillaFactory.createBlock("ebp", <blockmaterial:iron>);
ebp.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/ebp");
ebp.setBlockHardness(5.0);
ebp.setBlockResistance(30.0);
ebp.setToolClass("pickaxe");
ebp.setToolLevel(0);
ebp.setBlockSoundType(<soundtype:stone>);
ebp.register();

var ebp_top = VanillaFactory.createBlock("ebp_top", <blockmaterial:iron>);
ebp_top.textureLocation = ResourceLocation.create("contenttweaker:blocks/ac/ebp_top");
ebp_top.setBlockHardness(5.0);
ebp_top.setBlockResistance(30.0);
ebp_top.setToolClass("pickaxe");
ebp_top.setToolLevel(0);
ebp_top.setBlockSoundType(<soundtype:stone>);
ebp_top.register();

// Dark Utilities

var wither_bricked = VanillaFactory.createBlock("wither_bricked", <blockmaterial:iron>);
wither_bricked.textureLocation = ResourceLocation.create("contenttweaker:blocks/du/wither_bricked");
wither_bricked.setBlockHardness(5.0);
wither_bricked.setBlockResistance(30.0);
wither_bricked.setToolClass("pickaxe");
wither_bricked.setToolLevel(0);
wither_bricked.setBlockSoundType(<soundtype:stone>);
wither_bricked.register();

var wither_carved = VanillaFactory.createBlock("wither_carved", <blockmaterial:iron>);
wither_carved.textureLocation = ResourceLocation.create("contenttweaker:blocks/du/wither_carved");
wither_carved.setBlockHardness(5.0);
wither_carved.setBlockResistance(30.0);
wither_carved.setToolClass("pickaxe");
wither_carved.setToolLevel(0);
wither_carved.setBlockSoundType(<soundtype:stone>);
wither_carved.register();

var wither_chiseled = VanillaFactory.createBlock("wither_chiseled", <blockmaterial:iron>);
wither_chiseled.textureLocation = ResourceLocation.create("contenttweaker:blocks/du/wither_chiseled");
wither_chiseled.setBlockHardness(5.0);
wither_chiseled.setBlockResistance(30.0);
wither_chiseled.setToolClass("pickaxe");
wither_chiseled.setToolLevel(0);
wither_chiseled.setBlockSoundType(<soundtype:stone>);
wither_chiseled.register();

var wither_magma = VanillaFactory.createBlock("wither_magma", <blockmaterial:iron>);
wither_magma.textureLocation = ResourceLocation.create("contenttweaker:blocks/du/wither_magma");
wither_magma.setBlockHardness(5.0);
wither_magma.setBlockResistance(30.0);
wither_magma.setToolClass("pickaxe");
wither_magma.setToolLevel(0);
wither_magma.setBlockSoundType(<soundtype:stone>);
wither_magma.register();

var wither_tiled = VanillaFactory.createBlock("wither_tiled", <blockmaterial:iron>);
wither_tiled.textureLocation = ResourceLocation.create("contenttweaker:blocks/du/wither_tiled");
wither_tiled.setBlockHardness(5.0);
wither_tiled.setBlockResistance(30.0);
wither_tiled.setToolClass("pickaxe");
wither_tiled.setToolLevel(0);
wither_tiled.setBlockSoundType(<soundtype:stone>);
wither_tiled.register();

var wither_clean = VanillaFactory.createBlock("wither_clean", <blockmaterial:iron>);
wither_clean.textureLocation = ResourceLocation.create("contenttweaker:blocks/du/wither_clean");
wither_clean.setBlockHardness(5.0);
wither_clean.setBlockResistance(30.0);
wither_clean.setToolClass("pickaxe");
wither_clean.setToolLevel(0);
wither_clean.setBlockSoundType(<soundtype:stone>);
wither_clean.register();

var withersand = VanillaFactory.createBlock("withersand", <blockmaterial:iron>);
withersand.textureLocation = ResourceLocation.create("contenttweaker:blocks/du/withersand");
withersand.setBlockHardness(5.0);
withersand.setBlockResistance(30.0);
withersand.setToolClass("pickaxe");
withersand.setToolLevel(0);
withersand.setBlockSoundType(<soundtype:stone>);
withersand.register();
