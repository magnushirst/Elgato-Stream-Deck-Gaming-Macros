#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!f8:: ;  Toggle mute of the current program
    Run, SoundVolumeView.exe /Switch focused
Return

!f9:: ; Lower the volume of the current program
    Run, SoundVolumeView.exe /ChangeVolume focused -50
Return

!f10:: ; Increase the volume of the current program
    Run, SoundVolumeView.exe /ChangeVolume focused +50
Return

^f8::  ; Toggle mute of the system volume
    Run, nircmd.exe mutesysvolume 2
Return

^f9::  ; Increase system volume
    Run, nircmd.exe changesysvolume 4000
Return

^f10:: ; Decrease system volume
    Run, nircmd.exe changesysvolume -4000
Return
