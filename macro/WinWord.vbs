Sub 赤()
'
' 赤 Macro
'
' Alt S
'
    Selection.Font.Color = wdColorRed
End Sub

Sub 青()
'
' 青 Macro
'
' Alt B
'
    Selection.Font.Color = -671023207
End Sub

Sub 黒()
'
' 黒 Macro
'
' Alt Z
'
    Selection.Font.Color = wdColorAutomatic
End Sub

Sub 無書式()
'
' 無書式 Macro
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

Sub 無書式の貼り付け()
'
' 無書式の貼り付け Macro
'
' Alt V
'
    On Error Resume Next
    Selection.PasteAndFormat (wdFormatPlainText)
End Sub

Sub コピー()
'
' コピー Macro
'
' Alt C
'
    On Error Resume Next
    Selection.Copy
End Sub

Sub 取り消し線()
'
' 取り消し線 Macro
'
' Alt D
'
    Selection.Font.StrikeThrough = wdToggle
End Sub

Sub 黄色いペン()
'
' 黄色いペン Macro
'
' Shift Alt S
'
    Options.DefaultHighlightColorIndex = wdYellow
    Selection.Range.HighlightColorIndex = wdYellow
End Sub

Sub 青いペン()
'
' 青いペン Macro
'
' Shift Alt B
'
    Options.DefaultHighlightColorIndex = wdTurquoise
    Selection.Range.HighlightColorIndex = wdTurquoise
End Sub

Sub ペンを消す()
'
' ペンを消す Macro
'
' Shift Alt Z
'
    Options.DefaultHighlightColorIndex = wdNoHighlight
    Selection.Range.HighlightColorIndex = wdNoHighlight
End Sub
