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
; ******* Win+2: Show/start Cmder
; ******************************************************************************************
#2::
IfWinExist Cmder
    WinActivate
else
    Run "C:\tools\cmder\Cmder.exe"
return

