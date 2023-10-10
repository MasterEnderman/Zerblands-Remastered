#loader contenttweaker
#modloaded tconstruct

import mods.contenttweaker.conarm.ArmorTrait;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;

val ethaxium = mods.contenttweaker.conarm.ExtendedMaterialBuilder.create("ethaxium");
ethaxium.color = 0x969e8a;
ethaxium.craftable = true;
ethaxium.addItem(<item:abyssalcraft:ethaxiumingot>);
ethaxium.representativeItem = <item:abyssalcraft:ethaxiumingot>;
ethaxium.addHeadMaterialStats(1380, 16.0f, 9.0f, 8);
ethaxium.addHandleMaterialStats(0.9, 60);
ethaxium.addExtraMaterialStats(100);
ethaxium.addBowMaterialStats(1.27, 1.4, 4.5);
ethaxium.addProjectileMaterialStats();
ethaxium.addCoreMaterialStats(65, 40.5);
ethaxium.addPlatesMaterialStats(19.06, 11.2, 0);
ethaxium.addTrimMaterialStats(11.2);
ethaxium.addMaterialTrait("shielding_armor", "core");
ethaxium.addMaterialTrait("vengeful_armor", "plates");
ethaxium.addMaterialTrait("steady_armor", "trim");
ethaxium.addMaterialTrait("alien", null);
ethaxium.addMaterialTrait("unnatural", null);
ethaxium.localizedName = "Ethaxium";
ethaxium.register();
