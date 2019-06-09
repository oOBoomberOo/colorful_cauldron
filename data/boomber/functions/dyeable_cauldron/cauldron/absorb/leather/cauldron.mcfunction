execute store result score #bb.dc.water_level bb.variable run data get entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.water_level
scoreboard players remove #bb.dc.water_level bb.variable 1

execute store result entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.water_level int 1 run scoreboard players get #bb.dc.water_level bb.variable

data modify entity @e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1] Item.tag.display.color set from entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.current_color
data modify entity @e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1] Motion[1] set value 0.3d
data modify entity @e[tag=boomber.dyeable_cauldron.item.dyeing, limit=1] PickupDelay set value 5s

execute as @s at @s run playsound minecraft:block.brewing_stand.brew voice @a ~ ~ ~ 1 1 0