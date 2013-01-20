VERSION 5.00
Begin VB.Form frmMouseSetup 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "�������"
   ClientHeight    =   2565
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4455
   Icon            =   "frmMouseSetup.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2565
   ScaleWidth      =   4455
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CheckBox chkDefault 
      Caption         =   "�ָ�Ĭ��"
      Height          =   315
      Left            =   240
      TabIndex        =   9
      Top             =   2040
      Width           =   1035
   End
   Begin VB.Frame Frame1 
      Caption         =   "��ͨ�������������"
      Height          =   1575
      Left            =   240
      TabIndex        =   2
      Top             =   240
      Width           =   3975
      Begin VB.ComboBox cmbMiddleButton 
         Height          =   300
         ItemData        =   "frmMouseSetup.frx":08CA
         Left            =   1560
         List            =   "frmMouseSetup.frx":08DD
         Style           =   2  'Dropdown List
         TabIndex        =   8
         Top             =   780
         Width           =   1095
      End
      Begin VB.ComboBox cmbLeftButton 
         Height          =   300
         ItemData        =   "frmMouseSetup.frx":0905
         Left            =   300
         List            =   "frmMouseSetup.frx":0918
         Style           =   2  'Dropdown List
         TabIndex        =   4
         Top             =   780
         Width           =   1095
      End
      Begin VB.ComboBox cmbRightButton 
         Height          =   300
         ItemData        =   "frmMouseSetup.frx":0940
         Left            =   2760
         List            =   "frmMouseSetup.frx":0953
         Style           =   2  'Dropdown List
         TabIndex        =   3
         Top             =   780
         Width           =   1095
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "����м�"
         Height          =   180
         Left            =   1560
         TabIndex        =   7
         Top             =   480
         Width           =   720
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "������"
         Height          =   180
         Left            =   300
         TabIndex        =   6
         Top             =   480
         Width           =   720
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "����Ҽ�"
         Height          =   180
         Left            =   2760
         TabIndex        =   5
         Top             =   480
         Width           =   720
      End
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "����(&S)"
      Height          =   420
      Left            =   1680
      TabIndex        =   1
      Top             =   1980
      Width           =   1095
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "ȡ��(&C)"
      Height          =   420
      Left            =   2880
      TabIndex        =   0
      Top             =   1980
      Width           =   1095
   End
End
Attribute VB_Name = "frmMouseSetup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub chkDefault_Click()
    cmbLeftButton.ListIndex = 1
    cmbMiddleButton.ListIndex = 3
    cmbRightButton.ListIndex = 2
    chkDefault.Value = 0
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdSave_Click()
    MouseAction(1) = cmbLeftButton.ListIndex
    MouseAction(4) = cmbMiddleButton.ListIndex
    MouseAction(2) = cmbRightButton.ListIndex
    clsIni.WriteIniKey "Mouse", "LeftButtonMode", CStr(MouseAction(1))
    clsIni.WriteIniKey "Mouse", "MiddleButtonMode", CStr(MouseAction(4))
    clsIni.WriteIniKey "Mouse", "RightButtonMode", CStr(MouseAction(2))
    MsgBox "����������óɹ����棡", vbInformation + vbOKOnly
    Unload Me
End Sub

Private Sub Form_Load()
    CenterMe Me
    SetTopMost Me.hwnd, True
    '���������ʼ��
    cmbLeftButton.ListIndex = MouseAction(1)
    cmbMiddleButton.ListIndex = MouseAction(4)
    cmbRightButton.ListIndex = MouseAction(2)
End Sub
