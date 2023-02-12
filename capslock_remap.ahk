#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


hotkey_array := {}
hotkey_array["*i"] := Func("up_action")
hotkey_array["*k"] := Func("down_action")
hotkey_array["*l"] := Func("end_action")
hotkey_array["*j"] := Func("home_action")
hotkey_array["*m"] := Func("left_action")
hotkey_array["*."] := Func("right_action")
hotkey_array["*u"] := Func("ctrl_left_action")
hotkey_array["*o"] := Func("ctrl_right_action")
hotkey_array["*h"] := Func("backspace_action")
hotkey_array["*;"] := Func("delete_action")
hotkey_array["*f"] := Func("equals_action")
hotkey_array["*d"] := Func("dash_action")
hotkey_array["*v"] := Func("capslock_action")
hotkey_array["*z"] := Func("play_pause_action")
hotkey_array["*y"] := Func("page_up_action")
hotkey_array["*n"] := Func("page_down_action")
hotkey_array["*x"] := Func("volume_down_action")
hotkey_array["*c"] := Func("volume_up_action")
hotkey_array["*g"] := Func("escape_action")


activation_hotkey = *CapsLock
deactivation_hotkey = *CapsLock up


Hotkey, %activation_hotkey%, Activate
Hotkey, %deactivation_hotkey%, Deactivate


Activate(){
	global hotkey_array
	For key, value in hotkey_array
		Hotkey, %key%, %value%, On
}

Deactivate(){
	global hotkey_array
	For key, value in hotkey_array
		Hotkey, %key%, %value%, Off
}

up_action(){
send {blind}{up}
return
}

down_action(){
send {blind}{down}
return
}

left_action(){
send {blind}{Left}
return
}

right_action(){
send {blind}{Right}
return
}

ctrl_left_action(){
send {blind}^{left}
return
}

ctrl_right_action(){
send {blind}^{right}
return
}

end_action(){
send {blind}{end}
return
}

home_action(){
send {blind}{home}
return
}

backspace_action(){
send {blind}{backspace}
return
}

delete_action(){
send {blind}{delete}
return
}

equals_action(){
send {blind}=
return
}

dash_action(){
send {blind}-
return
}

underscore_action(){
send {blind}_
return
}

capslock_action(){
send {blind}{CapsLock}
return
}

play_pause_action(){
send {blind}{Media_Play_Pause}
return 
}

volume_down_action(){
send {Volume_Down 5}
return 
}

volume_up_action(){
send {Volume_Up 5}
return
}


page_up_action(){
send {blind}{PgUp}
return
}

page_down_action(){
send {blind}{PgDn}
return 
}

escape_action(){
send {Escape}
return
}
