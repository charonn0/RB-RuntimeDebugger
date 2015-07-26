#tag Window
Begin Window DebugWindow Attributes ( InternalItem = True ) 
   BackColor       =   16777215
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   482
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   300371967
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Debugger"
   Visible         =   True
   Width           =   817
   Begin Listbox RuntimeList Attributes ( InternalItem = True ) 
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   ""
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   ""
      EnableDragReorder=   ""
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   ""
      HeadingIndex    =   -1
      Height          =   456
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   26
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   219
      _ScrollWidth    =   -1
   End
   Begin Introspector Thread1 Attributes ( InternalItem = True ) 
      Height          =   32
      Index           =   -2147483648
      Left            =   855
      LockedInPosition=   False
      Priority        =   5
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
   Begin Timer Timer1 Attributes ( InternalItem = True ) 
      Height          =   32
      Index           =   -2147483648
      Left            =   888
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   69
      Width           =   32
   End
   Begin Timer Timer2 Attributes ( InternalItem = True ) 
      Height          =   32
      Index           =   -2147483648
      Left            =   855
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   69
      Width           =   32
   End
   Begin CheckBox CheckBox1 Attributes ( InternalItem = True ) 
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "Hide debugger objects"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      Value           =   True
      Visible         =   True
      Width           =   219
   End
   Begin GroupBox GroupBox1 Attributes ( InternalItem = True ) 
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "Object Detail"
      Enabled         =   True
      Height          =   470
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   231
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   6
      Underline       =   ""
      Visible         =   True
      Width           =   574
      Begin Label Label6 Attributes ( InternalItem = True ) 
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   ""
         Left            =   243
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         Text            =   "References:"
         TextAlign       =   2
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   81
         Transparent     =   False
         Underline       =   True
         Visible         =   True
         Width           =   61
      End
      Begin Label Label3 Attributes ( InternalItem = True ) 
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   ""
         Left            =   240
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         Text            =   "Super Class"
         TextAlign       =   2
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   55
         Transparent     =   False
         Underline       =   True
         Visible         =   True
         Width           =   61
      End
      Begin Label Label1 Attributes ( InternalItem = True ) 
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   ""
         Left            =   255
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         Text            =   "Name:"
         TextAlign       =   2
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   32
         Transparent     =   False
         Underline       =   True
         Visible         =   True
         Width           =   46
      End
      Begin Listbox AttribList Attributes ( InternalItem = True ) 
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   ""
         Border          =   True
         ColumnCount     =   2
         ColumnsResizable=   ""
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   ""
         EnableDragReorder=   ""
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   100
         HelpTag         =   ""
         Hierarchical    =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   "Attribute Name	Attribute Value	Attribute Type"
         Italic          =   ""
         Left            =   240
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         RequiresSelection=   ""
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   362
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   553
         _ScrollWidth    =   -1
      End
      Begin Label ItemRefCount Attributes ( InternalItem = True ) 
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   ""
         Left            =   308
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         Text            =   "No Name Available"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   81
         Transparent     =   False
         Underline       =   ""
         Visible         =   True
         Width           =   367
      End
      Begin Label ItemClass Attributes ( InternalItem = True ) 
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   ""
         Left            =   305
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         Text            =   "No Name Available"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   55
         Transparent     =   False
         Underline       =   ""
         Visible         =   True
         Width           =   485
      End
      Begin Label ItemName Attributes ( InternalItem = True ) 
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   ""
         Left            =   305
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         Text            =   "No Name Available"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   32
         Transparent     =   False
         Underline       =   ""
         Visible         =   True
         Width           =   485
      End
      Begin PushButton ScriptRun Attributes ( InternalItem = True ) 
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Run Script"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   ""
         Left            =   687
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   81
         Underline       =   ""
         Visible         =   True
         Width           =   106
      End
   End
   Begin ItemInfo ItemInfo1 Attributes ( InternalItem = True ) 
      AcceptFocus     =   ""
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   16777215
      Backdrop        =   ""
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   251
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   240
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   106
      UseFocusRing    =   ""
      Visible         =   True
      Width           =   553
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Me.Clear
		  ShowBreak
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub Clear(All As Boolean = False)
		  AttribList.DeleteAllRows
		  ItemClass.Text = ""
		  ItemName.Text = ""
		  ItemRefCount.Text = ""
		  If All Then RuntimeList.DeleteAllRows
		  ItemInfo1.Clear
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Examine()
		  Clear
		  Dim item As ObjectInfo
		  If CurrentItem.Base IsA WeakRef Then
		    item = New ObjectInfo(WeakRef(CurrentItem.Base).Value)
		  Else
		    item = CurrentItem
		  End If
		  Dim a() As Introspection.AttributeInfo = item.Attribs
		  For i As Integer = 0 To UBound(a)
		    AttribList.AddRow(a(i).Name, a(i).Value)
		    AttribList.RowTag(AttribList.LastIndex) = a(i)
		    AttribList.CellType(AttribList.LastIndex, 1) = Listbox.TypeEditable
		  Next
		  ItemClass.Text = GetHierarchy(item)
		  If CurrentItem.Base IsA WeakRef Then
		    ItemName.Text = "(weakref)" + item.Name
		  Else
		    ItemName.Text = item.Name
		  End If
		  ItemRefCount.Text = Str(item.ReferenceCount)
		  ItemInfo1.Populate(item)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetHierarchy(Item As ObjectInfo) As String
		  Dim s As String
		  Dim nextitem As Introspection.TypeInfo = Item.Type.BaseType
		  Dim items() As String
		  Items.Append(Item.SuperClass)
		  Do Until nextitem = Nil
		    Items.Append(nextitem.FullName)
		    nextitem = nextitem.BaseType
		  Loop
		  For i As Integer = UBound(items) DownTo 0
		    If i <> 0 Then
		      s = s + Items(i) + " -> "
		    Else
		      s = s + Items(i)
		    End If
		  Next
		  If s = "" Then s = "Object -> " + Item.SuperClass
		  
		  Return s
		  
		Exception
		  Return Item.Name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowBreak()
		  RuntimeList.DeleteAllRows
		  ObjectInfo.Reset
		  Self.Title = "Debugger - RELOADING"
		  Thread1.Run
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected CurrentItem As ObjectInfo
	#tag EndProperty

	#tag Property, Flags = &h0
		Fin As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Rema As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events RuntimeList
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  #pragma Unused column
		  #pragma Unused x
		  #pragma Unused y
		  Self.CurrentItem = Me.RowTag(row)
		  Examine()
		End Function
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Asc(key) = &hCC Then
		    ShowBreak
		  End If
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Thread1
	#tag Event
		Sub Done()
		  Timer1.Mode = Timer.ModeSingle
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Progress(Finished As Integer, Remaining As Integer)
		  Fin = Finished
		  Rema = Remaining
		  If Timer2.Mode = Timer.ModeOff Then Timer2.Mode = Timer.ModeSingle
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  Timer2.Mode = Timer.ModeOff
		  Self.Title = "Debugger"
		  For i As Integer = 0 To UBound(Thread1.Items)
		    Dim info As ObjectInfo = Thread1.Items(i)
		    RuntimeList.AddFolder(info.Name)
		    RuntimeList.RowTag(RuntimeList.LastIndex) = info
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer2
	#tag Event
		Sub Action()
		  Dim perc As Double = Fin * 100 / (Rema)
		  Self.Title = "Debugger " + "RELOADING-" + Format(perc, "##0.0##\%")
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox1
	#tag Event
		Sub Action()
		  Thread1.ExcludeSelf = Me.Value
		  ShowBreak()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AttribList
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  If MsgBox("Change this attribute", 52, "Confirm Change") = 6 Then
		    Dim prop As Introspection.AttributeInfo = Me.RowTag(row)
		    prop.Value = Me.Cell(row, column)
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScriptRun
	#tag Event
		Sub Action()
		  Dim obj As Object = CurrentItem.Base.ObjectValue
		  Dim edit As New ScriptEdit(obj)
		  edit.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ItemInfo1
	#tag Event
		Function GetInfo() As ObjectInfo
		  Return CurrentItem
		End Function
	#tag EndEvent
#tag EndEvents
