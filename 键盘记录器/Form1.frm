VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3240
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5820
   LinkTopic       =   "Form1"
   ScaleHeight     =   3240
   ScaleWidth      =   5820
   StartUpPosition =   3  '����ȱʡ
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()

'ע��һ��ȫ�ֹ��ӡ�WH_KEYBOARD_LL���������ʾ����ȫ�ֹ��ӡ�AddressOf MyKBHook������Ӻ���MyKBHook���ڴ��ַ

'App.hInstance�Ǳ������ģ������Ҳ���ǹ��Ӻ������ڵ�ģ�飬���һ������0��ʾȫ�ֹ���
hHook = SetWindowsHookEx(WH_KEYBOARD_LL, AddressOf MyKBHook, App.hInstance, 0)
If hHook = 0 Then End      '�������ע��ʧ�ܻ᷵��0�����򷵻�ע��Ĺ��Ӿ��
'Me.Hide
End Sub

Private Sub Form_Unload(Cancel As Integer)

'�رճ����ʱ�����������ж�ع���
Call UnhookWindowsHookEx(hHook)

End Sub
