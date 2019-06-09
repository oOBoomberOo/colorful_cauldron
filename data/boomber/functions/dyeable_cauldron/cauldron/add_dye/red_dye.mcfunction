tag @s add global.ignore
tag @s add boomber.dyeable_cauldron.dye.appending

data modify entity @s Item.tag.ucit set value {id: "dye", from: "boomber:dyeable_cauldron", author: ["boomber"]}
data modify entity @s Item.tag.ucit.dyeable_cauldron set value {value: 11546150, rgb: [176, 46, 38], name: "red_dye"}

execute as @e[type=armor_stand, tag=boomber.dyeable_cauldron.cauldron, distance=..0.3] run function boomber:dyeable_cauldron/cauldron/add_dye/append