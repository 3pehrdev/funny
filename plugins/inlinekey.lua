local api_key = '171018888:AAFARdicFOJmb4gYlvXhqfDoNdCfuNswrxw' --توکن ربات خود را اینجا قرار دهید 
local function run(msg,matches) 
    local text = 'SpheroTM' 
    local channel_id = get_receiver_api(msg) 
    local link_text = 'Bot Pm Resan TM' 
    local data = load_data(_config.moderation.data) 
    local link = 'https://telegram.me/spherochbot'
    local keyboard = '{"inline_keyboard":[[{"text":"'..link_text..'","url":"'..link..'"}],[{"text":"Join to Sphero Channel","url":"https://telegram.me/Spheroch"}],[{"text":"BlackLifeTM Channel","url":"http://telegram.me/blacklifech"},{"text":"Dev Bot","url":"http://telegram.me/mrblacklife"}]]}' --به دلخواه متن ها را تغییر دهید 
    local url = 'https://api.telegram.org/bot'..api_key..'/sendMessage?chat_id='..channel_id..'&parse_mode=Markdown&text='..text..'&disable_web_page_preview=true&reply_markup='..keyboard 
    local dat, res = https.request(url) 
      if res == 400 then 
         reply_msg(msg.id, 'Error !', ok_cb, true) 
         else 
         reply_msg(msg.id, ok_cb, true) 
      end 
      end 
  return { 
      patterns = { 
          "^[!/#](funny)$" 
          }, 
      run = run 
  } 
