;note - using this script implies that you have read the disclaimer in the readme.md file located at https://github.com/dlipchenko/AHKScripts/tree/master/Warframe and agree with the conditions I've written there
;note 2 - this script requires you to run the game in windowed mode, or borderless full-screen. Running in fullscreen is not supported yet, but I will try to find a way to make it work when I have the time
toggle = 0
#MaxThreadsPerHotkey 3
CoordMode, Mouse, Relative
TopLeftChecked = 0
TopRightChecked = 0
MidLeftChecked = 0
MidRightChecked = 0
BotLeftChecked = 0
BotRightChecked = 0
InfiniteChecked = 0
MySlider = 1
CheckCounter = 0
LoopCounter = 0
ResW = 0
ResH = 0


Gui, +Owner  ; +Owner prevents a taskbar button from appearing.
Gui, font, cBlack W100 s8, Verdana
Gui, Add, Text,X10 Y10, Which items should I craft?
Gui, Add, Checkbox, gCheckChecks vTopLeftCheck X10 Y30, Top-left
Gui, Add, Checkbox, gCheckChecks vTopRightCheck X100 Y30, Top-right
Gui, Add, Checkbox, gCheckChecks vMidLeftCheck X10 Y50, Mid-left
Gui, Add, Checkbox, gCheckChecks vMidRightCheck X100 Y50, Mid-right
Gui, Add, Checkbox, gCheckChecks vBotLeftCheck X10 Y70, Bot-left
Gui, Add, Checkbox, gCheckChecks vBotRightCheck X100 Y70, Bot-right
Gui, Add, Text,X10 Y90, How many times?
Gui, Add, Slider, x25 w90 Range1-50 vMySlider gSlide, 
Gui, Add, Checkbox, gCheckChecks vInfinite x115 y110, Infinite?
Gui, Add, Text,X10 Y111 W20 vSlideText, 1
Gui, +ToolWindow
Gui, +AlwaysOnTop
Gui, Show, NA x0 yCenter w200 h200
Gui, +Resize

Slide:
	GuiControl,, SlideText, %MySlider%
return
CheckChecks:
	GuiControlGet, TopLeftChecked,,TopLeftCheck
	GuiControlGet, TopRightChecked,,TopRightCheck
	GuiControlGet, MidLeftChecked,,MidLeftCheck
	GuiControlGet, MidRightChecked,,MidRightCheck
	GuiControlGet, BotLeftChecked,,BotLeftCheck
	GuiControlGet, BotRightChecked,,BotRightCheck
	GuiControlGet, InfiniteChecked,,Infinite
return

;the following section was used for debugging.
;F3::
;	MsgBox, TL: %TopLeftChecked%, TR: %TopRightChecked%, ML: %MidLeftChecked%, MR: %MidRightChecked%, BL: %BotLeftChecked%, BR: %BotRightChecked%, I: %InfiniteChecked%, S: %MySlider%
;return

;F1::
;	WinGetPos, XWinPos, YWinPos, XXWidth, YYHeight, A
;	MsgBox, XX: %XX%, YY: %YY%, XXWidth: %XXWidth%, YYHeight: %YYHeight%
;return

`::
	CheckCounter := TopLeftChecked + TopRightChecked + MidLeftChecked + MidRightChecked + BotLeftChecked + BotRightChecked
	LoopCounter = 0
	WinGetPos, , , ResW, ResH, A
	
    Toggle := !Toggle
	
	if (CheckCounter = 0)
	{
		MsgBox, Select at least one craft box
		Toggle = 0
		return
	}
	
	
	;((CheckCounter > 0) and ((InfiniteChecked = 1) or (LoopCounter < MySlider)) and (Toggle = 1))
	
	
	
	
	if (TopLeftChecked = 1) and (Toggle = 1)
	{
		MouseMove, ResW*0.3, ResH*0.325, 20
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
	}
	if (TopRightChecked = 1) and (Toggle = 1)
	{
		MouseMove, ResW*0.7, ResH*0.325, 20
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
	}
	if (MidLeftChecked = 1) and (Toggle = 1)
	{
		MouseMove, ResW*0.3, ResH*0.51, 20
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
	}
	if (MidRightChecked = 1) and (Toggle = 1)
	{
		MouseMove, ResW*0.7, ResH*0.51, 20
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
	}
	if (BotLeftChecked = 1) and (Toggle = 1)
	{
		MouseMove, ResW*0.3, ResH*0.695, 20
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
	}
	if (BotRightChecked = 1) and (Toggle = 1)
	{
		MouseMove, ResW*0.7, ResH*0.695, 20
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
		Send, {Enter}
		Sleep, 1000
	}
	TempNumber := 62000 - (3000 * CheckCounter)
	Sleep, %TempNumber%
	LoopCounter++
    While ((CheckCounter > 0) and ((InfiniteChecked = 1) or (LoopCounter < MySlider)) and (Toggle = 1))
	{
		if (TopLeftChecked = 1)
		{
			if (Toggle = 0)
			{
				Break
			}
			MouseMove, ResW*0.3, ResH*0.325, 20
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
		}
		if (TopRightChecked = 1)
		{
			if (Toggle = 0)
			{
				Break
			}
			MouseMove, ResW*0.7, ResH*0.325, 20
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
		}
		if (MidLeftChecked = 1)
		{
			if (Toggle = 0)
			{
				Break
			}
			MouseMove, ResW*0.3, ResH*0.51, 20
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
		}
		if (MidRightChecked = 1)
		{
			if (Toggle = 0)
			{
				Break
			}
			MouseMove, ResW*0.7, ResH*0.51, 20
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
		}
		if (BotLeftChecked = 1)
		{
			if (Toggle = 0)
			{
				Break
			}
			MouseMove, ResW*0.3, ResH*0.695, 20
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
		}
		if (BotRightChecked = 1)
		{
			if (Toggle = 0)
			{
				Break
			}
			MouseMove, ResW*0.7, ResH*0.695, 20
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
			Send, {Enter}
			Sleep, 1000
		}
		TempNumber2 := 62000 - (3000 * CheckCounter)
		Sleep, %TempNumber2%
		LoopCounter++
    }
	Toggle = 0
return

