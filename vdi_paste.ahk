^+v::   ; CTRL + SHIFT + V = safe paste into VDI

ClipWait, 1
if (ErrorLevel) {
    MsgBox Clipboard is empty!
    return
}

text := Clipboard

Sleep, 400   ; time to focus VDI window

SetKeyDelay, 20, 20   ; typing speed (increase if letters drop)

Loop, Parse, text, `n, `r
{
    SendRaw %A_LoopField%
    Send {Enter}
}

return

Esc::ExitApp
