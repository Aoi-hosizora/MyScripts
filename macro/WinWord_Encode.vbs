Sub 愒()
'
' 愒 Macro
'
' Alt S
'
    Selection.Font.Color = wdColorRed
End Sub

Sub 惵()
'
' 惵 Macro
'
' Alt B
'
    Selection.Font.Color = -671023207
End Sub

Sub 崟()
'
' 崟 Macro
'
' Alt Z
'
    Selection.Font.Color = wdColorAutomatic
End Sub

Sub 柍彂幃()
'
' 柍彂幃 Macro
'
' Alt X
'
    Selection.Font.Bold = False
    Selection.Font.Italic = False
    Selection.Font.UnderlineColor = wdColorAutomatic
    Selection.Font.Underline = False
    Selection.Font.StrikeThrough = False
    Selection.Font.Subscript = False
    Selection.Font.Color = wdColorAutomatic
    Options.DefaultHighlightColorIndex = wdNoHighlight
    Selection.Range.HighlightColorIndex = wdNoHighlight
End Sub

Sub 柍彂幃偺揬傝晅偗()
'
' 柍彂幃偺揬傝晅偗 Macro
'
' Alt V
'
    On Error Resume Next
    Selection.PasteAndFormat (wdFormatPlainText)
End Sub

Sub 僐僺乕()
'
' 僐僺乕 Macro
'
' Alt C
'
    On Error Resume Next
    Selection.Copy
End Sub

Sub 庢傝徚偟慄()
'
' 庢傝徚偟慄 Macro
'
' Alt D
'
    Selection.Font.StrikeThrough = wdToggle
End Sub

Sub 墿怓偄儁儞()
'
' 墿怓偄儁儞 Macro
'
' Shift Alt S
'
    Options.DefaultHighlightColorIndex = wdYellow
    Selection.Range.HighlightColorIndex = wdYellow
End Sub

Sub 惵偄儁儞()
'
' 惵偄儁儞 Macro
'
' Shift Alt B
'
    Options.DefaultHighlightColorIndex = wdTurquoise
    Selection.Range.HighlightColorIndex = wdTurquoise
End Sub

Sub 儁儞傪徚偡()
'
' 儁儞傪徚偡 Macro
'
' Shift Alt Z
'
    Options.DefaultHighlightColorIndex = wdNoHighlight
    Selection.Range.HighlightColorIndex = wdNoHighlight
End Sub
