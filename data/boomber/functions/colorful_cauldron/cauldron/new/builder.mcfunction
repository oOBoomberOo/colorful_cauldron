loot replace entity @s armor.head loot boomber:colorful_cauldron/component/cauldron

function boomber:colorful_cauldron/cauldron/method/get_level
	scoreboard players operation @s bb.cc.level = #level bb.cc.var
	function boomber:colorful_cauldron/cauldron/event/update_level

tag @s remove boomber.colorful_cauldron.temp