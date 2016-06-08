Local function run(msg, matches)

  Local receiver = get_receiver(msg)
    If matches[1] == "spam" and is_sudo(msg) then
    Local num = matches[2]
     Local text = matches[3]
        For i=1,num do
            Send_large_msg(receiver, text)
        End
  End
End
 
Return {
Usage = {
  "اسپم با تعداد دلخواه تکرار",
      "دستور:",
          "/spam [تعداد] [متن]",
  },
  Patterns = {
  "^[!/#](spam) (%d+) (.*)$",
  },
  Run = run,
}
