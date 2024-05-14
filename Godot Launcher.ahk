#Requires AutoHotkey v2.0
#NoTrayIcon

;@Ahk2Exe-Set FileVersion, 1.0
;@Ahk2Exe-Set ProductVersion, 1.0.0.0
;@Ahk2Exe-Set CompanyName, Pikakid98

if A_Args.Length < 1
{
	Value := IniRead("version.ini", "Godot", "Version")

	Run "Godot_" Value "-stable_win64.exe"
    ExitApp
}

for n, param in A_Args
{
	Value := IniRead("version.ini", "Godot", "Version")

	Run "Godot_" Value "-stable_win64.exe" " " '"' A_Args[1] '"'
	ExitApp
}
