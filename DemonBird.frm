VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FF8080&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "CLEAR GIF SPRITES"
   ClientHeight    =   5625
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4500
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "DemonBird.frx":0000
   ScaleHeight     =   5625
   ScaleWidth      =   4500
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   200
      Left            =   3840
      Top             =   3720
   End
   Begin VB.CommandButton Command2 
      Caption         =   "(hidden frames advance button)"
      Height          =   375
      Left            =   960
      TabIndex        =   1
      Top             =   4320
      Visible         =   0   'False
      Width           =   2655
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&EXIT"
      Height          =   495
      Left            =   1200
      TabIndex        =   0
      Top             =   3840
      Width           =   2175
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   $"DemonBird.frx":59C0
      Height          =   1275
      Left            =   0
      TabIndex        =   3
      Top             =   4440
      Width           =   4515
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   $"DemonBird.frx":5B06
      Height          =   1215
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   4515
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   2220
      Index           =   5
      Left            =   1080
      Picture         =   "DemonBird.frx":5C7C
      Top             =   1440
      Visible         =   0   'False
      Width           =   2100
   End
   Begin VB.Image Image1 
      Height          =   2220
      Index           =   0
      Left            =   1080
      Picture         =   "DemonBird.frx":605E
      Top             =   1440
      Width           =   2100
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   2220
      Index           =   4
      Left            =   1080
      Picture         =   "DemonBird.frx":6456
      Top             =   1440
      Visible         =   0   'False
      Width           =   2100
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   2220
      Index           =   3
      Left            =   1080
      Picture         =   "DemonBird.frx":6808
      Top             =   1440
      Visible         =   0   'False
      Width           =   2100
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   2220
      Index           =   2
      Left            =   1080
      Picture         =   "DemonBird.frx":6BA7
      Top             =   1440
      Visible         =   0   'False
      Width           =   2100
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   2220
      Index           =   1
      Left            =   1080
      Picture         =   "DemonBird.frx":6FB8
      Top             =   1440
      Visible         =   0   'False
      Width           =   2100
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   $"DemonBird.frx":73B0
      Height          =   855
      Left            =   240
      TabIndex        =   4
      Top             =   1440
      Width           =   3915
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer

Private Sub Timer1_Timer()

Command2_Click 'beats putting the loop here... it was originally just a botton to see how the bird looked

End Sub


Private Sub Command1_Click() 'end program duh..
End
End Sub

Private Sub Command2_Click()

Timer1.Enabled = True
a = a + 1: If a > 5 Then a = 1: Image1(5).Visible = False 'step frame on bird and hide the previsous one
Image1(a - 1).Visible = False 'hide the bird frame just before it
Image1(a).Visible = True 'show the next bird frame

End Sub

Private Sub Form_Load()
Command2_Click  ' get it off frame (0) and on to frame 1
End Sub

Private Sub Form_Unload(Cancel As Integer)

MsgBox "I know this isn't all that great but please give me a few globes.", vbExclamation, "Vote for me"

End Sub

