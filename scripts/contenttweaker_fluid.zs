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

var battery_solution = VanillaFactory.createFluid("battery_solution", 10858474);
battery_solution.register();

var briny_water = VanillaFactory.createFluid("briny_water", 15254434);
briny_water.register();

var saline_water = VanillaFactory.createFluid("saline_water", 12169397);
saline_water.register();

var brackish_water = VanillaFactory.createFluid("brackish_water", 9150151);
brackish_water.register();

var steamed_naphtha = VanillaFactory.createFluid("steamed_naphtha", 12563728);
steamed_naphtha.register();

var toluene = VanillaFactory.createFluid("toluene", 7946536);
toluene.register();

var benzene = VanillaFactory.createFluid("benzene", 1907997);
benzene.register();

var butadiene = VanillaFactory.createFluid("butadiene", 12016140);
butadiene.register();

var styrene = VanillaFactory.createFluid("styrene", 10656403);
styrene.register();

var hydrochloric_acid = VanillaFactory.createFluid("hydrochloric_acid", 15859640);
hydrochloric_acid.register();

var iron_chloride = VanillaFactory.createFluid("iron_chloride", 16774725);
iron_chloride.register();

var hydrogen = VanillaFactory.createFluid("hydrogen", 928965);
hydrogen.register();

var oxygen = VanillaFactory.createFluid("oxygen", 6460092);
oxygen.register();

var sodium_persulfate = VanillaFactory.createFluid("sodium_persulfate", 220509);
sodium_persulfate.register();

var sodium_hydroxide = VanillaFactory.createFluid("sodium_hydroxide", 7496);
sodium_hydroxide.register();

var ectoplasma = VanillaFactory.createFluid("ectoplasma", 2080478);
ectoplasma.register();

var ambrosia = VanillaFactory.createFluid("ambrosia", 10713609);
ambrosia.register();
