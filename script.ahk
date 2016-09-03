^Space::
{
  DetectHiddenWindows, On
  WinGet, WinID,, A
  ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
  InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
  WinGet, List, List
  Loop % List
    if (InputLocaleID = 0x8040804)
    {
      PostMessage, 0x50, 0, 0x4090409,, % "ahk_id" List%A_Index%
    } else {
      PostMessage, 0x50, 0, 0x8040804,, % "ahk_id" List%A_Index%
  }
  return
}
