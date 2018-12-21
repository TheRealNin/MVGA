# MVGA
Make Vanilla Great Again!
A balance mod for NS2

This mod is split into compenents:

**Implemented**

**Marines**
* BuildTimes: Fix build times for obs and robo. Obs now takes 7 seconds to build and robo takes 15 seconds, in accordance with their size and HP.
* Infantry Portal: a balance mechanic is implemented to account for the different sizes, from 6v6 to 8v8. Changes are only implemented at the start of the round, with no effect if marines join after the game has started. Changes are as follows:
* * 6 marines = no change
* * 7 marines = +5 Tres
* * 8 marines = + 1 Infantry Portal, -10 Tres (for a net gain of +10 Tres)
* Mines:
* * effective HP changed to 70 (from 30)
* * Pres cost changed to 12 (from 10)
* * Commander drop cost changed to 12 Tres to match
* Grenade Launcher
* * Base damage reduced by 8.6%
* * Scales with weapon upgrades
* * PvP damage reduction changed to 33% (from 20%) (thus, player damage at W3 is now the same player damage as in vanilla)
* Supply:
* * Observatories now cost 25 supply
* * Sentry batteries now cost 20 supply
* * Armory is now 10 supply
* * Robotics Factory is now 10 supply

**Aliens**
* Biomass: Remove Biomass 4 research from hives, and reduce Contaminate biomass requirement to 9
* Skulk: implemented changes to make crag hive relatively less attractive in the early game
* * Base Armor increased to 12 (from 10)
* * Armor bonus per shell when using carapace changed to 3.33 (from 6.66)
* * Biomass HP increase change to 6 (from 3)
* Supply:
* * Aliens start with 100 supply. Second hive gives +50 supply. Third hive gives +50 supply.
* * Drifter: 15
* * Whip: 15
* * Shift, Shade, Crag: 10

* Aura: Change aura to be a pulse instead of constant wall hack

**To do**

**Marines**
* Flamethrower
* * Decreased base damage to 8 (from 12)
* * Base damage now scales with weapon upgrades (W3 base damage is now 10.4. This means the FT is just slightly less effective vs buildings while being much less effective in PvP due to flame puddles and their ability to damage fast moving / flying aliens)
* Weapon Pres Costs
* * Shotgun cost changed to 22 (from 20)
* * MG cost changed to 22 (from 20)
* * GL cost changed to 18 (from 20)
* * FT cost changed to 18 (from 20)
* MG/AA/Proto adjustments
* * AA research cost changed to 20 (from 25)
* * AA reserach time decreased by 30 seconds
* * Protolab cost changed to 40 (from 35)
* * MG now requires research at the AA. Costs 10 Tres and takes 30 seconds.

**Aliens**
* Adren: Revert adrenaline changes in vanilla. Now the upgrade increases energy regeneration
* Alien Pres Costs
* * Starting Pres for aliens changed to 16 (from 12)
* * Gorge tunnel costs 5 (from 3) (thus, 2Pres are still needed to connect the first tunnel)
* * Lerk costs 25 Pres (from 21)
* * Fade costs 41 Pres (from 37)
* * Onos costs 66 Pres (from 62)
* Clogs
* * Increased clog drop cooldown by 20%
* * Increased clog drop energy cost by 20%
* PVE HP changs
* * Reduce crag, shift, shade, whip and clog effective HP by 10%, both to the 0% mature and 100% mature states.
* Contaminate bile effect removed. Now only spreads infestation.
