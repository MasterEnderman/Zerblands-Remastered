import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.functions.toString;
import scripts.functions.getOreDict;
import scripts.functions.getItem;
import scripts.functions.getItemAny;
import scripts.functions.getItemMeta;
import scripts.functions.getItemString;
import scripts.functions.getArrayString;
import scripts.functions.getItemsFromMod;
import scripts.functions.getFluid;
import scripts.functions.getBucket;
import scripts.functions.getBucketDefault;
import scripts.functions.findFirstItemFromMod;

import mods.astralsorcery.Altar;
import mods.avaritia.ExtremeCrafting;
import mods.tconstruct.Melting;

Melting.removeRecipe(<liquid:neutronium>,<avaritia:resource:2>);

ExtremeCrafting.remove(<avaritia:resource:5>);

recipes.remove(<avaritia:extreme_crafting_table>);
Altar.addTraitAltarRecipe("dire_table",<avaritia:extreme_crafting_table>, 2000, 1000, [
    <draconicevolution:fusion_crafting_core>,<appliedenergistics2:material:34>,<draconicevolution:fusion_crafting_core>,
    <appliedenergistics2:material:34>,<avaritia:double_compressed_crafting_table>,<appliedenergistics2:material:34>,
    <draconicevolution:fusion_crafting_core>,<appliedenergistics2:material:34>,<draconicevolution:fusion_crafting_core>,
    <avaritia:block_resource:2>,<avaritia:block_resource:2>,<avaritia:block_resource:2>,
    <avaritia:block_resource:2>,<avaritia:block_resource:2>,<avaritia:block_resource:2>,
    <avaritia:block_resource:2>,<avaritia:block_resource:2>,<avaritia:block_resource:2>,
    <avaritia:block_resource:2>,<avaritia:block_resource:2>,<avaritia:block_resource:2>,
    <avaritia:block_resource:2>,<avaritia:block_resource:2>,<avaritia:block_resource:2>,
    <avaritia:block_resource:2>,
    // Outer Items
    <botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,
    <botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,
    <botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,
    <botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,
    <botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,
    <botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,
    <botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,
    <botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>,<botania:manaresource:11>
], "astralsorcery.constellation.horologium");

ExtremeCrafting.remove(<avaritia:infinity_pickaxe>);
ExtremeCrafting.addShaped("infinity_pickaxe",<avaritia:infinity_pickaxe>, [
    [null,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,null],
    [<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<minecraft:bedrock>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>,<avaritia:resource:6>],
    [<avaritia:resource:6>,<avaritia:resource:6>,null,null,<contenttweaker:bedrockium_ingot>,null,null,<avaritia:resource:6>,<avaritia:resource:6>],
    [null,null,null,null,<contenttweaker:bedrockium_ingot>,null,null,null,null],
    [null,null,null,null,<contenttweaker:bedrockium_ingot>,null,null,null,null],
    [null,null,null,null,<contenttweaker:bedrockium_ingot>,null,null,null,null],
    [null,null,null,null,<contenttweaker:bedrockium_ingot>,null,null,null,null],
    [null,null,null,null,<contenttweaker:bedrockium_ingot>,null,null,null,null],
    [null,null,null,null,<contenttweaker:bedrockium_ingot>,null,null,null,null]
]);
