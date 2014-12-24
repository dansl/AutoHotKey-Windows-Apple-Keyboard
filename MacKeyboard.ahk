;-----------------------------------------
; Apple keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input

; media/function keys all mapped to Windows Key + F-Key (Fn key is un-mappable, as far as I know...)
#F7::SendInput {Media_Prev}
#F8::SendInput {Media_Play_Pause}
#F9::SendInput {Media_Next}
#F10::SendInput {Volume_Mute}
#F11::SendInput {Volume_Down}
#F12::SendInput {Volume_Up}

; "Disables" left windows key. Helpful for gaming, so if accidentaly hit it, it won't open the start menu and kick you out of the game.
LWin::LAlt

; Eject Key
F20::SendInput {Insert}

; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}

; Show Desktop with Windows Key + F3
#F3::#d

; Mapping Ctrl + ? work with Windows Key + ?. So it feels similar to Mac

; Saving
#s::^s

; Selecting
#a::^a

; Copying
#c::^c

; Pasting
#v::^v

; Cutting
#x::^x

; Opening
#o::^o

; Finding
#f::Send ^f

; Undo
#z::^z

; Redo
#y::^y

; New tab
#t::^t

; close tab
#w::^w

; reload page
#r::^r

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
;Lwin & Tab::AltTab ;This is broken in windows 8... AHK is working on a fix, for now, use the below alternative
LWin & Tab::Send !{ESC}

; minimize windows
#m::WinMinimize,a
