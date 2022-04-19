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

import mods.astralsorcery.Grindstone;
import mods.bloodmagic.BloodAltar;
import mods.evilcraft.BloodInfuser;
import mods.forestry.ThermionicFabricator;
import mods.threng.Centrifuge;

Grindstone.addRecipe(<minecraft:glass>, <bloodarsenal:base_item>, 0.25f);
Centrifuge.addRecipe(<bloodarsenal:base_item>,<minecraft:glass>);

recipes.remove(<bloodarsenal:gem:2>);
Grindstone.addRecipe(<bloodmagic:soul_gem>, <bloodarsenal:gem:2>);
Centrifuge.addRecipe(<bloodarsenal:gem:2>,<bloodmagic:soul_gem>);

recipes.remove(<bloodarsenal:blood_burned_string>);
BloodAltar.addRecipe(<bloodarsenal:blood_burned_string>, <evilcraft:golden_string>, 1, 2000, 5, 5);
BloodInfuser.addRecipe(<evilcraft:golden_string>, <liquid:evilcraftblood>*10000, 2, <bloodarsenal:blood_burned_string>, 200, 0.5);

var dagger_sac as IItemStack = <bloodarsenal:glass_dagger_of_sacrifice>;
recipes.remove(<bloodarsenal:gem:1>);
ThermionicFabricator.addCast(<bloodarsenal:gem:1>, [
    [<evilcraft:promise_acceptor:1>,<evilcraft:blood_orb:1>,<evilcraft:promise_acceptor:1>],
    [<bloodmagic:slate:1>,<bloodarsenal:gem:2>,<bloodmagic:slate:1>],
    [<evilcraft:promise_acceptor:1>,<evilcraft:blood_orb:1>,<evilcraft:promise_acceptor:1>]
], <liquid: glass> * 200, dagger_sac);

var dagger_self_sac as IItemStack = <bloodmagic:dagger_of_sacrifice>;
recipes.remove(<bloodarsenal:gem:0>);
ThermionicFabricator.addCast(<bloodarsenal:gem:0>, [
    [<evilcraft:promise_acceptor:1>,<evilcraft:blood_orb:1>,<evilcraft:promise_acceptor:1>],
    [<bloodmagic:slate:1>,<bloodarsenal:gem:2>,<bloodmagic:slate:1>],
    [<evilcraft:promise_acceptor:1>,<evilcraft:blood_orb:1>,<evilcraft:promise_acceptor:1>]
], <liquid: glass> * 200, dagger_self_sac);
