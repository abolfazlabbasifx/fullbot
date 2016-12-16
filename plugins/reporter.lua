local function run(msg,matches)
if matches[1] == "add" and is_admin1(msg) then
local textadd = "\n✽Status:»ربات در گروه ادد شد!« \n➖➖➖➖➖\nمشخصات ادد کننده : \n》نام: "..(msg.from.print_name or '----').." \n》یوزرنیم: @"..(msg.from.username or 'teleguardchannel').."\n》آیدی: "..(msg.from.id or '----').." \n➖➖➖➖➖\nمشخصات گروه:  \n● نام: "..string.gsub(msg.to.print_name, "_", " ").." \n●آیدی : "..(msg.to.id or '----').." \n➖➖➖➖➖\n برای خارج شدن ربات از گروه دستور زیر را ارسال کنید:\n/leave "..(msg.to.id or '----').."\n➖➖➖➖➖\n@teleguardchannel"


send_large_msg("user#id149553519",textadd)

end
if matches[1] == "rem" and is_admin1(msg) then

local textrem = "\n✽Status:» ربات از گروه اخراج شد!« \n➖➖➖➖➖\nمشخصات ریمو کننده:  \n》نام: "..(msg.from.print_name or '----').." \n》یوزرنیم: @"..(msg.from.username or 'teleguardchannel').."\n》آیدی: "..(msg.from.id or '----').." \n➖➖➖➖➖\n مشخصات گروه:  \n●نام: "..string.gsub(msg.to.print_name, "_", " ").." \n●آیدی : "..(msg.to.id or '----').." \n➖➖➖➖➖\n@teleguardchannel"
send_large_msg("user#id149553519",textrem)
end
end
return {
patterns = {
"^[!#/]([Aa]dd)$",
"^[!#/]([Rr]em)$",
},
run = run
}
