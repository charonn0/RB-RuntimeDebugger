#tag Window
Begin Window Window1
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   1157607423
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Untitled"
   Visible         =   True
   Width           =   600
   Begin HTTPSocket Sock
      Address         =   ""
      BytesAvailable  =   ""
      BytesLeftToSend =   ""
      Height          =   32
      Index           =   -2147483648
      IsConnected     =   0
      Left            =   650
      LockedInPosition=   False
      Port            =   0
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   77
      Width           =   32
      yield           =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  DebugWindow.Show
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Sock
	#tag Event
		Function AuthenticationRequired(Realm As String, Headers As InternetHeaders, ByRef Name As String, ByRef Password As String) As Boolean
		  Break
		End Function
	#tag EndEvent
	#tag Event
		Sub Connected()
		  Break
		End Sub
	#tag EndEvent
	#tag Event
		Sub DownloadComplete(url as string, httpStatus as integer, headers as internetHeaders, file as folderItem)
		  Break
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(code as integer)
		  Break
		End Sub
	#tag EndEvent
	#tag Event
		Sub HeadersReceived(headers as internetHeaders, httpStatus as integer)
		  Break
		End Sub
	#tag EndEvent
	#tag Event
		Sub PageReceived(url as string, httpStatus as integer, headers as internetHeaders, content as string)
		  Break
		End Sub
	#tag EndEvent
	#tag Event
		Function ProxyAuthenticationRequired(Realm As String, Headers As InternetHeaders, ByRef Name As String, ByRef Password As String) As Boolean
		  Break
		End Function
	#tag EndEvent
#tag EndEvents
