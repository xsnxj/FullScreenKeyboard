VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "���� FullScreenKeyboard"
   ClientHeight    =   4230
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6060
   Icon            =   "frmAbout.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4230
   ScaleWidth      =   6060
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton cmdOk 
      Caption         =   "ȷ��(&O)"
      Height          =   375
      Left            =   3300
      TabIndex        =   9
      Top             =   3600
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "���˵��"
      Height          =   3075
      Left            =   540
      TabIndex        =   0
      Top             =   360
      Width           =   4875
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "5����Ϸ�꣺�ṩ10����ϼ���ݺ꣬��Ϸһ����ɱ"
         Height          =   180
         Left            =   480
         TabIndex        =   10
         Top             =   2220
         Width           =   4050
      End
      Begin VB.Label Label1 
         Caption         =   $"frmAbout.frx":08CA
         Height          =   615
         Left            =   120
         TabIndex        =   8
         Top             =   360
         Width           =   4335
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "������ǰ1.0��ʵ�����������幦�ܣ�"
         Height          =   180
         Left            =   120
         TabIndex        =   7
         Top             =   1020
         Width           =   2970
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "1����������,�������,��Ϸ����"
         Height          =   180
         Left            =   480
         TabIndex        =   6
         Top             =   1260
         Width           =   2610
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "2����갴�����壺��,��,��"
         Height          =   180
         Left            =   480
         TabIndex        =   5
         Top             =   1500
         Width           =   2250
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3�����̰������ܣ���ס,����,��ס����,��������"
         Height          =   180
         Left            =   480
         TabIndex        =   4
         Top             =   1740
         Width           =   3960
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "4����Ϸħ�����ܣ����ֳ��涯����Ϸ"
         Height          =   180
         Left            =   480
         TabIndex        =   3
         Top             =   1980
         Width           =   2970
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "http://www.emucn.net"
         BeginProperty Font 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   180
         Left            =   2340
         MouseIcon       =   "frmAbout.frx":095E
         MousePointer    =   99  'Custom
         TabIndex        =   2
         Top             =   2700
         Width           =   1800
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "���򣺰�һ"
         Height          =   180
         Left            =   780
         TabIndex        =   1
         Top             =   2700
         Width           =   900
      End
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOk_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    CenterMe Me
    SetWindowPos Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, Flags
End Sub

Private Sub Label7_Click()
    ShellExecute Me.hwnd, "open", "http://www.emucn.net", "", App.Path, 5
End Sub

