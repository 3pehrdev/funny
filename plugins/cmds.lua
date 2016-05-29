local function run(msg)
local text = [[1⃣  /start *Start Work Bot in Ur Groups Or Private*
2⃣  /id *Show Your Information*
3⃣ /time *Show Time By Sticker*]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {
"^/cmds",
},
 run = run
 }
