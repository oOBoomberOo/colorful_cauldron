data modify entity @s Item.id set value "minecraft:potion"
data modify entity @s Item.tag.Potion set value "minecraft:water"
data modify entity @s Item.tag.display.Name set value '{"translate": "boomber.colorful_cauldron.item.dye_bottle", "color": "white", "italic": false}'
data modify entity @s Item.tag.ctc set value {id: 'dye_bottle', from: 'boomber:colorful_cauldron', traits: {'item': 1b, 'dye_bottle': 1b}}
execute store result entity @s Item.tag.CustomPotionColor int 1 run scoreboard players get #color bb.cc.var