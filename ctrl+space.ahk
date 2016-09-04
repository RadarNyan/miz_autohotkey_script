^Space::
InputLocaleID:=DllCall("GetKeyboardLayout","uint",DllCall("GetWindowThreadProcessId","uint",WinExist("A"),"uintp",id),"uint")
if(InputLocaleID=0x08040804)
  PostMessage,0x50,,0x04090409,,ahk_id 0xFFFF
else
  PostMessage,0x50,,0x08040804,,ahk_id 0xFFFF
return
