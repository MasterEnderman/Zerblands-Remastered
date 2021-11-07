#modloaded bloodmagic
#priority 100000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

global bloodmagicAlchemyArray as string[string] = {
    "airsigil" : "bloodmagic:textures/models/alchemyarrays/airsigil.png",
    "basearray" : "bloodmagic:textures/models/alchemyarrays/basearray.png",
    "bindinglightningarray" : "bloodmagic:textures/models/alchemyarrays/bindinglightningarray.png",
    "bouncearray" : "bloodmagic:textures/models/alchemyarrays/bouncearray.png",
    "divinationsigil" : "bloodmagic:textures/models/alchemyarrays/divinationsigil.png",
    "elementalaffinitysigil" : "bloodmagic:textures/models/alchemyarrays/elementalaffinitysigil.png",
    "fastminersigil" : "bloodmagic:textures/models/alchemyarrays/fastminersigil.png",
    "furnacearray" : "bloodmagic:textures/models/alchemyarrays/furnacearray.png",
    "growthsigil" : "bloodmagic:textures/models/alchemyarrays/growthsigil.png",
    "hastesigil" : "bloodmagic:textures/models/alchemyarrays/hastesigil.png",
    "lavasigil" : "bloodmagic:textures/models/alchemyarrays/lavasigil.png",
    "lightsigil" : "bloodmagic:textures/models/alchemyarrays/lightsigil.png",
    "magnetismsigil" : "bloodmagic:textures/models/alchemyarrays/magnetismsigil.png",
    "mobsacrifice" : "bloodmagic:textures/models/alchemyarrays/mobsacrifice.png",
    "movementarray" : "bloodmagic:textures/models/alchemyarrays/movementarray.png",
    "shardoflaputa" : "bloodmagic:textures/models/alchemyarrays/shardoflaputa.png",
    "sightsigil" : "bloodmagic:textures/models/alchemyarrays/sightsigil.png",
    "sekeletonturret1" : "bloodmagic:textures/models/alchemyarrays/sekeletonturret1.png",
    "sekeletonturret2" : "bloodmagic:textures/models/alchemyarrays/sekeletonturret2.png",
    "spikearray" : "bloodmagic:textures/models/alchemyarrays/spikearray.png",
    "stupidarray" : "bloodmagic:textures/models/alchemyarrays/stupidarray.png",
    "supressionsigil" : "bloodmagic:textures/models/alchemyarrays/supressionsigil.png",
    "teleportation" : "bloodmagic:textures/models/alchemyarrays/teleportation.png",
    "teleportationarray" : "bloodmagic:textures/models/alchemyarrays/teleportationarray.png",
    "updraftarray" : "bloodmagic:textures/models/alchemyarrays/updraftarray.png",
    "voidsigil" : "bloodmagic:textures/models/alchemyarrays/voidsigil.png",
    "watersigil" : "bloodmagic:textures/models/alchemyarrays/watersigil.png",
    "wiparray" : "bloodmagic:textures/models/alchemyarrays/wiparray.png",
    "zombiebeacon" : "bloodmagic:textures/models/alchemyarrays/zombiebeacon.png",
};

