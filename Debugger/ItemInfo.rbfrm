#tag Window
Begin ContainerControl ItemInfo Attributes ( InternalItem = True ) 
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
   Left            =   32
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   32
   UseFocusRing    =   ""
   Visible         =   True
   Width           =   562
   Begin ListBox PropertyList Attributes ( InternalItem = True ) 
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
      Height          =   251
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Property Name	Property Value	Property Type"
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   228
      _ScrollWidth    =   -1
   End
   Begin ListBox MethodList Attributes ( InternalItem = True ) 
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   2
      ColumnsResizable=   ""
      ColumnWidths    =   "100%"
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
      Height          =   251
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Method	Invoke"
      Italic          =   ""
      Left            =   235
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
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   327
      _ScrollWidth    =   -1
   End
   Begin Canvas Canvas1 Attributes ( InternalItem = True ) 
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   251
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   228
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      UseFocusRing    =   True
      Visible         =   True
      Width           =   7
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Clear()
		  MethodList.DeleteAllRows
		  PropertyList.DeleteAllRows
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Populate(Info As ObjectInfo)
		  If Info.Type Is Nil Then Return
		  Dim m() As Introspection.MethodInfo = Info.Type.GetMethods
		  For i As Integer = 0 To UBound(m)
		    If m(i).IsPrivate Then Continue
		    If m(i).IsProtected Then Continue
		    Dim o As New ObjectInfo(m(i))
		    If o.HasAttribute("Hidden") Then Continue
		    Dim sig As String = m(i).Name + "("
		    Dim params() As Introspection.ParameterInfo = m(i).GetParameters
		    For x As Integer = 0 To UBound(params)
		      Dim ts, br As String
		      If params(x).IsByRef Then br = "ByRef "
		      If params(x).ParameterType = Nil Then
		        ts = "Nil"
		      Else
		        ts = params(x).ParameterType.Name
		      End If
		      sig = sig + br + ts
		      If UBound(params) > 0 And x < UBound(params) Then sig = sig  + ", "
		    Next
		    sig = sig + ")"
		    If m(i).ReturnType <> Nil Then
		      sig = "Function " + sig + " As " + m(i).ReturnType.Name
		      
		    Else
		      sig = "Sub " + sig
		    End If
		    If m(i).IsShared Then
		      sig = "Shared " + sig
		    End If
		    
		    MethodList.AddRow(sig)
		    MethodList.RowTag(MethodList.LastIndex) = m(i)
		    MethodList.Cell(MethodList.LastIndex, 1) = "Invoke"
		  Next
		  Dim p() As Introspection.PropertyInfo = Info.Properties
		  For i As Integer = 0 To UBound(p)
		    If p(i).PropertyType.FullName = "Dictionary" Then
		      PropertyList.AddRow(Info.GetPropertyName(i), "View")
		      PropertyList.RowTag(PropertyList.LastIndex) = Dictionary(p(i).Value(Info.Base))
		    Else
		      Dim v, n As String
		      n = Info.GetPropertyName(i)
		      v = Info.GetProperty(n)
		      PropertyList.AddRow(n, v)
		      PropertyList.RowTag(PropertyList.LastIndex) = p(i)
		      If p(i).CanWrite Then
		        PropertyList.CellType(PropertyList.LastIndex, 1) = Listbox.TypeEditable
		      End If
		    End If
		  Next
		  If Info.Name = "Dictionary" Then
		    PropertyList.AddRow("Contents", "View")
		    PropertyList.RowTag(PropertyList.LastIndex) = Dictionary(Info.Base)
		  End If
		  
		  
		  If Info.Name = "Picture" Then
		    PropertyList.AddRow("", "View")
		    PropertyList.RowTag(PropertyList.LastIndex) = Picture(Info.Base)
		  End If
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event GetInfo() As ObjectInfo
	#tag EndHook


	#tag Property, Flags = &h21
		Private LastX As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDown As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected MethHover As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SplitterThumb As Picture
	#tag EndProperty


#tag EndWindowCode

#tag Events PropertyList
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  If MsgBox("Change this value?", 52, "Confirm Change") = 6 Then
		    Dim prop As Introspection.PropertyInfo = Me.RowTag(row)
		    prop.Value(GetInfo.Base) = Me.Cell(row, column)
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  Dim row As Integer = Me.RowFromXY(X, Y)
		  If row <= Me.ListCount - 1 And row > -1 Then
		    If Me.RowTag(row) IsA Dictionary Then
		      Dim dict As New DictContents
		      Dim d As Dictionary = Me.RowTag(row)
		      dict.Show(d)
		      Return True
		    ElseIf Me.RowTag(row) IsA Picture Then
		      Dim pict As New PicContents
		      pict.Show(Me.RowTag(row))
		    End If
		  End If
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events MethodList
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  If column = 1 Then
		    If row = MethHover Then
		      g.ForeColor = &cFF000000
		    Else
		      g.ForeColor = &c0000FF00
		    End If
		    g.Underline = True
		  End If
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  If column = 1 Then
		    If MsgBox("Invoke this method?", 52, "Confirm Action") = 6 Then
		      Dim methinfo As Introspection.MethodInfo = Me.RowTag(row)
		      methinfo.Invoke(GetInfo.Base)
		    End If
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  Dim row, column As Integer
		  row = Me.RowFromXY(X, Y)
		  column = Me.ColumnFromXY(X, Y)
		  If column = 1 Then
		    Me.MouseCursor = System.Cursors.FingerPointer
		    'MethHover = row
		  Else
		    Me.MouseCursor = System.Cursors.StandardPointer
		    MethHover = -1
		  End If
		  
		  'Me.InvalidateCell(row, column)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas1
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #pragma Unused Y
		  LastX = X
		  mDown = True
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  #pragma Unused Y
		  If Abs(X - LastX) > 10 Then
		    Dim deltax As Integer = X - LastX
		    PropertyList.Width = PropertyList.Width + deltax
		    Me.Left = PropertyList.Width + 1
		    MethodList.Left = MethodList.Left + deltax
		    MethodList.Width = MethodList.Width - deltax
		    LastX = X
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics)
		  If SplitterThumb = Nil Then SplitterThumb = New Picture(g.Width, g.Height, 24)
		  If SplitterThumb.Width <> g.Width Or SplitterThumb.Height <> g.Height Then SplitterThumb = New Picture(g.Width, g.Height, 24)
		  If Not mDown Then
		    SplitterThumb.Graphics.ForeColor = &cFFFFFF00
		  Else
		    SplitterThumb.Graphics.ForeColor =&cC0C0C000
		  End If
		  SplitterThumb.Graphics.FillRect(0, 0, g.Width, g.Height)
		  SplitterThumb.Graphics.ForeColor = &c80808000
		  SplitterThumb.Graphics.DrawLine(g.Width * 0.25, 0.25 * g.Height, g.Width * 0.25, 0.75 * g.Height)
		  SplitterThumb.Graphics.DrawLine(g.Width * 0.75, 0.25 * g.Height, g.Width * 0.75, 0.75 * g.Height)
		  g.DrawPicture(SplitterThumb, 0, 0)
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  #pragma Unused X
		  #pragma Unused Y
		  mDown = False
		  Canvas1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
