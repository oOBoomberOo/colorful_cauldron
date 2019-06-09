tag @s add boomber.dyeable_cauldron.cauldron.displaying
setblock ~ 255 ~ oak_sign{Text1: '[{"text": "Dyes: "}, {"nbt": "ArmorItems[-1].tag.ucit.dyeable_cauldron.dyes", "entity": "@e[type=armor_stand, tag=boomber.dyeable_cauldron.cauldron.displaying, limit=1]"}]'}
data modify entity @s CustomName set from block ~ 255 ~ Text1
data merge entity @s {CustomNameVisible: 1b}
setblock ~ 255 ~ air
tag @s remove boomber.dyeable_cauldron.cauldron.displaying