Attribute VB_Name = "modWin"
'��Զ�̶�
Public Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Public Const HWND_TOPMOST = -1
Public Const HWND_NOTOPMOST = -2
Public Const SWP_NOMOVE = &H2
Public Const SWP_NOSIZE = &H1
Public Const SWP_FRAMECHANGED = &H20
Public Const SWP_DRAWFRAME = SWP_FRAMECHANGED
Public Const Flags = SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE

'ȡ������
Public Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Public Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Public Const WS_DISABLED = &H8000000
Public Const GWL_EXSTYLE = (-20)
Public Const GWL_STYLE = (-16)

'��ȡ����λ��
Public Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Public Declare Function GetWindowRect Lib "user32" (ByVal hwnd As Long, lpRect As RECT) As Long
Public Type POINTAPI
    X As Long
    Y As Long
End Type
Public Type RECT
    Left As Long
    Top As Long
    Right As Long
    Bottom As Long
End Type

'���ⲿ�ļ�
Public Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long

'����WAV
Public Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Public Const SND_ASYNC = &H1

'���ô���͸����
Private Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hwnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
Public Const WS_EX_LAYERED = &H80000
Public Const LWA_ALPHA = &H2

'-----------------------ȫ�ֱ�����-------------------------
Public bDebug As Boolean, MouseAction(5) As Integer, bPlaySound As Boolean, ButtonStyle As Integer, bTopMost As Boolean, lastMode As Integer, CharKeyDelay As Integer, CtrlKeyDelay As Integer, alphaLevel As Integer
Public clsIni As New classIniFile
Public objKeySeq As Scripting.Dictionary
    
'���ô��ڹ̶�
Public Sub SetTopMost(hwnd, bTop As Boolean)
    If bTop Then
        SetWindowPos hwnd, HWND_TOPMOST, 0, 0, 0, 0, Flags
    Else
        SetWindowPos hwnd, HWND_NOTOPMOST, 0, 0, 0, 0, Flags
    End If
End Sub

'���ô��ڽ���
Public Sub SetNoFocus(hwnd, bNoFocus As Boolean)
    If bNoFocus Then
        SetWindowLong hwnd, GWL_EXSTYLE, GetWindowLong(hwnd, GWL_EXSTYLE) Or WS_DISABLED
    Else
        SetWindowLong hwnd, GWL_EXSTYLE, GetWindowLong(hwnd, GWL_EXSTYLE) And Not WS_DISABLED
    End If
End Sub

'���ô���͸����
Public Sub SetAlpha(hwnd, alphaLevel As Integer)
    If alphaLevel = 255 Then
        SetWindowLong hwnd, GWL_EXSTYLE, GetWindowLong(hwnd, GWL_EXSTYLE) And Not WS_EX_LAYERED
    Else
        SetWindowLong hwnd, GWL_EXSTYLE, GetWindowLong(hwnd, GWL_EXSTYLE) Or WS_EX_LAYERED
    End If
    SetLayeredWindowAttributes hwnd, 0, alphaLevel, LWA_ALPHA
End Sub

Public Sub CenterMe(it As Form) '���ھ���
    it.Left = (Screen.Width - it.Width) / 2
    it.Top = (Screen.Height - it.Height) / 2
End Sub

Public Function FixLen(strNum, intlen)
    Dim strTemp
    If Len(strNum) < intlen Then strTemp = String(intlen - Len(strNum), "0") & strNum Else strTemp = strNum
    FixLen = strTemp
End Function
