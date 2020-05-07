execute store result score #water_level bb.cc.var run data get entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.water_level
scoreboard players remove #water_level bb.cc.var 1

execute store result entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.water_level int 1 run scoreboard players get #water_level bb.cc.var

data modify entity @e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1] Item.tag.CustomPotionColor set from entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.current_color
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s Item.id set value "minecraft:potion"
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s Item.tag.Potion set value "minecraft:water"
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s Motion[1] set value 0.3d
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s PickupDelay set value 5s
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s Item.tag.ctc set value {id: "dye_bottle", from: "boomber:dyeable_cauldron", traits: ["item"]}
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s Item.tag.ctc.dyeable_cauldron.hex set value []
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] unless data entity @s Item.tag.display.Name run data modify entity @s Item.tag.display.Name set value '{"translate": "item.boomber.dyeable_cauldron.dye_bottle", "italic": false}'
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] unless data entity @s Item.tag.display.Lore[] run data modify entity @s Item.tag.display.Lore set value []

execute store result score #bb.dc.red₁ bb.cc.var run data get entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.current_rgb[0]
execute store result score #bb.dc.green₁ bb.cc.var run data get entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.current_rgb[1]
execute store result score #bb.dc.blue₁ bb.cc.var run data get entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.current_rgb[2]

scoreboard players operation #bb.dc.red₂ bb.cc.var = #bb.dc.red₁ bb.cc.var
scoreboard players operation #bb.dc.green₂ bb.cc.var = #bb.dc.green₁ bb.cc.var
scoreboard players operation #bb.dc.blue₂ bb.cc.var = #bb.dc.blue₁ bb.cc.var

scoreboard players operation #bb.dc.red₁ bb.cc.var /= #16 bb.cc.var
scoreboard players operation #bb.dc.green₁ bb.cc.var /= #16 bb.cc.var
scoreboard players operation #bb.dc.blue₁ bb.cc.var /= #16 bb.cc.var
scoreboard players operation #bb.dc.red₂ bb.cc.var %= #16 bb.cc.var
scoreboard players operation #bb.dc.green₂ bb.cc.var %= #16 bb.cc.var
scoreboard players operation #bb.dc.blue₂ bb.cc.var %= #16 bb.cc.var

scoreboard players operation #bb.dc.input.byte bb.cc.var = #bb.dc.red₁ bb.cc.var
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run function boomber:dyeable_cauldron/cauldron/absorb/bottle/find_hex
scoreboard players operation #bb.dc.input.byte bb.cc.var = #bb.dc.red₂ bb.cc.var
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run function boomber:dyeable_cauldron/cauldron/absorb/bottle/find_hex
scoreboard players operation #bb.dc.input.byte bb.cc.var = #bb.dc.green₁ bb.cc.var
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run function boomber:dyeable_cauldron/cauldron/absorb/bottle/find_hex
scoreboard players operation #bb.dc.input.byte bb.cc.var = #bb.dc.green₂ bb.cc.var
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run function boomber:dyeable_cauldron/cauldron/absorb/bottle/find_hex
scoreboard players operation #bb.dc.input.byte bb.cc.var = #bb.dc.blue₁ bb.cc.var
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run function boomber:dyeable_cauldron/cauldron/absorb/bottle/find_hex
scoreboard players operation #bb.dc.input.byte bb.cc.var = #bb.dc.blue₂ bb.cc.var
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run function boomber:dyeable_cauldron/cauldron/absorb/bottle/find_hex

setblock ~ ~ ~ oak_sign{Text1: '[{"text": "Color: #", "color": "gray", "italic": false}, {"nbt": "Item.tag.ctc.dyeable_cauldron.hex[0]", "entity": "@e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1]", "color": "gray", "italic": false}, {"nbt": "Item.tag.ctc.dyeable_cauldron.hex[1]", "entity": "@e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1]", "color": "gray", "italic": false}, {"nbt": "Item.tag.ctc.dyeable_cauldron.hex[2]", "entity": "@e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1]", "color": "gray", "italic": false}, {"nbt": "Item.tag.ctc.dyeable_cauldron.hex[3]", "entity": "@e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1]", "color": "gray", "italic": false}, {"nbt": "Item.tag.ctc.dyeable_cauldron.hex[4]", "entity": "@e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1]", "color": "gray", "italic": false}, {"nbt": "Item.tag.ctc.dyeable_cauldron.hex[5]", "entity": "@e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1]", "color": "gray", "italic": false}]'}
execute as @e[tag=boomber.dyeable_cauldron.item.dyeing] run data modify entity @s Item.tag.display.Lore prepend from block ~ ~ ~ Text1
setblock ~ ~ ~ minecraft:cauldron

execute as @s at @s run playsound minecraft:block.brewing_stand.brew voice @a ~ ~ ~ 1 1 0