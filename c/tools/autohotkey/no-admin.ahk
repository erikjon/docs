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
; ******* /Ctrl+Shift+A: Show/hide/start Cisco Jabber


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
; ******* /Win+1: Show/start Outlook


; ******************************************************************************************
; ******* Ctrl+Shift+PgUp/Mouse Wheel Up: Volume Up
; ******************************************************************************************
^+PgUp::
^+WheelUp::
SoundSet +3
return
; ******* /Ctrl+Shift+PgUp/Mouse Wheel Up: Volume Up


; ******************************************************************************************
; ******* Ctrl+Shift+PgDn/Mouse Wheel Down: Volume Down
; ******************************************************************************************
^+PgDn::
^+WheelDown::
SoundSet -3
return
; ******* /Ctrl+Shift+PgDn/Mouse Wheel Down: Volume Down
