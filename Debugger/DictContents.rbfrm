#tag Window
Begin Window DictContents
   BackColor       =   16777215
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   False
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Contents"
   Visible         =   True
   Width           =   297
   Begin ListBox Contents
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
      Height          =   400
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Name	Value"
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
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
      Top             =   0
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   297
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Show(d As Dictionary)
		  For Each Key As String In d.Keys
		    Contents.AddRow(Key)
		    Dim info As Introspection.TypeInfo
		    Try
		      info = Introspection.GetType(d.Value(Key))
		    Catch KeyNotFoundException
		      Continue
		    End Try
		    'If info.IsPrimitive Then
		    Select Case VarType(d.Value(Key))
		    Case Variant.TypeArray
		      
		    Case Variant.TypeBoolean
		      Contents.CellType(Contents.LastIndex, 1) = Listbox.TypeCheckbox
		      If d.Value(Key).BooleanValue Then
		        Contents.CellState(Contents.LastIndex, 1) = CheckBox.CheckedStates.Checked
		      Else
		        Contents.CellState(Contents.LastIndex, 1) = CheckBox.CheckedStates.Unchecked
		      End If
		    Case Variant.TypeColor
		      Contents.Cell(Contents.LastIndex, 1) = "&c" + Hex(d.Value(Key).ColorValue)
		    Case Variant.TypeString
		      Contents.Cell(Contents.LastIndex, 1) = d.Value(Key).StringValue
		    Case Variant.TypeInteger
		      Contents.Cell(Contents.LastIndex, 1) = Str(d.Value(Key).Int32Value)
		    Else
		      Contents.Cell(Contents.LastIndex, 1) = info.FullName
		      Contents.CellTag(Contents.LastIndex, 1) = d.Value(Key)
		      
		    End Select
		    Contents.CellType(Contents.LastIndex, 1) = Listbox.TypeEditable
		    
		  Next
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

