#priority 100000
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.MaterialSystem;

var wire = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("wire").setPartType(mods.contenttweaker.MaterialSystem.getPartType("item")).setOreDictName("wire").build();

static materials as Material[string] = {
    "antimony": MaterialSystem.getMaterialBuilder().setName("Antimony").setColor(13227179).build(),
    "apatite": MaterialSystem.getMaterialBuilder().setName("Apatite").setColor(13158655).build(),
    "battery_alloy": MaterialSystem.getMaterialBuilder().setName("Battery Alloy").setColor(8019836).build(),
    "red_alloy": MaterialSystem.getMaterialBuilder().setName("Red Alloy").setColor(9250828).build(),
    "soldering_alloy": MaterialSystem.getMaterialBuilder().setName("Soldering Alloy").setColor(11250353).build(),
    "ferromagnetic_alloy": MaterialSystem.getMaterialBuilder().setName("Ferromagnetic Alloy").setColor(8298403).build(),
    "styrene_rubber": MaterialSystem.getMaterialBuilder().setName("Styrene Butadiene Rubber").setColor(1709331).build(),
    "tungsten": MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(7897228).build(),
    
};

function addDefaultMoltenData(moltenData as MaterialPartData) {
	moltenData.addDataValue("density", "4000");
	moltenData.addDataValue("viscosity", "3000");
	moltenData.addDataValue("temperature", "1500");
	moltenData.addDataValue("vaporize", "false");
}

function addDefaultOreData(oreData as MaterialPartData) {
	oreData.addDataValue("variants", "minecraft:stone");
	oreData.addDataValue("hardness", "5");
	oreData.addDataValue("resistance", "15");
	oreData.addDataValue("harvestTool", "pickaxe");
	oreData.addDataValue("harvestLevel", "1");
}
