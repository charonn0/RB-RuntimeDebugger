#tag Class
Class Introspector
Inherits Thread
	#tag Event
		Sub Run()
		  #pragma BackgroundTasks Off
		  #pragma NilObjectChecking Off
		  #pragma BoundsChecking Off
		  ReDim Items(-1)
		  Dim rtoi As Runtime.ObjectIterator = Runtime.IterateObjects
		  rtoi.Reset
		  Dim count, total, i As Integer
		  total = Runtime.ObjectCount
		  While rtoi.MoveNext
		    count = count + Runtime.ObjectRefs(i)
		    Dim info As New ObjectInfo(rtoi.Current)
		    Progress(count, total)
		    'Dim item As ObjectInfo
		    If info.Base IsA WeakRef Then Continue
		    If info.Type.FullName = "Delegate" Then Continue
		    'If info.HasAttribute("Hidden") Then
		    'Continue
		    'End If
		    If info.Base IsA Introspection.MemberInfo Then
		      Continue
		    End If
		    'Else
		    'item = info
		    'End If
		    'If info.Type.FullName = "Dictionary" Then
		    'Dim d As Dictionary = info.Base
		    'Break
		    'End If
		    
		    If info.Type.FullName = "Array" Or InStr(info.Type.FullName, "Introspection") > 0 Then Continue
		    If ExcludeSelf And info.Attribute("InternalItem") = "True" Then Continue
		    'If info.IsSubclassOf(New TCPSocket) And Not ShowSockets.Value Then Continue
		    'If info.IsSubclassOf(New RectControl)  Then Continue
		    
		    'If info.Type.IsPrimitive And Not ShowPrimitives.Value Then Continue
		    'If info.Type.IsClass And Not ShowPrimitives.Value Then Continue
		    'If info.Base IsA WeakRef Then
		    'RuntimeList.AddFolder("(WeakRef) " + item.Name)
		    'Else
		    Items.Append(Info)
		    
		    i = i + 1
		    'App.YieldToNextThread
		  Wend
		  Done()
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Done()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Progress(Finished As Integer, Remaining As Integer)
	#tag EndHook


	#tag Property, Flags = &h0
		Shared ExcludeSelf As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		Items() As ObjectInfo
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="Thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="Thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			InheritedFrom="Thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="Thread"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
