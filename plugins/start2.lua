local function run(msg)
local text = [[🌐_You Can /cmds To See The Help_]]
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
