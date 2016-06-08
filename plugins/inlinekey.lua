local api_key = '171018888:AAFARdicFOJmb4gYlvXhqfDoNdCfuNswrxw'
local function run(msg,matches)
    if is_sudo(msg) then
    local keyboard = '{"inline_keyboard":[[{"*Msg For Test*":"Test","url":"test.com"}]]}'
    local url = 'https://api.telegram.org/bot'..api_key..'/sendMessage?chat_id='..msg.from.id..'&parse_mode=Markdown&text=*Msg For Test*&disable_web_page_preview=true&reply_markup='..keyboard
    local dat, res = https.request(url)
      if res == 400 then
         reply_msg(msg.id, 'Error !', ok_cb, true)    
         else
         reply_msg(msg.id, 'Sent !', ok_cb, true)    
      end
      end
  end
  return {
      patterns = {
          "^[!/#]start"
          },
      run = run
  }
