tag @s add global.ignore
tag @s add boomber.dyeable_cauldron.dye.appending

data modify entity @s Item.tag.ucit set value {id: "dye", from: "boomber:dyeable_cauldron", author: ["boomber"]}
data modify entity @s Item.tag.ucit.dyeable_cauldron set value {value: 13061821, rgb: [199, 78, 189], name: "magenta_dye"}

execute as @e[type=armor_stand, tag=boomber.dyeable_cauldron.cauldron, distance=..0.3] run function boomber:dyeable_cauldron/cauldron/add_dye/append