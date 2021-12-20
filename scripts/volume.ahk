#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

f13:: ;  Toggle mute of the current program
    Run, SoundVolumeView.exe /Switch focused
Return

f14:: ; Lower the volume of the current program
    Run, SoundVolumeView.exe /ChangeVolume focused -10
Return

f15:: ; Increase the volume of the current program
    Run, SoundVolumeView.exe /ChangeVolume focused +10
Return

f16::  ; Toggle mute of the system volume
    Run, nircmd.exe mutesysvolume 2
Return

f17::  ; Increase system volume
    Run, nircmd.exe changesysvolume 4000
Return

f18:: ; Decrease system volume
    Run, nircmd.exe changesysvolume -4000
Return

f19:: ; Switch audio output to headphones
	Run, SoundVolumeView.exe /SetDefault "3- Arctis Pro Wireless Game"
Return

f20:: ; Switch audio output to speakers
	Run, SoundVolumeView.exe /SetDefault "High Definition Audio Device"
Return

f21:: ;  Toggle mute of the current program
    Run, SoundVolumeView.exe /Switch "Discord"
Return

f22:: ; Lower the volume of the current program
    Run, SoundVolumeView.exe /ChangeVolume "Discord" -10
Return

f23:: ; Increase the volume of the current program
    Run, SoundVolumeView.exe /ChangeVolume "Discord" +10
Return
