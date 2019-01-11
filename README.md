# MVGA
Make Vanilla Great Again!
A balance mod for NS2

## **Implemented**

### **Marines**
* BuildTimes: fix build times for obs and robo. Obs now takes 10 seconds to build and robo takes 15 seconds, in accordance with their size and HP.

* Exosuit - Railgun
  * Pres cost decreased to 50 (from 55)
  * Railgun exo damage vs **vs structures only** increased by 42%
  * The railgun exo now is effectively anti-structure, having a PvE killing power comparable to the vanilla minigun exo. It can still one shot skulks and severely damage lerks without one shotting them. It remains extremely weak versus onos. It is now in more of a niche PvE role.
  
* Exosuit - Minigun
  * Pres cost decreased to 50 (from 55)
  * Minigun exo damage type changed to heavy **vs lifeforms only**
  * Minigun exo Base damage decreased by 20%
  * The minigun exo kills a biomass 6 onos 2% faster than in vanilla, while now being slightly worse vs skulks and lerks, and 20% less effective against structures. It is now in more of a niche PvP role.
 
* Infantry Portal: a balance mechanic is implemented to account for the different sizes, from 6v6 to 8v8. Changes are only implemented at the start of the round, with no effect if marines join after the game has started. Changes are as follows:
  * 6 marines = no change
  * 7 marines = +5 Tres
  * 8 marines = + 1 Infantry Portal, -10 Tres (for a net gain of +10 Tres)

* Mines
  * effective HP changed to 70 (from 30)
  * Now Affected by weapon upgrades
  * Package comes with 3 mines (from 2)
  * Pres cost changed to 18 (6 per mine from 5 per mine)
  * Commander drop cost changed to 18 Tres to match

* Grenade Launcher
  * Base damage reduced by 8.6%
  * Scales with weapon upgrades
  * PvP damage reduction changed to 33% (from 20%) (thus, player damage at W3 is now the same player damage as in vanilla)

* Pres Costs
  * Shotgun cost changed to 22 (from 20)
  * MG cost changed to 22 (from 20)
  * GL cost changed to 18 (from 20)
  * FT cost changed to 18 (from 20)
  * JP cost changed to 18 (from 15)

* Supply
  * Observatories now cost 25 supply
  * Sentry batteries now cost 20 supply
  * Armory is now 10 supply
  * Robotics Factory is now 10 supply

### **Aliens**
* Alien Pres Costs
  * Starting Pres for aliens changed to 18 (from 12, so +6)
  * Gorge costs 10 Pres (from 8)
  * Gorge tunnel costs 5 (from 3) (thus, 2Pres are still needed to connect the first tunnel)
  * Lerk costs 24 Pres (from 21, so 6 Pres for first LF, like in classic vanilla)
  * Fade costs 43 Pres (from 37, so 25 Pres for first LF, like in vanilla)
  * Onos costs 68 Pres (from 62, so 50 Pres for first LF, like in vanilla)

* Trait changes
  * Adrenaline: reverted adrenaline changes in vanilla. Now the upgrade increases energy regeneration
  * Aura: Change aura to be a pulse instead of constant wall hack

* Biomass
  * Biomass 1 research cost increased to 20 (from 15)
  * Biomass 2 research cost increased to 25 (from 20)

* Contaminate bile effect removed. Now only spreads infestation. Goodbye _contaminuke_, never return.

* Cysts
  * All cysts have 250 hp and take damage while disconnected
  * Cysts no longer lose maturity on disconnection, only HP. (remember nutrient myst heals cysts! ;) )
  
* Gorge Structures: Cooldown between dropping structures increased to 1.2 seconds (was 1 second. This helps curb in-combat clog replacement of gorgeforts)

* Hive eHP
  * Unmature hive HP changed to 3500 (from 4000)
  * Mature hive HP changed to 5000 (from 6000)
  * Mature hive Armor changed to 1500 (from 1400)
  * Thus, unmature hive now has 5000 effective hp (from 5500) and mature hive has 8000 effective HP (from 8800), a decrease close to 10%.

* PVE HP changes
  * Reduce crag, shift, shade, whip and clog effective HP by 10%, both to the 0% mature and 100% mature states.

* Skulk: implemented changes to make crag hive relatively less attractive in the early game
  * Base Armor increased to 12 (from 10)
  * Armor bonus per shell when using carapace changed to 3.33 (from 6.66)
  * Biomass HP increase change to 6 (from 3)

* NutrientMist: Nutrient mist no longer prevents buildings off infestation from taking damage, and can only be deployed on infestation.

* Supply:
  * Aliens start with 100 supply. Second hive gives +50 supply. Third hive gives +50 supply.
  * Drifter: 15
  * Whip: 15
  * Shift, Shade, Crag: 10

## **To do list**

### **Marines**
* Flamethrower
  * Decreased base damage to 8 (from 12)
  * Base damage now scales with weapon upgrades (W3 base damage is now 10.4. This means the FT is just slightly less effective vs buildings while being much less effective in PvP since flame puddles are much less effective at damaging fast moving / flying aliens)

* MG/AA/Proto adjustments
  * AA research cost changed to 20 (from 25)
  * Protolab cost changed to 40 (from 35)
  * MG now requires research at the AA. Costs 10 Tres and takes 30 seconds.
  * (in summary, the old MG research model is back, but at 10 Tres to research instead of 20)

* Medpack tech to be implemented later, if possible

### **Aliens**

* Neurotoxin to be implemented later, if possible.
