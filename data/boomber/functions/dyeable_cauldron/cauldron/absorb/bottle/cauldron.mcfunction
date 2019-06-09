execute store result score #bb.dc.water_level bb.variable run data get entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.water_level
scoreboard players remove #bb.dc.water_level bb.variable 1

execute store result entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.water_level int 1 run scoreboard players get #bb.dc.water_level bb.variable

data modify entity @e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1] Item.tag.CustomPotionColor set from entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.current_color
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s Item.id set value "minecraft:potion"
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s Item.tag.Potion set value "minecraft:water"
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s Motion[1] set value 0.3d
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s PickupDelay set value 5s
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s Item.tag.ucit set value {id: "dye_bottle", from: "boomber:dyeable_cauldron", author: ["boomber"]}
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s Item.tag.ucit.dyeable_cauldron.hex set value []
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] unless data entity @s Item.tag.display.Name run data modify entity @s Item.tag.display.Name set value '{"translate": "item.boomber.dyeable_cauldron.dye_bottle", "italic": false}'
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] unless data entity @s Item.tag.display.Lore[] run data modify entity @s Item.tag.display.Lore set value []

execute store result score #bb.dc.red₁ bb.variable run data get entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.current_rgb[0]
execute store result score #bb.dc.green₁ bb.variable run data get entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.current_rgb[1]
execute store result score #bb.dc.blue₁ bb.variable run data get entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.current_rgb[2]

scoreboard players operation #bb.dc.red₂ bb.variable = #bb.dc.red₁ bb.variable
scoreboard players operation #bb.dc.green₂ bb.variable = #bb.dc.green₁ bb.variable
scoreboard players operation #bb.dc.blue₂ bb.variable = #bb.dc.blue₁ bb.variable

scoreboard players operation #bb.dc.red₁ bb.variable /= #16 bb.variable
scoreboard players operation #bb.dc.green₁ bb.variable /= #16 bb.variable
scoreboard players operation #bb.dc.blue₁ bb.variable /= #16 bb.variable
scoreboard players operation #bb.dc.red₂ bb.variable %= #16 bb.variable
scoreboard players operation #bb.dc.green₂ bb.variable %= #16 bb.variable
scoreboard players operation #bb.dc.blue₂ bb.variable %= #16 bb.variable

scoreboard players operation #bb.dc.input.byte bb.variable = #bb.dc.red₁ bb.variable
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run function boomber:dyeable_cauldron/cauldron/absorb/bottle/find_hex
scoreboard players operation #bb.dc.input.byte bb.variable = #bb.dc.red₂ bb.variable
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run function boomber:dyeable_cauldron/cauldron/absorb/bottle/find_hex
scoreboard players operation #bb.dc.input.byte bb.variable = #bb.dc.green₁ bb.variable
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run function boomber:dyeable_cauldron/cauldron/absorb/bottle/find_hex
scoreboard players operation #bb.dc.input.byte bb.variable = #bb.dc.green₂ bb.variable
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run function boomber:dyeable_cauldron/cauldron/absorb/bottle/find_hex
scoreboard players operation #bb.dc.input.byte bb.variable = #bb.dc.blue₁ bb.variable
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run function boomber:dyeable_cauldron/cauldron/absorb/bottle/find_hex
scoreboard players operation #bb.dc.input.byte bb.variable = #bb.dc.blue₂ bb.variable
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run function boomber:dyeable_cauldron/cauldron/absorb/bottle/find_hex

setblock ~ ~ ~ oak_sign{Text1: '[{"text": "Color: #", "color": "gray", "italic": false}, {"nbt": "Item.tag.ucit.dyeable_cauldron.hex[0]", "entity": "@e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1]", "color": "gray", "italic": false}, {"nbt": "Item.tag.ucit.dyeable_cauldron.hex[1]", "entity": "@e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1]", "color": "gray", "italic": false}, {"nbt": "Item.tag.ucit.dyeable_cauldron.hex[2]", "entity": "@e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1]", "color": "gray", "italic": false}, {"nbt": "Item.tag.ucit.dyeable_cauldron.hex[3]", "entity": "@e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1]", "color": "gray", "italic": false}, {"nbt": "Item.tag.ucit.dyeable_cauldron.hex[4]", "entity": "@e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1]", "color": "gray", "italic": false}, {"nbt": "Item.tag.ucit.dyeable_cauldron.hex[5]", "entity": "@e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1]", "color": "gray", "italic": false}]'}
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s Item.tag.display.Lore prepend from block ~ ~ ~ Text1
setblock ~ ~ ~ minecraft:cauldron

execute as @s at @s run playsound minecraft:block.brewing_stand.brew voice @a ~ ~ ~ 1 1 0