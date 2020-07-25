#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Shift space for underscore
+Space::Send _


; Tapping L and R shift will send opening and closing parentheses respectively
RShift UP::
KeyWait, RShift
If (A_TimeSinceThisHotkey < 300) {
	Send, )
}
return

LShift UP::
KeyWait, LShift
If (A_TimeSinceThisHotkey < 300) {
	Send, (
}
return


; Stops parentheses being sent when shift is used normally
RShift & F13::return
LShift & F13::return


RShift & LButton::return
RShift & RButton::return
RShift & MButton::return
RShift & WheelDown::return
RShift & WheelUp::return
RShift & WheelLeft::return
RShift & WheelRight::return

LShift & LButton::return
LShift & RButton::return
LShift & MButton::return
LShift & WheelDown::return
LShift & WheelUp::return
LShift & WheelLeft::return
LShift & WheelRight::return