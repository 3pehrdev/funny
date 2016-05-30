local function(msg, matches)
  local htp = http.request('http://api.vajehyab.com/v2/public/?q='..URL.escape(matches[1]))
  local data = json:decode(htp)
	local text = '*Word* : `'..(data.data.title or data.search.q)..'`\n\n*Mean :* _'..(data.data.text or '----' )..'_\n\n*Source:* _'..(data.data.source or '----' )..'_\n\n_'..(data.error.message or '')..'_\n\n[Funny😼👊](http://telegram.me/Funn_RoBot)'
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
  patterns = {
    "^[/!#][Mm][Ee][Aa][Nn] (.*)$",
  },
  run = run
}
