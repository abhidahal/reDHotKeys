#Requires AutoHotkey v1.1.33+
#SingleInstance Force
#NoEnv
#KeyHistory 0
SetWorkingDir %A_ScriptDir%
SetCapsLockState, AlwaysOff
SendMode Input

DesktopCount := 2
CurrentDesktop := 1
LastOpenedDesktop := 1

hVirtualDesktopAccessor := DllCall("LoadLibrary", "Str", A_ScriptDir . "\VirtualDesktopAccessor.dll", "Ptr")
global IsWindowOnDesktopNumberProc := DllCall("GetProcAddress", Ptr, hVirtualDesktopAccessor, AStr, "IsWindowOnDesktopNumber", "Ptr")
global MoveWindowToDesktopNumberProc := DllCall("GetProcAddress", Ptr, hVirtualDesktopAccessor, AStr, "MoveWindowToDesktopNumber", "Ptr")
global GoToDesktopNumberProc := DllCall("GetProcAddress", Ptr, hVirtualDesktopAccessor, AStr, "GoToDesktopNumber", "Ptr")

SetKeyDelay, 75
mapDesktopsFromRegistry()
OutputDebug, [loading] desktops: %DesktopCount% current: %CurrentDesktop%

#Include %A_ScriptDir%\wyvernFlames.ahk
return

; CapsLock Vim Toggle

vimToggleModeOnHold(){
    KeyWait, CapsLock, T0.4
    If !ErrorLevel
        send, {Esc}
    Else
        If GetKeyState("CapsLock","p")
            SetCapsLockState, Off
        else
            SetCapsLockState, On
    return
}

$k::
    If GetKeyState("CapsLock","p")
        Send {Up}
    else
        Send k
Return

$h::
    If GetKeyState("CapsLock","p")
        Send {Left}
    else
        Send h
Return

$j::
    If GetKeyState("CapsLock","p")
        Send {Down}
    else
        Send j
Return

$l::
    If GetKeyState("CapsLock","p")
        Send {Right}
    else
        Send l
Return

$x::
    If GetKeyState("CapsLock","p")
        Send, {Delete}
    else
        Send x
Return

$z::
    If GetKeyState("CapsLock","p")
        Send, {BackSpace}
    else
        Send z
Return

$d::
    If GetKeyState("CapsLock","p"){
        Send, {End}
        Send, {LShift Down}
        Send, {Up}
        Send, {End}
        Send, {LShift Up}
        Send, ^x
    }
    else
        Send d
Return

$o::

    If GetKeyState("CapsLock","p"){
        KeyWait, o			; wait for z to be released
        KeyWait, o, D T0.1		; and pressed again within 0.2 seconds
        If ErrorLevel 			; timed-out (only a single press)
            Send {End}{Enter}
        Else
            Send {Up}{End}{Enter}
    }
    else
        Send o
Return

$u::
    If GetKeyState("CapsLock","p")
        Send ^z
    else
        Send u
Return

$r::
    If GetKeyState("CapsLock","p")
        Send ^+z
    else
        Send r
Return

$p::
    If GetKeyState("CapsLock","p")
        Send ^v
    else
        Send p
Return

$y::
    If GetKeyState("CapsLock","p")
        Send ^c
    else
        Send y
Return

$v::
    If GetKeyState("CapsLock","p"){
        If GetKeyState("LShift","Down"){
            Send, {LShift Up}
        }
        else
            Send, {LShift Down}
    }
    else
        Send v
Return

$a::
    If GetKeyState("CapsLock","p"){
        Send {Right}
        SetCapsLockState, Off
    }
    else
        Send a
Return

$e::
    If GetKeyState("CapsLock","p")
        Send ^{Right}
    else
        Send e
Return

$b::
    If GetKeyState("CapsLock","p")
        Send ^{Left}
    else
        Send b
Return

$g::
    If GetKeyState("CapsLock","p")
        If (A_PriorHotkey <> "$g" or A_TimeSincePriorHotkey > 400)
        {
            KeyWait, g
            Send, ^{End}
            return
        }
        Else
            Send, ^{Home}
    else
        Send g
Return

$c::
    If GetKeyState("CapsLock","p")
        If (A_PriorHotkey <> "$c" or A_TimeSincePriorHotkey > 400)
        {
            KeyWait, c
            Send, c
            return
        }
        Else{
            Send, {End}
            Send, {LShift Down}
            Send, {Home}
            Send, {LShift Up}
            Send, ^x
        }
    else
        Send c
Return

$0::
    If GetKeyState("CapsLock","p")
        Send {Home}
    else
        Send 0
Return

$6::
    If GetKeyState("CapsLock","p")
        Send {End}
    else
        Send, {6}
Return

; Windows Kep To FlowLauncher

winToFlowLauncher(){
    If ProcessExist("Flow.Launcher.exe"){
        KeyWait, LWin, T0.15
        If !ErrorLevel
            Send, !{Space}
        Else
            Send, {LWin Down}
        KeyWait, LWin
    }else{
        Send, {LWin Down}
        KeyWait, LWin
    }
    Send, {LWin Up}
}

; Redragon Volume Knob

AdjustScreenBrightness(step) {
    service := "winmgmts:{impersonationLevel=impersonate}!\\.\root\WMI"
    monitors := ComObjGet(service).ExecQuery("SELECT * FROM WmiMonitorBrightness WHERE Active=TRUE")
    monMethods := ComObjGet(service).ExecQuery("SELECT * FROM wmiMonitorBrightNessMethods WHERE Active=TRUE")
    minBrightness := 5

    for i in monitors {
        curt := i.CurrentBrightness
        break
    }
    if (curt < minBrightness)
        curt := minBrightness
    toSet := curt + step
    if (toSet > 100)
        return
    if (toSet < minBrightness)
        toSet := minBrightness

    for i in monMethods {
        i.WmiSetBrightness(1, toSet)
        break
    }
}

toggleScrollOrMouseY(step){
    If GetKeyState("ScrollLock","t")
        MouseMove, 0, %step%, 50, R
    else
        If step > 0
            MouseClick,WheelUp,,,1,0,D,R
        else
            MouseClick,WheelDown,,,1,0,D,R
    Return
}

toggleScrollOrMouseX(step){
    If GetKeyState("ScrollLock","t")
        MouseMove, %step%,0, 50, R
    else
        If step > 0
            AdjustScreenBrightness(step)
        else
            AdjustScreenBrightness(step)
    Return
}
mouseClick(){
    Click
}
; Spaace Nagic Key For Virtual Windows

ProcessExist(Name){
    Process,Exist,%Name%
    return Errorlevel
}

showAllVirtualDesktop(){
    Send, {LWin Down}
    Send, {Tab Down}
    Send, {Tab Up}
    Send, {LWin Up}
}

mapDesktopsFromRegistry()
{
    global CurrentDesktop, DesktopCount

    IdLength := 32
    SessionId := getSessionId()
    if (SessionId) {
        RegRead, CurrentDesktopId, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VirtualDesktops, CurrentVirtualDesktop
        if ErrorLevel {
            RegRead, CurrentDesktopId, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\%SessionId%\VirtualDesktops, CurrentVirtualDesktop
        }

        if (CurrentDesktopId) {
            IdLength := StrLen(CurrentDesktopId)
        }
    }

    RegRead, DesktopList, HKEY_CURRENT_USER, SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VirtualDesktops, VirtualDesktopIDs
    if (DesktopList) {
        DesktopListLength := StrLen(DesktopList)

        DesktopCount := floor(DesktopListLength / IdLength)
    }
    else {
        DesktopCount := 1
    }

    i := 0
    while (CurrentDesktopId and i < DesktopCount) {
        StartPos := (i * IdLength) + 1
        DesktopIter := SubStr(DesktopList, StartPos, IdLength)
        OutputDebug, The iterator is pointing at %DesktopIter% and count is %i%.

        if (DesktopIter = CurrentDesktopId) {
            CurrentDesktop := i + 1
            OutputDebug, Current desktop number is %CurrentDesktop% with an ID of %DesktopIter%.
            break
        }
        i++
    }
}

getSessionId()
{
    ProcessId := DllCall("GetCurrentProcessId", "UInt")
    if ErrorLevel {
        OutputDebug, Error getting current process id: %ErrorLevel%
        return
    }
    OutputDebug, Current Process Id: %ProcessId%

    DllCall("ProcessIdToSessionId", "UInt", ProcessId, "UInt*", SessionId)
    if ErrorLevel {
        OutputDebug, Error getting session id: %ErrorLevel%
        return
    }
    OutputDebug, Current Session Id: %SessionId%
    return SessionId
}

_switchDesktopToTarget(targetDesktop)
{

    global CurrentDesktop, DesktopCount, LastOpenedDesktop

    if (targetDesktop > DesktopCount || targetDesktop < 1 || targetDesktop == CurrentDesktop) {
        OutputDebug, [invalid] target: %targetDesktop% current: %CurrentDesktop%
        return
    }

    LastOpenedDesktop := CurrentDesktop

    WinActivate, ahk_class Shell_TrayWnd

    DllCall(GoToDesktopNumberProc, Int, targetDesktop-1)

    Sleep, 50
    focusTheForemostWindow(targetDesktop)
}

updateGlobalVariables()
{
    mapDesktopsFromRegistry()
}

switchDesktopByNumber(targetDesktop)
{
    global CurrentDesktop, DesktopCount
    updateGlobalVariables()
    _switchDesktopToTarget(targetDesktop)
    ToolTip, %targetDesktop%, 9999, 9999
    SetTimer, RemoveToolTip, 2000
    return
}

RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip
return

switchDesktopToLastOpened()
{
    global CurrentDesktop, DesktopCount, LastOpenedDesktop
    updateGlobalVariables()
    _switchDesktopToTarget(LastOpenedDesktop)
}

switchDesktopToRight()
{
    global CurrentDesktop, DesktopCount
    updateGlobalVariables()
    _switchDesktopToTarget(CurrentDesktop == DesktopCount ? 1 : CurrentDesktop + 1)
}

switchDesktopToLeft()
{
    global CurrentDesktop, DesktopCount
    updateGlobalVariables()
    _switchDesktopToTarget(CurrentDesktop == 1 ? DesktopCount : CurrentDesktop - 1)
}

focusTheForemostWindow(targetDesktop) {
    foremostWindowId := getForemostWindowIdOnDesktop(targetDesktop)
    if isWindowNonMinimized(foremostWindowId) {
        WinActivate, ahk_id %foremostWindowId%
    }
}

isWindowNonMinimized(windowId) {
    WinGet MMX, MinMax, ahk_id %windowId%
    return MMX != -1
}

getForemostWindowIdOnDesktop(n)
{
    n := n - 1

    WinGet winIDList, list
    Loop % winIDList {
        windowID := % winIDList%A_Index%
        windowIsOnDesktop := DllCall(IsWindowOnDesktopNumberProc, UInt, windowID, UInt, n)

        if (windowIsOnDesktop == 1) {
            return windowID
        }
    }
}

MoveCurrentWindowToDesktop(desktopNumber) {
    WinGet, activeHwnd, ID, A
    DllCall(MoveWindowToDesktopNumberProc, UInt, activeHwnd, UInt, desktopNumber - 1)
    switchDesktopByNumber(desktopNumber)
    ToolTip, %targetDesktop%, 9999, 9999
    SetTimer, RemoveToolTip, 2000
    return
}

MoveCurrentWindowToRightDesktop()
{
    global CurrentDesktop, DesktopCount
    updateGlobalVariables()
    WinGet, activeHwnd, ID, A
    DllCall(MoveWindowToDesktopNumberProc, UInt, activeHwnd, UInt, (CurrentDesktop == DesktopCount ? 1 : CurrentDesktop + 1) - 1)
    _switchDesktopToTarget(CurrentDesktop == DesktopCount ? 1 : CurrentDesktop + 1)
}

MoveCurrentWindowToLeftDesktop()
{
    global CurrentDesktop, DesktopCount
    updateGlobalVariables()
    WinGet, activeHwnd, ID, A
    DllCall(MoveWindowToDesktopNumberProc, UInt, activeHwnd, UInt, (CurrentDesktop == 1 ? DesktopCount : CurrentDesktop - 1) - 1)
    _switchDesktopToTarget(CurrentDesktop == 1 ? DesktopCount : CurrentDesktop - 1)
}

createVirtualDesktop()
{
    global CurrentDesktop, DesktopCount
    Send, #^d
    DesktopCount++
    CurrentDesktop := DesktopCount
    OutputDebug, [create] desktops: %DesktopCount% current: %CurrentDesktop%
}

deleteVirtualDesktop()
{
    global CurrentDesktop, DesktopCount, LastOpenedDesktop
    Send, #^{F4}
    if (LastOpenedDesktop >= CurrentDesktop) {
        LastOpenedDesktop--
    }
    DesktopCount--
    CurrentDesktop--
    OutputDebug, [delete] desktops: %DesktopCount% current: %CurrentDesktop%
}