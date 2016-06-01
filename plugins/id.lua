do

function run(msg, matches)
local reply_id = msg['id']
local text = '♻️"..msg.from.print_name.."\n @"..msg.from.username..")\n♻️Your ID : "..msg.from.id..".'
if matches[1] == '/id' then
reply_msg(reply_id, text, ok_cb, false)
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
