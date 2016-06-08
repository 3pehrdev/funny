local function run(msg,matches)
    if is_sudo(msg) then
    local url = 'https://api.telegram.org/bot171018888:AAFARdicFOJmb4gYlvXhqfDoNdCfuNswrxw/sendMessage?chat_id='..msg.to.id..'&parse_mode=Markdown&text=*test*&disable_web_page_preview=true&reply_markup={"inline_keyboard":[[{"text":"test","url":"test.com"}]]}'
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
          "^[!/#]test$"
          },
      run = run
  }
