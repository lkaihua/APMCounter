; This is an autohotkey script
; Visit https://autohotkey.com/ for more information
;
; APM Counter
; Author: kainliu
; Github: https://github.com/kainliu/apm-counter-autohotkey
; Feel free to share to your gaming mates if you like it!
;
;
; Press F11 to start counting
; Press F12 to see current statics
;
;
; GPL licence

; Settings
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; Init with F11
F11::
ms_action_counter=0  	;mouse
kb_action_counter=0 	;keyboard
action_counter=0		;total
start_time := A_TickCount
SplashTextOn, 200,100, APM Helper, `nGLHF`n`nCounter Starts
Sleep 1000
SplashTextOff
return


; Keyboard counter
~F1::
~F2::
~F3::
~F4::
~F5::
~F6::
~F7::
~F8::
~F9::
~F10::
~`::
~1::
~2::
~3::
~4::
~5::
~6::
~7::
~8::
~9::
~0::
~-::
~+::
~a::
~b::
~c::
~d::
~e::
~f::
~g::
~h::
~i::
~j::
~k::
~l::
~m::
~n::
~o::
~p::
~q::
~r::
~s::
~t::
~u::
~v::
~w::
~x::
~y::
~z::
~Tab::
~CapsLock::
~Space::
~Enter::
~Backspace::
~Shift::
~Alt::
~Control::
~[::
~]::
~;::
~'::
~\::
~,::
~.::
~/::
~Up::
~Down::
~Left::
~Right::
~Home::
~End::
~PgUp::
~PgDn::
~Delete::
~Insert::
~Numpad1::
~Numpad2::
~Numpad3::
~Numpad4::
~Numpad5::
~Numpad6::
~Numpad7::
~Numpad8::
~Numpad9::
~Numpad0::
~NumpadDot::
~NumLock::
~NumpadDiv::
~NumpadMult::
~NumpadAdd::
~NumpadSub::
~NumpadEnter::

kb_action_counter++
return


; Mouse counter
~LButton::
~RButton::
~MButton::
~XButton1::
~XButton2::
;~WheelDown::
;~WheelUp::
ms_action_counter++
return


; Show result with F12
F12::
time := A_TickCount - start_time
time := Round(time/60/1000  ,2)    ; ms --> minute
action_counter := ms_action_counter + kb_action_counter
apm := Round(action_counter / time, 2)
MsgBox, 4, APM Helper,GG!`nAPM = %apm%`n`n==== Details ====`nKeyboard`t= %kb_action_counter%`nMouse`t= %ms_action_counter%`nTotal`t= %action_counter%`nTime`t= %time% mins 
return




; Disable windows key (optional)
; ~LWin UP::return




; Debug
; +esc::ExitApp
; f11::listvars
; f12::reload
#singleinstance force
; #Persistent

return