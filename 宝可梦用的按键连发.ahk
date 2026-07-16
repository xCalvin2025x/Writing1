#Requires AutoHotkey v2.0
#SingleInstance Force

; 在模拟器中将a键和b键分别设置成a键和s键，开启此脚本，使用z键和x键连发，和正常按键不冲突

; 按住 Z 键时连发（10毫秒间隔，即每秒100次）连发a键，为了不冲突
$*z::SetTimer(SendZ, 10)
$*z up::SetTimer(SendZ, 0)

; 按住 X 键时连发（10毫秒间隔）连发s键，为了不冲突
$*x::SetTimer(SendX, 10)
$*x up::SetTimer(SendX, 0)

; 发送 Z 键的按下和释放
SendZ() {
    Send("{a down}")
    Sleep(1)
    Send("{a up}")
}

; 发送 X 键的按下和释放
SendX() {
    Send("{s down}")
    Sleep(1)
    Send("{s up}")
}

; 按 ESC 键退出脚本
Esc::ExitApp()