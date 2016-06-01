do

function run(msg, matches)
local reply_id = msg['id']
local text = '♻️["..msg.from.print_name.."](https://telegram.me/"..msg.from.username..")\n♻️*Your ID* : _"..msg.from.id.."_'
if matches[1] == '/id' then
reply_msg(reply_id, text, ok_cb, false)
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
end 
end
return {
patterns = {
    "^/id"
},
run = run
}

end
