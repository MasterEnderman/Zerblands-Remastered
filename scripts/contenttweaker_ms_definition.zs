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
	// Ore Processing
    "abyssalnite": MaterialSystem.getMaterialBuilder().setName("Abyssalnite").setColor(5842089).build(),
    "aluminum": MaterialSystem.getMaterialBuilder().setName("Aluminum").setColor(7566971).build(),
    "ardite": MaterialSystem.getMaterialBuilder().setName("Ardite").setColor(7875094).build(),
    "cobalt": MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(7781596).build(),
    "copper": MaterialSystem.getMaterialBuilder().setName("Copper").setColor(13405015).build(),
    "coralium": MaterialSystem.getMaterialBuilder().setName("Coralium").setColor(1352814).build(),
    "gold": MaterialSystem.getMaterialBuilder().setName("Gold").setColor(10769936).build(),
    "iridium": MaterialSystem.getMaterialBuilder().setName("Iridium").setColor(10069182).build(),
	"iron": MaterialSystem.getMaterialBuilder().setName("Iron").setColor(5131854).build(),
    "lead": MaterialSystem.getMaterialBuilder().setName("Lead").setColor(5528431).build(),
    "mithril": MaterialSystem.getMaterialBuilder().setName("Mithril").setColor(3953504).build(),
    "nickel": MaterialSystem.getMaterialBuilder().setName("Nickel").setColor(15132617).build(),
    "platinum": MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(4893919).build(),
    "silver": MaterialSystem.getMaterialBuilder().setName("Silver").setColor(12108744).build(),
    "tin": MaterialSystem.getMaterialBuilder().setName("Tin").setColor(7050151).build(),
    "uranium": MaterialSystem.getMaterialBuilder().setName("Uranium").setColor(8164468).build(),
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
