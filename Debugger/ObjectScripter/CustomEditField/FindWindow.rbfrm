#tag Window
Begin Window FindWindow Attributes ( InternalItem = True ) 
   BackColor       =   16777215
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   154
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Find"
   Visible         =   True
   Width           =   527
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  lastLeft = me.Left
		  lastTop = me.top
		  CurrentFindWindow = nil
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key = Chr(3) or Key = Chr(13) then
		    btnNext.Push
		    return true
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  if findTerms = nil then
		    findTerms = new Dictionary
		  end if
		  
		  if replaceTerms = nil then
		    replaceTerms = new Dictionary
		  end if
		  
		  CurrentFindWindow = self
		  txtToFind.Text = lastSearchTerm
		  txtToReplace.text = lastReplaceTerm
		  wrapAround.Value = lastWrapAroundValue
		  ignoreCase.Value = lastIgnoreCaseValue
		  if lastLeft >= 0 then me.Left = lastLeft
		  if lastTop >=0 then me.Top = lastTop
		  
		  for i as Integer = 0 to findTerms.Count - 1
		    txtToFind.AddRow findTerms.Key(i)
		  next
		  
		  for i as Integer = 0 to replaceTerms.Count - 1
		    txtToReplace.AddRow replaceTerms.Key(i)
		  next
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			self.Close
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h1
		Protected Shared Sub addFindTerm()
		  if findTerms = nil then
		    findTerms = new Dictionary
		  end if
		  
		  if findTerms.HasKey(lastSearchTerm) then Return
		  
		  findTerms.Value(lastSearchTerm) = nil
		  if CurrentFindWindow <> nil then
		    CurrentFindWindow.txtToFind.AddRow lastSearchTerm
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub addReplaceTerm()
		  if replaceTerms = nil then
		    replaceTerms = new Dictionary
		  end if
		  
		  if replaceTerms.HasKey(lastReplaceTerm) then Return
		  
		  replaceTerms.Value(lastReplaceTerm) = nil
		  
		  if CurrentFindWindow <> nil then
		    CurrentFindWindow.txtToReplace.AddRow lastReplaceTerm
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function findNext() As boolean
		  if CurrentFindWindow <> nil then
		    CurrentFindWindow.results.Text = ""
		    lastIgnoreCaseValue = CurrentFindWindow.ignoreCase.Value
		    lastWrapAroundValue = CurrentFindWindow.wrapAround.Value
		  end if
		  
		  if CurrentFindWindow <> nil and CurrentFindWindow.txtToFind.Text = "" then
		    beep
		    Return false
		  end if
		  
		  Return findNext(lastIgnoreCaseValue, lastWrapAroundValue, true, -1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function findNext(ignoreCase as boolean, wrapAround as boolean, redraw as boolean, startPos as integer) As boolean
		  dim Target as CustomEditField = CustomEditField.CurrentFocusedField
		  if Target = nil then Return false
		  
		  addFindTerm
		  if Target.Find(lastSearchTerm, ignoreCase, wrapAround, redraw, startPos) > -1 then Return true
		  
		  beep
		  if CurrentFindWindow <> nil then
		    CurrentFindWindow.results.Text = "Not Found"
		  end if
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub replace()
		  if CurrentFindWindow <> nil then
		    CurrentFindWindow.results.Text = ""
		    lastIgnoreCaseValue = CurrentFindWindow.ignoreCase.Value
		    lastWrapAroundValue = CurrentFindWindow.wrapAround.Value
		  end if
		  
		  dim Target as CustomEditField = CustomEditField.CurrentFocusedField
		  if Target = nil then Return
		  
		  addReplaceTerm
		  Target.SelText = lastReplaceTerm
		  Target.Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub replaceAll()
		  dim Target as CustomEditField = CustomEditField.CurrentFocusedField
		  if Target = nil then Return
		  
		  dim count as Integer
		  dim eventID as Integer = Ticks // -> grouped undo
		  
		  addFindTerm
		  addReplaceTerm
		  Target.ignoreRepaint = true
		  dim startPos as Integer = 0 //start at begining of file
		  while findNext(lastIgnoreCaseValue, false, false, startPos) //WITHOUT wrapping, since this could lead to an infinite loop if replacement contains find term.
		    Target.private_replace(Target.SelStart, Target.SelLength, lastReplaceTerm, true, eventID)
		    count = count + 1
		    startPos = Target.CaretPos //update startPos
		  wend
		  Target.ignoreRepaint = false
		  Target.Redraw
		  
		  if Count > 1 and CurrentFindWindow <> nil then
		    CurrentFindWindow.results.Text = str(Count) + " Replaced"
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub replaceAndFind()
		  replace
		  call findNext
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected Shared CurrentFindWindow As FindWindow
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared findTerms As dictionary
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared lastIgnoreCaseValue As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared lastLeft As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared lastReplaceTerm As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared lastSearchTerm As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared lastTop As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared lastWrapAroundValue As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared replaceTerms As dictionary
	#tag EndProperty


#tag EndWindowCode

