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

import mods.botania.Apothecary;
import mods.chisel.Carving;

var chiselMap as IItemStack[][string] = {
    "ct_azulejo" : [
        <botania:custombrick>,
        <botania:custombrick:1>,
        <botania:custombrick:2>,
        <botania:custombrick:3>,
        <botania:custombrick:4>,
        <botania:custombrick:5>,
        <botania:custombrick:6>,
        <botania:custombrick:7>,
        <botania:custombrick:8>,
        <botania:custombrick:9>,
        <botania:custombrick:10>,
        <botania:custombrick:11>,
        <botania:custombrick:12>,
        <botania:custombrick:13>,
        <botania:custombrick:14>,
        <botania:custombrick:15>,
    ]
};

for group, items in chiselMap {
    Carving.addGroup(group);

    for item in items {
        recipes.remove(item);
        Carving.addVariation(group, item);
    }
}

recipes.addShapeless(<botania:custombrick>,[<ore:blockQuartz>,<ore:dyeBlue>]);

var mapSkulls as IItemStack[IIngredient] = {
    // _MasterEnderman_
    <ore:petalPurple> : <minecraft:skull:3>.withTag({SkullOwner: {Id: "90003ef0-4d50-4aa5-a32a-eb2d7f74dac3", Properties: {textures: [{Signature: "Ii5e/pvlv+v9A2vhmm/MZw5xUJyCAhaJejstRxofx5IBWUvMXkbYxmA3z6DV16HGxKPXQIszp1XFSkoEzhSvXcwXEuCQ2QEe8hbcQDgNfmK6WCQTbR+864DQvfFfn5uS2aVmUPvIzWJdjBrhbR1RjbEmF3RiWgX88X5alEQvXePvhwK0ChlDVdMt1fhasiY+DCWoNPmK6F4BnJtmgyVg91mKoi2FzvWtdgyFwEYYaMbTVw8AaGzmxJYU02T/54WprI1kR+dIqH7jfTcm26XIlIGIWT4Tjz/wuJdkQdlwmrZVq9h1lp6t0NXmXSfxzinDRDqhIaZZiBah7WyO7QjTyxoAdGt6xk8GKHnzAZ2DydtgRMKmAgmqOtA8SL1UjoppzIEjpo4xaxKo4t4S5n8SZKnu2mjVgRxTNO2XijyrwTbSvkWago2mhvt+AKYbJ2K2VKHghTVSGmgDmuqn/kIUbalFRSRrl2VyFnyHgE60pIj0REani0bDFDvlnnvU6K6XfQm7yD2ILIjTMGfbWO3NfsCEslaM3Bm5hNsZ35qfaeaa8l7FGex1rTJIQo0GEvsfh8IRPEOh0ZDCd25gS9lz3EhcorQiq3ToBiH2FRhvohheqSVGrfuYV84RsE0+3Sm0MpQpJMyjE1zZk56yY7RVf7MdJCDsRjUIy/kKiZQ0NZY=", Value: "ewogICJ0aW1lc3RhbXAiIDogMTY1OTIxNzQzOTAxOCwKICAicHJvZmlsZUlkIiA6ICI5MDAwM2VmMDRkNTA0YWE1YTMyYWViMmQ3Zjc0ZGFjMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJfTWFzdGVyRW5kZXJtYW5fIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzRiN2ZkNzkyMWQwMDE4MWJiMzk5ZDk3MDFhOWI5OTFmMWZmYzUzZmQ2Mjg2NzI2M2U5MDY2ZTJjZmE5YTRkYjgiCiAgICB9LAogICAgIkNBUEUiIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzIzNDBjMGUwM2RkMjRhMTFiMTVhOGIzM2MyYTdlOWUzMmFiYjIwNTFiMjQ4MWQwYmE3ZGVmZDYzNWNhN2E5MzMiCiAgICB9CiAgfQp9"}]}, Name: "_MasterEnderman_"}}),
    // DrJellyTime
    <ore:petalBlue> : <minecraft:skull:3>.withTag({SkullOwner: {Id: "38934869-72d9-453c-8938-4f43d07bbbf8", Properties: {textures: [{Signature: "Kgl4293yb6/lpzNqIWbwWGfbo6MGMZaVe9kgpGl5d9ke5ChEsKKHNIOiZHU6Jku7IAJEtybwFgpTD+5e720MHywtuuJJ5LgMkA4MFDfYlQlxtFo9iTdbDEHkk0e93gcuyH1qboZtR5Obx/Xl/ziP3q6wfKbTIrYI0j4Bd6Nch7jrW+opxgD/Y2NAV/Ygf/rZ4skgbHoWRzsS18Ngkgp+OVqAfIGdnukyX1RskXT1T/fSRl2e5dyiH/zBvbnqcEc4IzR93sOck71TW4Wyg5X9Jbcyqgubf1VZfOpwFSegjUPDUQdLK9Lk86ltiOcNQwTUZ6U6rQJR0BQ80p7KqIt0iFKx+nwPmf6G7hXk0wMNDR+svVlQNkIzVHghcGgSGb/xY/rNOPGV+/ofIixUsmChRndY0R55wezYb60xOauxSmO10Euynr42Gg1q9qWP7aGSUaEFTzyVGhsVmAmdZm1sFf7EZ/C8ophcsVJYz298K0AWJtAsTebuhP3O+Oi7FOlXllf9RGTaJOowm6q9WC5kSZQVXknc3v6BexO+DrjNN08sZccT3FI0fW+DCE2jLN+k2dzvcWWt1OmcF4OIIU1E0QDZFQ9yQPROUdL0stXFYdUq7ipXuzFm/NgsVu0+EzJGoCyEjyCXYf5hbBlECFvyBJdkp9xpAbeUQsPPybXVQJI=", Value: "ewogICJ0aW1lc3RhbXAiIDogMTY1ODYzMTgzNDgyMiwKICAicHJvZmlsZUlkIiA6ICIzODkzNDg2OTcyZDk0NTNjODkzODRmNDNkMDdiYmJmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICJEckplbGx5VGltZSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8xYTRhZjcxODQ1NWQ0YWFiNTI4ZTdhNjFmODZmYTI1ZTZhMzY5ZDE3NjhkY2IxM2Y3ZGYzMTlhNzEzZWI4MTBiIgogICAgfQogIH0KfQ=="}]}, Name: "DrJellyTime"}}),
};

for petal, head in mapSkulls {
    Apothecary.addRecipe(head, [
        petal,petal,petal,petal,
        petal,petal,petal,petal,
        petal,petal,petal,petal,
        petal,petal,petal,petal
    ]);
}
