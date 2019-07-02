#InstallKeybdHook
#SingleInstance force
/*
Hotkeys:
#+Ctrl-A: Toggle window always on top
AutoHotKey(Windows Only) needs to be installed for this to work.
Save this text file as WindowTop.ahk, run script
*/

#^a::
WinGet, currentWindow, ID, A
WinGet, ExStyle, ExStyle, ahk_id %currentWindow%
if (ExStyle & 0x8)  ; 0x8 is WS_EX_TOPMOST.
{
   Winset, AlwaysOnTop, off, ahk_id %currentWindow%
   SplashImage,, x0 y0 b fs12, OFF always on top.
   Sleep, 1500
   SplashImage, Off
}
else
{
   WinSet, AlwaysOnTop, on, ahk_id %currentWindow%
   SplashImage,,x0 y0 b fs12, ON always on top.
   Sleep, 1500
   SplashImage, Off
}
return


TurnOffSI:
SplashImage, off
SetTimer, TurnOffSI, 1000, Off
Return