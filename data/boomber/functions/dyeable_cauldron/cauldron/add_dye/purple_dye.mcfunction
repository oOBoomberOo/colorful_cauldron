tag @s add global.ignore
tag @s add boomber.dyeable_cauldron.dye.appending

data modify entity @s Item.tag.ctc set value {id: "dye", from: "boomber:dyeable_cauldron", traits: ["item"]}
data modify entity @s Item.tag.ctc.dyeable_cauldron set value {value: 8991416, rgb: [137, 50, 184], name: "purple_dye"}

execute as @e[type=armor_stand, tag=boomber.dyeable_cauldron.cauldron, distance=..0.3] run function boomber:dyeable_cauldron/cauldron/add_dye/append