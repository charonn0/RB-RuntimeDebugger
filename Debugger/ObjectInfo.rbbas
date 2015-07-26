#tag Class
 Attributes ( InternalItem = True ) Class ObjectInfo
	#tag Method, Flags = &h1
		Protected Shared Sub AddReference(Obj As String)
		  #pragma BreakOnExceptions Off
		  If ReferenceCounter.HasKey(Obj) Then
		    ReferenceCounter.Value(Obj) = ReferenceCounter.Value(Obj) + 1
		  Else
		    ReferenceCounter.Value(Obj) = 1
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Attribs() As Introspection.AttributeInfo()
		  Return Me.Type.GetAttributes
		  
		Exception
		  Dim empty() As Introspection.AttributeInfo
		  Return empty
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Attribute(AttributeName As String) As String
		  Dim p() As Introspection.AttributeInfo = Me.Type.GetAttributes
		  For Each prop As Introspection.AttributeInfo In p()
		    If prop.Name = AttributeName Then
		      Return prop.Value
		    End If
		  Next
		  
		Exception
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Attribute(AttributeName As String, Assigns NewValue As String)
		  Dim p() As Introspection.AttributeInfo = Me.Type.GetAttributes
		  For Each prop As Introspection.AttributeInfo In p()
		    If prop.Name = AttributeName Then
		      prop.Value = NewValue
		      Return
		    End If
		  Next
		Exception
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Base() As Variant
		  Return Me.BaseObject.Value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Base As Variant)
		  BaseObject = New WeakRef(Base)
		  If Not Me.ByValue Then
		    AddReference(Me.Name)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  RemoveReference(Me.Name)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function GetCount(Obj As Introspection.TypeInfo) As Integer
		  If Obj = Nil Then Return 0
		  If Not ReferenceCounter.HasKey(Obj.FullName) Then
		    ReferenceCounter.Value(Obj.FullName) = 1
		  End If
		  Return ReferenceCounter.Value(Obj.FullName)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetProperty(PropertyName As String) As String
		  #pragma BreakOnExceptions Off
		  Dim p() As Introspection.PropertyInfo = Me.Type.GetProperties
		  Dim b As Variant
		  If Me.Base IsA WeakRef Then
		    b = WeakRef(Me.Base).Value
		  Else
		    b = Me.Base
		  End If
		  For Each prop As Introspection.PropertyInfo In p()
		    If prop.Name = PropertyName Then
		      Select Case prop.PropertyType.FullName
		      Case "String", "WString", "CString", "PString"
		        Return prop.Value(b).StringValue
		      Case "Integer", "Int16", "Int32", "Int64", "UInt16", "UInt32", "UInt64", "Double", "Single", "Currency"
		        Return Str(prop.Value(b).Int64Value)
		        
		      Case "Boolean"
		        If prop.Value(Me.Base).BooleanValue Then
		          Return "True"
		        Else
		          Return "False"
		        End If
		      Case "Window"
		        If b IsA Window Or b IsA ContainerControl Then
		          Return "&h" + Hex(Window(b).TrueWindow.Handle) + " - " + Window(b).Title
		        ElseIf  b IsA Control Then
		          Return "&h" + Hex(Control(b).Window.Handle) + " - " + Control(b).Window.Title
		        ElseIf Not (b Is Me.Base) Then
		          Dim info As New ObjectInfo(b)
		          Return info.GetProperty(PropertyName)
		        End If
		      End Select
		      'Else
		      'Return prop.Value(b).StringValue
		    End If
		  Next
		  
		Exception Err As RuntimeException
		  If Err IsA EndException Or Err IsA ThreadEndException Then Raise Err
		  System.DebugLog(Me.Name + "." + PropertyName + " does not have a string value")
		  Return "No String Value"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPropertyName(Index As Integer) As String
		  Dim p() As Introspection.PropertyInfo = Me.Type.GetProperties
		  Return p(index).Name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasAttribute(AttributeName As String) As Boolean
		  Dim p() As Introspection.AttributeInfo = Me.Type.GetAttributes
		  For Each prop As Introspection.AttributeInfo In p()
		    If prop.Name = AttributeName Then
		      Return True
		    End If
		  Next
		  
		Exception
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsSubclassOf(Item As Variant) As Boolean
		  Dim t As Introspection.TypeInfo = Introspection.GetType(Item)
		  Return Type.IsSubclassOf(t)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Properties() As Introspection.PropertyInfo()
		  Return Me.Type.GetProperties
		  
		Exception
		  Dim empty() As Introspection.PropertyInfo
		  Return empty
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub RemoveReference(Obj As String)
		  #pragma BreakOnExceptions Off
		  ReferenceCounter.Value(Obj) = ReferenceCounter.Value(Obj) - 1
		  If ReferenceCounter.Value(Obj) = 0 Then
		    ReferenceCounter.Remove(Obj)
		  End If
		  
		Exception
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub Reset()
		  ReferenceCounter = New Dictionary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetProperty(Index As Integer, Assigns NewValue As Variant)
		  Dim p() As Introspection.PropertyInfo = Me.Type.GetProperties
		  p(Index).Value(Me.BaseObject.Value) = NewValue
		  '
		  '
		  '
		  'For i As Integer = 0 To Ubound(p)
		  'Dim prop As Introspection.PropertyInfo = p(i)
		  'If prop.Name = PropertyName  Then
		  'Return prop.Value(Me.BaseObject.Value)
		  'End If
		  'Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetProperty(PropertyName As String, NewValue As String)
		  Dim p() As Introspection.PropertyInfo = Me.Type.GetProperties
		  For Each prop As Introspection.PropertyInfo In p()
		    If prop.Name = PropertyName  Then
		      prop.Value(Me.BaseObject.Value) = NewValue
		      Return
		    End If
		  Next
		  
		  
		  'Exception Err As NilObjectException
		  'Me.Destructor
		  'Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Value() As Variant
		  If Me.ByValue Then
		    Dim prop() As Introspection.PropertyInfo = Me.Type.GetProperties
		    For Each p As Introspection.PropertyInfo In prop
		      If p.Name = "value" Then
		        Return p.Value(p)
		      End If
		    Next
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Value(Assigns v As Variant)
		  If Me.ByValue Then
		    Dim prop() As Introspection.PropertyInfo = Me.Type.GetProperties
		    For Each p As Introspection.PropertyInfo In prop
		      If p.Name = "value" Then
		        p.Value(p) = v
		      End If
		    Next
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Attributes( InternalItem = True ) Protected BaseObject As WeakRef
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Me.Type.IsValueType
			End Get
		#tag EndGetter
		ByValue As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If Me.Base IsA Introspection.MethodInfo Then
			    Return ObjectType.Internal
			  ElseIf Me.Type.IsPrimitive Then
			    Return ObjectType.Primitive
			  ElseIf Me.Type.IsArray Then
			    Return ObjectType.ArrayType
			  ElseIf Me.Type.IsEnum Or Me.Type.IsClass Then
			    Return ObjectType.Virtual
			  ElseIf Me.Type.IsPointer Then
			    Return ObjectType.Pointer
			  ElseIf Me.Type.IsInterface Then
			    Return ObjectType.VirtualInterface
			  Else
			    Return ObjectType.Unknown
			  End If
			End Get
		#tag EndGetter
		GeneralType As ObjectType
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( InternalItem = True ) Private Shared mReferenceCounter As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mName = "" Then
			    mName = GetProperty("Name")
			    If mName = "" Then
			      mName = Me.Type.FullName
			    End If
			  End If
			  Return mName
			End Get
		#tag EndGetter
		Name As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return GetCount(Me.Type)
			End Get
		#tag EndGetter
		ReferenceCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  If mReferenceCounter = Nil Then mReferenceCounter = New Dictionary
			  return mReferenceCounter
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mReferenceCounter = value
			End Set
		#tag EndSetter
		Attributes( InternalItem = True ) Protected Shared ReferenceCounter As Dictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Me.Type.FullName
			End Get
		#tag EndGetter
		SuperClass As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If BaseObject.Value <> Nil Then
			    Return Introspection.GetType(BaseObject.Value)
			  Else
			    Return Nil
			  End If
			End Get
		#tag EndGetter
		Type As Introspection.TypeInfo
	#tag EndComputedProperty


	#tag Enum, Name = ObjectType, Type = Integer, Flags = &h0
		Virtual
		  VirtualInterface
		  Primitive
		  Pointer
		  ArrayType
		  Internal
		Unknown
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="ByValue"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReferenceCount"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SuperClass"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
