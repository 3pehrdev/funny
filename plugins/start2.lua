do function run(msg, matches)
if matches[1]:lower() == '/start' then
text = "🌐You Can Use /cmds To See The Help"
 reply_msg(extra.Reply, text, ok_cb, false)
end
end
return {
 patterns = {
"^/start",
},
 run = run
 }
