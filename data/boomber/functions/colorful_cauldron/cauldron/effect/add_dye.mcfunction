#define tag boomber.colorful_cauldron.effect
summon minecraft:area_effect_cloud ~ ~ ~ {Potion: 'minecraft:water', Particle: 'minecraft:entity_effect', Age: 0, Duration: 5, Radius: 0.1f, RadiusPerTick: 0.0f, Color:0, Tags: ['global.ignore.gui', 'global.ignore', 'boomber.colorful_cauldron.effect', 'boomber.colorful_cauldron.temp']}
	execute as @e[tag=boomber.colorful_cauldron.temp] run function boomber:colorful_cauldron/cauldron/effect/add_dye/builder
playsound minecraft:entity.generic.splash block @a[tag=!global.ignore.gui, tag=!global.ignore] ~ ~ ~ 0.7 1.2 0