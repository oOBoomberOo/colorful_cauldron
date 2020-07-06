data modify storage boomber:colorful_cauldron color set from storage boomber:colorful_cauldron colors[-1]
data remove storage boomber:colorful_cauldron colors[-1]

function boomber:colorful_cauldron/cauldron/method/calculate_color_index/compute

execute if data storage boomber:colorful_cauldron colors[] run function boomber:colorful_cauldron/cauldron/method/calculate_color_index/loop