#Persistent
#SingleInstance, Force
#UseHook
SendMode Input

DetectHiddenWindows,On

OnClipboardChange("ClipChanged")

Return

ClipChanged(Type) {
    HWND := WinExist("ahk_exe Code.exe")
    If (1=1){
        WinActivate ,ahk_exe Code.exe
        HWND := WinExist("ahk_exe Code.exe")
    }

    ControlSend , ,^+f,ahk_id %HWND%
    sleep, 2
    ControlSend , ,^v,ahk_id %HWND%
    sleep, 2
}
