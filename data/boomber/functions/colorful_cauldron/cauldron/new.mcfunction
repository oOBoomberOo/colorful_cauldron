#define tag boomber.colorful_cauldron.cauldron
#define tag boomber.colorful_cauldron.temp
summon armor_stand ~ ~ ~ {Tags: ['boomber.colorful_cauldron.cauldron', 'global.ignore', 'global.ignore.kill', 'global.ignore.pos', 'global.ignore.gui', 'boomber.colorful_cauldron.temp'], Invulnerable: true, NoGravity: true, Silent: true, Marker: 1b, Invisible: 1b, Small: 1b}
	execute as @e[tag=boomber.colorful_cauldron.temp] run function boomber:colorful_cauldron/cauldron/new/builder
