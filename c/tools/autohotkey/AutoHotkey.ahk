; ******************************************************************************************
; ******* Ctrl+Shift+A: Show/hide/start Cisco Jabber
; ******************************************************************************************
^+a::
IfWinExist Cisco Jabber
{
	IfWinActive Cisco Jabber
	{
		WinHide
	}
	else
	{
        WinActivate
	}
}
else 
{
	Run "C:\Program Files (x86)\Cisco Systems\Cisco Jabber\CiscoJabber.exe"
}
return

; ******************************************************************************************
; ******* Ctrl+Shift+A: Show/hide/start Skype for Business
; ******************************************************************************************
; ^+a::
; IfWinExist Skype for Business
; {
; 	IfWinActive Skype for Business
; 	{
; 		WinHide
; 	}
; 	else
; 	{
;         WinActivate
; 	}
; }
; else 
; {
; 	Run "C:\Program Files (x86)\Microsoft Office\Office15\lync.exe"
; }
; return

; ******************************************************************************************
; ******* Ctrl+Alt+N: Create a new Notepad instance
; ******************************************************************************************
^!n::
IfWinExist Untitled - Notepad
	WinActivate
else
	Run Notepad
return

; ******************************************************************************************
; ******* REPLACE Win+SPACE with Ctrl+Win+Space, which is how Launchy is configured
; ******************************************************************************************
#space::SendInput ^#{Space}

; ******************************************************************************************
; ******* Win+X: Update registry and refresh explorer window to show/hide extensions
; ******************************************************************************************
#x:: 
RegRead, Extension_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt
If Extension_Status = 0
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 1
Else
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 0
WinGetClass, eh_Class,A
; Vista/Win7 
send, {F5}
; Win XP
; PostMessage, 0x111, 28931,,, A
Return

; ******************************************************************************************
; ******* Win+1: Show/start Outlook
; ******************************************************************************************
#1::
SetTitleMatchMode 2 ; SetTitleMatchMode to RegEx -- A window's title can contain WinTitle anywhere inside it to be a match
IfWinExist ERIK.J.HANSON@NAVITAIRE.COM - Outlook
    WinActivate
else
    Run "C:\Program Files (x86)\Microsoft Office\OFFICE15\OUTLOOK.EXE"
return

; ******************************************************************************************
; ******* Win+2: Show/start Cmder
; ******************************************************************************************
#2::
IfWinExist Cmder
    WinActivate
else
    Run "C:\tools\cmder\Cmder.exe"
return

; ******************************************************************************************
; ******* Ctrl+Shift+PgUp/Mouse Wheel Up: Volume Up
; ******************************************************************************************
^+PgUp::
^+WheelUp::
SoundSet +3
return

; ******************************************************************************************
; ******* Ctrl+Shift+PgDn/Mouse Wheel Down: Volume Down
; ******************************************************************************************
^+PgDn::
^+WheelDown::
SoundSet -3
return

