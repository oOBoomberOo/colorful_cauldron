schedule clear boomber:colorful_cauldron/main
schedule clear boomber:colorful_cauldron/passive_check

scoreboard objectives remove bb.cc.const
scoreboard objectives remove bb.cc.enum
scoreboard objectives remove bb.cc.level
scoreboard objectives remove bb.cc.state
scoreboard objectives remove bb.cc.var

kill @e[tag=boomber.colorful_cauldron.cauldron]
kill @e[tag=boomber.colorful_cauldron.effect]
kill @e[tag=boomber.colorful_cauldron.temp]