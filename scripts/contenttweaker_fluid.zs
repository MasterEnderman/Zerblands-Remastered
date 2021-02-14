#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.LocalizedNameSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

// nightmare

var sulfurAcid = VanillaFactory.createFluid("sulfuric_acid", 16243782);
sulfurAcid.register();

var hydrogenChlorid = VanillaFactory.createFluid("hydrogen_chlorid", 5271290);
hydrogenChlorid.register();

var ethylene = VanillaFactory.createFluid("ethylene", 16414835);
ethylene.gaseous = true;
ethylene.register();

var plastic = VanillaFactory.createFluid("plastic", 9868950);
plastic.register();

var colour_out_of_space = VanillaFactory.createFluid("colour_out_of_space", 14474460);
colour_out_of_space.register();

var briny_water = VanillaFactory.createFluid("briny_water", 15254434);
briny_water.register();

var saline_water = VanillaFactory.createFluid("saline_water", 12169397);
saline_water.register();

var brackish_water = VanillaFactory.createFluid("brackish_water", 9150151);
brackish_water.register();
