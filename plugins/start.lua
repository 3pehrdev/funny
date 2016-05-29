local function run(msg)
local text = [[*Hi*
*I'm a Funny Bot*
*Use /help For Show Commands*
_My Developer is _[MrBlackLife](http://telegram.me/mrblacklife)]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {
"^/start$",
"^/start@Funn_RoBot$",
},
 run = run
 }
