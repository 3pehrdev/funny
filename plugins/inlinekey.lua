local function run(msg,matches)
    if is_sudo(msg) then
    local url = 'https://api.telegram.org/bot171018888:AAFARdicFOJmb4gYlvXhqfDoNdCfuNswrxw/sendMessage?chat_id='..msg.from.id..'&parse_mode=Markdown&text=*test*&disable_web_page_preview=true&reply_markup={"inline_keyboard":[[{"text":"test","url":"test.com"}]]}'
      end
  end
  return {
      patterns = {
          "^[!/#]test$"
          },
      run = run
  }
