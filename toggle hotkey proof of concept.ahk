#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

k_hotkey = *d
msgbox, %k_hotkey%

Hotkey, %k_hotkey%, k_hotkey, Off


Activate(){
	global k_hotkey
	Hotkey, %k_hotkey%, k_hotkey, On
}


Deactivate(){
	global k_hotkey
	Hotkey, %k_hotkey%, k_hotkey, Off
}
*q::
Activate()
return

*q up::
Deactivate()
return

k_hotkey:
send {blind}s
return

escape::Exit     