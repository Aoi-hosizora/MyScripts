Sub ��()
'
' �� Macro
'
' Alt S
'
    Selection.Font.Color = wdColorRed
End Sub

Sub ��()
'
' �� Macro
'
' Alt B
'
    Selection.Font.Color = -671023207
End Sub

Sub ��()
'
' �� Macro
'
' Alt Z
'
    Selection.Font.Color = wdColorAutomatic
End Sub

Sub ������()
'
' ������ Macro
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

Sub �������̓\��t��()
'
' �������̓\��t�� Macro
'
' Alt V
'
    On Error Resume Next
    Selection.PasteAndFormat (wdFormatPlainText)
End Sub

Sub �R�s�[()
'
' �R�s�[ Macro
'
' Alt C
'
    On Error Resume Next
    Selection.Copy
End Sub

Sub ��������()
'
' �������� Macro
'
' Alt D
'
    Selection.Font.StrikeThrough = wdToggle
End Sub

Sub ���F���y��()
'
' ���F���y�� Macro
'
' Shift Alt S
'
    Options.DefaultHighlightColorIndex = wdYellow
    Selection.Range.HighlightColorIndex = wdYellow
End Sub

Sub ���y��()
'
' ���y�� Macro
'
' Shift Alt B
'
    Options.DefaultHighlightColorIndex = wdTurquoise
    Selection.Range.HighlightColorIndex = wdTurquoise
End Sub

Sub �y��������()
'
' �y�������� Macro
'
' Shift Alt Z
'
    Options.DefaultHighlightColorIndex = wdNoHighlight
    Selection.Range.HighlightColorIndex = wdNoHighlight
End Sub
