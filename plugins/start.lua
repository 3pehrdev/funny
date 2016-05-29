local function run(msg)
local text = [[*Hi*〽️
*I'm a Funny Bot*😼👊
*Type* `/` *For Show Commands*✅
*My Developer is *[MrBlackLife](http://telegram.me/mrblacklife)♻️]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {
"^/start",
"^!!tgservice (chat_add_user)$",
"^!!tgservice (chat_add_user_link)$",
},
 run = run
 }
