local function run(msg)
local text = [[1⃣  /start *Start Work Bot in Ur Groups Or Private*
2⃣  /id *Show Your Information*
3⃣ /time *Show Time By Sticker*
4⃣ /voice [text] *English Text To Voice*
5⃣ /mean [Word] *The Meaning of The Words*
6⃣ /tr [lang] [Text] *Translate [text] To [lang]*]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {
"^/cmds",
},
 run = run
 }
