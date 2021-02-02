#packmode nightmare

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

import mods.jei.JEI;
import mods.thermalexpansion.Sawmill;

<ore:materialFlesh>.add(<evilcraft:werewolf_flesh:1>);
<ore:ingotEnder>.add(<contenttweaker:ender_ingot>);

recipes.remove(<ore:gearWood>);
recipes.addShaped("gear_wood", findFirstItemFromMod("thermalfoundation","gear","wood"), [
    [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>],
    [<ore:stickTreatedWood>,<ore:plankTreatedWood>,<ore:stickTreatedWood>],
    [<ore:stickTreatedWood>,<ore:stickTreatedWood>,<ore:stickTreatedWood>]
]);

var mapWood as IItemStack[IItemStack] = {
    // minecraft
    <minecraft:log> : <minecraft:planks>,
    <minecraft:log:1> : <minecraft:planks:1>,
    <minecraft:log:2> : <minecraft:planks:2>,
    <minecraft:log:3> : <minecraft:planks:3>,
    <minecraft:log2> : <minecraft:planks:4>,
    <minecraft:log2:1> : <minecraft:planks:5>,
    // botania
    <botania:livingwood> : <botania:livingwood:1>,
    <botania:dreamwood> : <botania:dreamwood:1>,
    // astral sorcery
    <astralsorcery:blockinfusedwood> : <astralsorcery:blockinfusedwood:1>,
    // evilcraft
    <evilcraft:undead_log> : <evilcraft:undead_plank>,
    // random things
    <randomthings:spectrelog> : <randomthings:spectreplank>,
    // blood arsenal
    <bloodarsenal:blood_infused_wooden_log> : <bloodarsenal:blood_infused_wooden_planks>,
    // calculator
    <calculator:pearlog> : <calculator:pearplanks>,
    <calculator:diamondlog> : <calculator:diamondplanks>,
    <calculator:amethystlog> : <calculator:amethystplanks>,
    <calculator:tanzanitelog> : <calculator:tanzaniteplanks>,
    // abyssalcraft
    <abyssalcraft:dreadlog> : <abyssalcraft:dreadplanks>,
    <abyssalcraft:dltlog> : <abyssalcraft:dltplank>,
    // foretry
    <forestry:logs.0> : <forestry:planks.0>,
    <forestry:logs.0:1> : <forestry:planks.0:1>,
    <forestry:logs.0:2> : <forestry:planks.0:2>,
    <forestry:logs.0:3> : <forestry:planks.0:3>,
    <forestry:logs.1> : <forestry:planks.0:4>,
    <forestry:logs.1:1> : <forestry:planks.0:5>,
    <forestry:logs.1:2> : <forestry:planks.0:6>,
    <forestry:logs.1:3> : <forestry:planks.0:7>,
    <forestry:logs.2> : <forestry:planks.0:8>,
    <forestry:logs.2:1> : <forestry:planks.0:9>,
    <forestry:logs.2:2> : <forestry:planks.0:10>,
    <forestry:logs.2:3> : <forestry:planks.0:11>,
    <forestry:logs.3> : <forestry:planks.0:12>,
    <forestry:logs.3:1> : <forestry:planks.0:13>,
    <forestry:logs.3:2> : <forestry:planks.0:14>,
    <forestry:logs.3:3> : <forestry:planks.0:15>,
    <forestry:logs.4> : <forestry:planks.1>,
    <forestry:logs.4:1> : <forestry:planks.1:1>,
    <forestry:logs.4:2> : <forestry:planks.1:2>,
    <forestry:logs.4:3> : <forestry:planks.1:3>,
    <forestry:logs.5> : <forestry:planks.1:4>,
    <forestry:logs.5:1> : <forestry:planks.1:5>,
    <forestry:logs.5:2> : <forestry:planks.1:6>,
    <forestry:logs.5:3> : <forestry:planks.1:7>,
    <forestry:logs.6> : <forestry:planks.1:8>,
    <forestry:logs.6:1> : <forestry:planks.1:9>,
    <forestry:logs.6:2> : <forestry:planks.1:10>,
    <forestry:logs.6:3> : <forestry:planks.1:11>,
    <forestry:logs.7> : <forestry:planks.1:12>,
    <forestry:logs.fireproof.0> : <forestry:planks.fireproof.0>,
    <forestry:logs.fireproof.0:1> : <forestry:planks.fireproof.0:1>,
    <forestry:logs.fireproof.0:2> : <forestry:planks.fireproof.0:2>,
    <forestry:logs.fireproof.0:3> : <forestry:planks.fireproof.0:3>,
    <forestry:logs.fireproof.1> : <forestry:planks.fireproof.0:4>,
    <forestry:logs.fireproof.1:1> : <forestry:planks.fireproof.0:5>,
    <forestry:logs.fireproof.1:2> : <forestry:planks.fireproof.0:6>,
    <forestry:logs.fireproof.1:3> : <forestry:planks.fireproof.0:7>,
    <forestry:logs.fireproof.2> : <forestry:planks.fireproof.0:8>,
    <forestry:logs.fireproof.2:1> : <forestry:planks.fireproof.0:9>,
    <forestry:logs.fireproof.2:2> : <forestry:planks.fireproof.0:10>,
    <forestry:logs.fireproof.2:3> : <forestry:planks.fireproof.0:11>,
    <forestry:logs.fireproof.3> : <forestry:planks.fireproof.0:12>,
    <forestry:logs.fireproof.3:1> : <forestry:planks.fireproof.0:13>,
    <forestry:logs.fireproof.3:2> : <forestry:planks.fireproof.0:14>,
    <forestry:logs.fireproof.3:3> : <forestry:planks.fireproof.0:15>,
    <forestry:logs.fireproof.4> : <forestry:planks.fireproof.1>,
    <forestry:logs.fireproof.4:1> : <forestry:planks.fireproof.1:1>,
    <forestry:logs.fireproof.4:2> : <forestry:planks.fireproof.1:2>,
    <forestry:logs.fireproof.4:3> : <forestry:planks.fireproof.1:3>,
    <forestry:logs.fireproof.5> : <forestry:planks.fireproof.1:4>,
    <forestry:logs.fireproof.5:1> : <forestry:planks.fireproof.1:5>,
    <forestry:logs.fireproof.5:2> : <forestry:planks.fireproof.1:6>,
    <forestry:logs.fireproof.5:3> : <forestry:planks.fireproof.1:7>,
    <forestry:logs.fireproof.6> : <forestry:planks.fireproof.1:8>,
    <forestry:logs.fireproof.6:1> : <forestry:planks.fireproof.1:9>,
    <forestry:logs.fireproof.6:2> : <forestry:planks.fireproof.1:10>,
    <forestry:logs.fireproof.6:3> : <forestry:planks.fireproof.1:11>,
    <forestry:logs.fireproof.7> : <forestry:planks.fireproof.1:12>,
    <forestry:logs.vanilla.fireproof.0> : <forestry:planks.vanilla.fireproof.0>,
    <forestry:logs.vanilla.fireproof.0:1> : <forestry:planks.vanilla.fireproof.0:1>,
    <forestry:logs.vanilla.fireproof.0:2> : <forestry:planks.vanilla.fireproof.0:2>,
    <forestry:logs.vanilla.fireproof.0:3> : <forestry:planks.vanilla.fireproof.0:3>,
    <forestry:logs.vanilla.fireproof.1> : <forestry:planks.vanilla.fireproof.0:4>,
    <forestry:logs.vanilla.fireproof.1:1> : <forestry:planks.vanilla.fireproof.0:5>
};

for log, plank in mapWood {
    recipes.remove(plank);
    recipes.addShapedless(plank * 2, [log]);
    Sawmill.addRecipe(<minecraft:stick>*4, plank, 400, <thermalfoundation:material:800>, 10);
}
