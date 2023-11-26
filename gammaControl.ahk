#Requires AutoHotkey v2.0
#SingleInstance

;###################
; WORK IN PORGRESS
;###################

; https://github.com/tigerlily-dev/Monitor-Configuration-Class
#Include Monitor_Class_v2.ahk
mon := Monitor() ; create object mon from Monitor class



g50 := 50
; ctrl alt i
^!i:: mon.SetGammaRamp(g50, g50, g50)

g100 := 100
; ctrl alt o
^!o:: mon.SetGammaRamp(g100, g100, g100)

global FileNumber := 0

^k:: {
 Static FileNumber := 0
 FileNumber++
 MsgBox FileNumber
}

^j:: {
 Static FileNumber := 0
 FileNumber--
 MsgBox FileNumber
}