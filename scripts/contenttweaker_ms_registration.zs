#priority 99999
#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

import scripts.contenttweaker_ms_definition.addDefaultMoltenData;
import scripts.contenttweaker_ms_definition.addDefaultOreData;
import scripts.contenttweaker_ms_definition.materials;

//antimony

var antimonyFluidData as MaterialPartData = materials.antimony.registerPart("molten").getData();
addDefaultMoltenData(antimonyFluidData);

materials.antimony.registerParts(["block", "nugget", "ingot", "dust"] as string[]);

//apatite

materials.apatite.registerParts(["dust"] as string[]);

//battery_alloy

var battery_alloyFluidData as MaterialPartData = materials.battery_alloy.registerPart("molten").getData();
addDefaultMoltenData(battery_alloyFluidData);

materials.battery_alloy.registerParts(["block", "nugget", "ingot", "dust", "plate"] as string[]);

//red_alloy

var red_alloyFluidData as MaterialPartData = materials.red_alloy.registerPart("molten").getData();
addDefaultMoltenData(red_alloyFluidData);

materials.red_alloy.registerParts(["block", "nugget", "ingot", "dust", "plate", "wire"] as string[]);

//soldering_alloy

var soldering_alloyFluidData as MaterialPartData = materials.soldering_alloy.registerPart("molten").getData();
addDefaultMoltenData(soldering_alloyFluidData);

materials.soldering_alloy.registerParts(["block", "nugget", "ingot", "dust"] as string[]);

//styrene_rubber

var styrene_rubberFluidData as MaterialPartData = materials.styrene_rubber.registerPart("molten").getData();
addDefaultMoltenData(styrene_rubberFluidData);

materials.styrene_rubber.registerParts(["plate"] as string[]);

//tungsten

var tungstenFluidData as MaterialPartData = materials.tungsten.registerPart("molten").getData();
addDefaultMoltenData(tungstenFluidData);

materials.tungsten.registerParts(["block", "nugget", "ingot", "dust", "plate", "small_dust", "tiny_dust"] as string[]);

//ferromagnetic_alloy

var ferromagnetic_alloyFluidData as MaterialPartData = materials.ferromagnetic_alloy.registerPart("molten").getData();
addDefaultMoltenData(ferromagnetic_alloyFluidData);

materials.ferromagnetic_alloy.registerParts(["block", "nugget", "ingot", "dust"] as string[]);

// Ore Processing

var materialsOreProcessing as Material[] = [
    materials.aluminum,
    materials.ardite,
    materials.cobalt,
    materials.copper,
    materials.gold,
    materials.iridium,
    materials.iron,
    materials.lead,
    materials.mithril,
    materials.nickel,
    materials.platinum,
    materials.silver,
    materials.tin,
    materials.uranium,
    materials.abyssalnite,
    materials.coralium
];

var partsOreProcessing as string[] = [
	"clump",
	"shard",
	"crystal",
	"dirty_dust"
];

for i, metal in materialsOreProcessing {
	metal.registerParts(partsOreProcessing);
}
