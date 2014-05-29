#tag Window
Begin Window PicContents
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
   Begin Canvas Canvas1
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   400
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      UseFocusRing    =   True
      Visible         =   True
      Width           =   297
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Function Scale(Source As Picture, Ratio As Double = 1.0) As Picture
		  //Returns a scaled version of the passed Picture object.
		  //A ratio of 1.0 is 100% (no change,) 0.5 is 50% (half size) and so forth.
		  //This function should be cross-platform safe.
		  
		  Dim wRatio, hRatio As Double
		  wRatio = (Ratio * Source.width)
		  hRatio = (Ratio * Source.Height)
		  If wRatio = Source.Width And hRatio = Source.Height Then Return Source
		  Dim photo As New Picture(wRatio, hRatio, Source.Depth)
		  Photo.Graphics.DrawPicture(Source, 0, 0, Photo.Width, Photo.Height, 0, 0, Source.Width, Source.Height)
		  Return photo
		  
		Exception
		  Return Source
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show(p As Picture)
		  Pic = New Picture(p.Width, p.Height, p.Depth)
		  Pic.Graphics.DrawPicture(p, 0, 0)
		  If p.Width > Me.Width Or p.Height > Me.Height Then
		    Dim ratio As Double
		    If p.Width > p.Height Then
		      ratio = Me.Width / p.Width
		    Else
		      ratio = Me.Height / p.Height
		    End If
		    Pic = Scale(p, ratio)
		    Me.Title = "Preview - " + Format(ratio * 100, "##0\%")
		  Else
		    Pic = p
		  End If
		  Self.Width = Pic.Width
		  Self.Height = Pic.Height
		  Me.Show()
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Pic As Picture
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As Graphics)
		  If Pic <> Nil Then
		    g.DrawPicture(Pic, 0, 0)
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
