do function run(msg, matches)
if matches[1]:lower() == '/id' then
local text = "♻️["..msg.from.print_name.."](https://telegram.me/"..msg.from.username..")\n♻️*Your ID* : _"..msg.from.id.."_"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
reply_msg(extra.Reply, text, ok_cb, false)
end
end
return {
description = "show your id",
usage = "!id : show your userid and information",
patterns = {
"^/[Ii][Dd]",
},
run = run
}
end
