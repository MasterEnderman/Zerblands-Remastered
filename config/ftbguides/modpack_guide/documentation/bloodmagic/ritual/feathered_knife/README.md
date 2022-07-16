# The Ritual of the Feathered Knife

The Ritual of the Feathered Knife taps into the user's body, draining away their life force in order to fill a blood altar nearby. The ritual will look for a blood altar within its range, checking 5 blocks horizontally and 10 blocks vertically unaltered. When it finds an altar, it will store its location internally - if there isn't an altar nearby, the ritual will not work. When a player then enters within the ritual's damage range, which by default is a radius of 15 blocks horizontally and 20 blocks vertically, the ritual will damage the player for 1HP and then place that health into the connected altar directly (respecting blood runes). There are some safety mechanisms on the ritual, which cause it to not work on a player with less than 30%% of their max health. Unaugmented, the ritual does this once every second.
There are a few useful augmentations that you can use if you use Demon Will. If Raw Will is consumed by the ritual, the ritual will attempt to damage players within its range at a faster rate, operating twice per second. The ritual will consume 0.05 Raw Will per successful operation.
If you have more than 10 Steadfast Will in the Aura, the ritual will increase its safety threshold and instead will not work on players with less than 70%% health. This function currently does not consume Will.
If you have more than 10 Vengeful Will in the Aura, the ritual will remove some of its safety limitations, causing it to work on players until they only have 10%% of their maximum health left. If the ritual also has Steadfast Will augmented onto it the threshold will still be 70%% for the owner of the ritual only. This function currently does not consume Will.
When Destructive Will is applied to the ritual, the ritual becomes a lot more efficient with its HP to LP conversion. The amount of LP that is added to the altar per health point increases based on the Will in the Aura, up to a maximum of +20%% for 100 Destructive Will. This effect stacks multiplicatively with runes, Living Armour Upgrades, and Incense. This consumes 0.05 Destructive Will per HP sacrificed.
Speaking of incense, if Corrosive Will is used in the ritual the ritual will respect the effects of incense on you. If you do not have the Soul Fray debuff on and you are empowered by an Incense Altar, the ritual will consume all of your HP up to the set threshold and pump all of the resultant LP into the altar. It will also remove the incense that you incurred and apply Soul Fray onto you. This effect stacks with the Destructive Will buff.