#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!f8::	
    Run, SoundVolumeView.exe /Switch focused
Return

!f9::	
    Run, SoundVolumeView.exe /ChangeVolume focused -50
Return

!f10::	
    Run, SoundVolumeView.exe /ChangeVolume focused +50
Return

^f8::	
    Run, nircmd.exe mutesysvolume 2
Return

^f9::	
    Run, nircmd.exe changesysvolume 4000
Return

^f10::	
    Run, nircmd.exe changesysvolume -4000
Return
