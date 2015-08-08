#tag Window
Begin Window ScriptEdit Attributes ( InternalItem = True ) 
   BackColor       =   16777215
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   343
   ImplicitInstance=   False
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   634046463
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   True
   Title           =   "Script Editor"
   Visible         =   True
   Width           =   551
   Begin Pushbutton CheckButton Attributes ( InternalItem = True ) 
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "Check"
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   302
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   ""
      TextUnit        =   0
      Top             =   321
      Underline       =   False
      Visible         =   True
      Width           =   115
   End
   Begin Label ScriptStatus Attributes ( InternalItem = True ) 
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      Text            =   "Not Running"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   321
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   290
   End
   Begin RbScript Script Attributes ( InternalItem = True ) 
      EncodingFont    =   ""
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   597
      LockedInPosition=   False
      Scope           =   0
      Source          =   ""
      TabPanelIndex   =   0
      Top             =   40
      Width           =   32
   End
   Begin TabPanel TabPanel1 Attributes ( InternalItem = True ) 
      AutoDeactivate  =   True
      Bold            =   ""
      Enabled         =   True
      Height          =   302
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   3
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   ""
      TabDefinition   =   "Code\rErrors"
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   7
      Underline       =   ""
      Value           =   0
      Visible         =   True
      Width           =   548
      Begin CustomEditField ScriptSource Attributes ( InternalItem = True ) 
         AcceptFocus     =   True
         AcceptTabs      =   True
         AutoCloseBrackets=   False
         AutocompleteAppliesStandardCase=   true
         AutoDeactivate  =   True
         AutoIndentNewLines=   true
         BackColor       =   16777215
         Backdrop        =   ""
         Border          =   True
         BorderColor     =   8947848
         BracketHighlightColor=   16711680
         CaretColor      =   0
         ClearHighlightedRangesOnTextChange=   true
         DirtyLinesColor =   16751001
         DisplayDirtyLines=   True
         DisplayInvisibleCharacters=   false
         DisplayLineNumbers=   true
         DisplayRightMarginMarker=   false
         DoubleBuffer    =   True
         EnableAutocomplete=   True
         Enabled         =   True
         EnableLineFoldings=   True
         enableLineFoldingSetting=   ""
         EraseBackground =   ""
         GutterBackgroundColor=   15658734
         GutterSeparationLineColor=   8947848
         GutterWidth     =   0
         Height          =   242
         HelpTag         =   ""
         HighlightBlocksOnMouseOverGutter=   true
         HighlightMatchingBrackets=   true
         HighlightMatchingBracketsMode=   1
         ignoreRepaint   =   0
         IndentPixels    =   16
         IndentVisually  =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         KeepEntireTextIndented=   ""
         Left            =   11
         leftMarginOffset=   4
         LineNumbersColor=   8947848
         LineNumbersTextFont=   "System"
         LineNumbersTextSize=   9
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         ReadOnly        =   ""
         RightMarginAtPixel=   0
         RightScrollMargin=   150
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TabWidth        =   4
         Text            =   ""
         TextColor       =   0
         TextFont        =   "System"
         TextSelectionColor=   0
         TextSize        =   0
         ThickInsertionPoint=   true
         Top             =   40
         UseFocusRing    =   True
         Visible         =   True
         Width           =   513
      End
      Begin Label ErrorStatus Attributes ( InternalItem = True ) 
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   11
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   2
         Text            =   "Not checked"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   40
         Transparent     =   False
         Underline       =   ""
         Visible         =   True
         Width           =   527
      End
      Begin Listbox ErrorList Attributes ( InternalItem = True ) 
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   ""
         Border          =   True
         ColumnCount     =   3
         ColumnsResizable=   ""
         ColumnWidths    =   "5%,70%,*"
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
         Height          =   232
         HelpTag         =   ""
         Hierarchical    =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   "#	Description	Location"
         Italic          =   ""
         Left            =   11
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
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   66
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   533
         _ScrollWidth    =   -1
      End
      Begin ScrollBar PaintScrollUpDown Attributes ( InternalItem = True ) 
         AcceptFocus     =   true
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   242
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   524
         LineStep        =   1
         LiveScroll      =   ""
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Maximum         =   100
         Minimum         =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   40
         Value           =   0
         Visible         =   True
         Width           =   16
      End
      Begin ScrollBar PaintScrollLeftRight Attributes ( InternalItem = True ) 
         AcceptFocus     =   true
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   16
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Left            =   11
         LineStep        =   1
         LiveScroll      =   ""
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Maximum         =   100
         Minimum         =   0
         PageStep        =   20
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   283
         Value           =   0
         Visible         =   True
         Width           =   513
      End
   End
   Begin Pushbutton RunButton Attributes ( InternalItem = True ) 
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "Run"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   426
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   ""
      TextUnit        =   0
      Top             =   321
      Underline       =   False
      Visible         =   True
      Width           =   115
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Me.Title = "Script Editor - " + Introspection.GetType(TargetObject).FullName
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor(ByRef ScriptedObject As Object)
		  Me.TargetObject = ScriptedObject
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function ErrorCodeToString(code as integer) As string
		  //RBScript error codes to messages.
		  
		  static errors as new Dictionary( _
		  1: "Syntax error", _
		  2: "Expected a different data type than the one specified.", _
		  3: "Select Case does not support that type of expression.", _
		  4: "The compiler is not implemented (obsolete).", _
		  5: "The parser's internal stack has overflowed.", _
		  6: "Too many parameters for this function.", _
		  7: "Not enough parameters for this function call.", _
		  8: "Wrong number of parameters for this function call.", _
		  9: "Parameters are incompatible with this function.", _
		  10: "Assignment of an incompatible data type.", _
		  11: "This method or property does not exist", _
		  12: "Undefined operator.", _
		  13: "Logic operations require Boolean operands.", _
		  14: "Array bounds must be integers.", _
		  15: "Can't call something that isn't a function.", _
		  16: "Can't get an element from something that isn’t an array.", _
		  17: "Not enough subscripts for this array’s dimensions.", _
		  18: "Too many subscripts for this array’s dimensions.", _
		  19: "Can't assign an entire array.", _
		  20: "Can't use an entire array in an expression.", _
		  21: "Parameters passed ByRef cannot be expressions.", _
		  22: "Identifier already exists.", _
		  23: "The backend code generator failed.", _
		  24: "Ambiguous call to overloaded method.", _
		  25: "Multiple inheritance is not allowed.", _
		  26: "Cannot create an instance of an interface.", _
		  27: "Cannot implement a class as though it were an interface.", _
		  28: "Cannot inherit from something that is not a class.", _
		  29: "This class does not fully implement the specified interface.", _
		  30: "Event handlers cannot live outside of a class.", _
		  31: "You must use the value returned by this function.", _
		  32: "Can’t use “Self” keyword outside of a class.", _
		  33: "Can’t use “Me” keyword outside of a class.", _
		  34: "This method does not return a value.", _
		  35: "An exception object required here.", _
		  36: "Obselete.", _
		  37: "Obselete.", _
		  38: "Obselete.", _
		  39: "Obselete.", _
		  40: "Destructors can’t have parameters.", _
		  41: "Can’t use “Super” keyword outside of a class.", _
		  42: "Can’t use “Super” keyword in a class that has no parent.", _
		  43: "This #else does not have a matching #if preceding it.", _
		  44: "This #endif does not have a matching #if preceding it.", _
		  45: "Only Boolean constants can be used with #if.", _
		  46: "Only Boolean constants can be used with #if.", _
		  47: "The Next variable does not match the loop's counter variable.", _
		  48: "The size of an array must be a constant or number.", _
		  49: "You can't pass an array to an external function.", _
		  50: "External functions cannot use objects as parameters.", _
		  51: "External functions cannot use ordinary strings as parameters. Use CString, _ PString, _ WString, _ or CFStringRef instead.", _
		  52: "This kind of array can not be sorted.", _
		  53: "This property is protected. It can only be used from within its class.", _
		  54: "This method is protected. It can only be called from within its class.", _
		  55: "This local variable or constant has the same name as a Declare in this method. You must resolve this conflict.", _
		  56: "This global variable has the same name as a global function. You must resolve this conflict.", _
		  57: "This property has the same name as a method. You must resolve this conflict.", _
		  58: "This property has the same name as an event. You must resolve this conflict.", _
		  59: "This global variable has the same name as a class. You must resolve this conflict.", _
		  60: "This global variable has the same name as a module. You must change one of them.", _
		  61: "This local variable or parameter has the same name as a constant. You must resolve this conflict.", _
		  62: "(%1) is reserved and can't be used as a variable or property name.", _
		  63: "There is no class with this name.", _
		  64: "The library name must be a string constant.", _
		  65: "This Declare Function statement is missing its return type.", _
		  66: "You can’t use the New operator with this class.", _
		  67: "This method doesn't return a value.", _
		  68: "End quote missing.", _
		  69: "A class cannot be its own superclass.", _
		  70: "Cannot assign a value to this property.", _
		  71: "Cannot get this property’s value.", _
		  72: "The If statement is missing its condition.", _
		  73: "The current function must return a value, _ but this Return statement does not specify any value.", _
		  74: "Parameter options (%1) and (%2) are incompatible.", _
		  75: "Parameter option (%1) was already specified.", _
		  76: "A parameter passed by reference cannot have a default value.", _
		  77: "A ParamArray cannot have a default value.", _
		  78: "An Assigns parameter cannot have a default value.", _
		  79: "An Extends parameter cannot have a default value.", _
		  80: "Only the first parameter may use the Extends option.", _
		  81: "Only the last parameter may use the Assigns option.", _
		  82: "An ordinary parameter cannot follow a ParamArray.", _
		  83: "Only one parameter may use the Assigns option.", _
		  84: "Only one parameter may use the ParamArray option.", _
		  85: "A ParamArray cannot have more than one dimension.", _
		  86: "The keyword “Then” is expected after this If statement’s condition.", _
		  87: "(obsolete)", _
		  88: "Constants must be defined with constant values.", _
		  89: "Illegal use of the Call keyword.", _
		  90: "No cases may follow the Else block.", _
		  91: "(%1) is not a legal property accessor type.", _
		  92: "This (%1) accessor must end with “End (%1)”, _ not “End (%2)”.", _
		  93: "Duplicate method definition.", _
		  94: "The library name for this declaration is blank.", _
		  95: "This If statement is missing an End If statement.", _
		  96: "This Select Case statement is missing an End Select statement.", _
		  97: "This For loop is missing its Next statement.", _
		  98: "This While loop is missing its Wend statement.", _
		  99: "This Try statement is missing an End Try statement.", _
		  100: "This Do loop is missing its Loop statement.", _
		  101: "Too few parentheses.", _
		  102: "Too many parentheses.", _
		  103: "The Continue statement only works inside a loop.", _
		  104: "There is no (%1) block to (%2) here.", _
		  105: "Shared methods cannot access instance properties.", _
		  106: "Shared methods cannot access instance methods.", _
		  107: "Shared computed property accessors cannot access instance properties.", _
		  108: "Shared computed property accessors cannot access instance methods.", _
		  109: "The Constructor of this class is protected, _ and can only be called from within this class.", _
		  110: "This String field needs to specify its length.", _
		  111: "Structures cannot contain (%1) fields.", _
		  112: "Structures cannot contain multidimensional arrays.", _
		  113: "Enumerated types can only contain integers.", _
		  114: "An Enumeration cannot be defined in terms of another enumeration.", _
		  115: "This is a constant; its value can’t be changed.", _
		  116: "A String field must be at least 1 byte long.", _
		  117: "The storage size specifier only applies to String fields.", _
		  118: "A Structure cannot contain itself.", _
		  119: "(%1) is a structure, _ not a class, _ and cannot be instantiated with New.", _
		  120: "(%1) is an enumeration, _ not a class, _ and cannot be instantiated with New.", _
		  121: "This type is private, _ and can only be used within its module.", _
		  122: "Class members cannot be global.", _
		  123: "Module members must be public or private; they cannot be protected.", _
		  124: "Members of inner modules cannot be global.", _
		  125: "A Dim statement creates only one new object at a time.", _
		  126: "A constant was expected here, _ but this is some other kind of expression.", _
		  127: "This module is private, _ and can only be used within its containing module.", _
		  128: "Duplicate property definition.", _
		  129: "This datatype cannot be used as an array element.", _
		  130: "Delegate parameters cannot be optional.", _
		  131: "Delegates cannot use Extends, _ Assigns, _ or ParamArray.", _
		  132: "The Declare statement is illegal in RBScript.", _
		  133: "It is not legal to dereference a Ptr value in an RBScript.", _
		  134: "Delegate creation from Ptr values is not allowed in RBScript.", _
		  135: "Delegate constant definition.", _
		  136: "Ambiguous interface method implementation.", _
		  137: "Illegal explicit interface method implementation. The class does not claim to implement this interface.", _
		  138: "The interface does not declare this method.", _
		  139: "This method contains a #If without a closing #endif statement.", _
		  140: "This interface contains a cyclical interface aggregation.", _
		  141: "The Extends modifier cannot be used on a class method.", _
		  142: "You cannot assign a non-value type to a value.", _
		  143: "Duplicate attribute name.", _
		  144: "Delegates cannot return structures.", _
		  145: "You cannot create a delegate from this identifier.", _
		  146: "You cannot use an Operator_Convert method to perform a convert-to operation on an interface.", _
		  147: "The ElseIf statement is missing its condition.", _
		  148: "This type cannot be used as an explicit constant type.", _
		  149: "Recursive constant declaration error.", _
		  150: "Custom error created using #error.", _
		  151: "This is not a local variable or parameter.", _
		  152: "The maximum units in last position parameter must be a constant.", _
		  153: "The maximum units in last position parameter is out of range.", _
		  154: "The StructureAlignment attribute’s value must be of the following: 1, _ 2, _ 4, _ 8, _ 16, _ 32, _ 64, _ or 128.", _
		  155: "Pair creation via the: operator is not allowed in RBScript.", _
		  156: "Introspection via the GetTypeInfo operator is not allowed in RBScript.", _
		  157: "The For statement is missing its condition.", _
		  158: "The While statement is missing its condition.", _
		  159: "Unsigned integer used in negative step loops can cause an infinite loop." )
		  
		  return errors.value( code )
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Dragged As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ErrorCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Mode As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TargetObject As Object
	#tag EndProperty


	#tag Constant, Name = RBDef, Type = String, Dynamic = False, Default = \"<\?xml version\x3D\"1.0\" encoding\x3D\"UTF-8\"\?>\r<highlightDefinition version\x3D\"1.2\">\r\t<name>REALbasic</name>\r\r\t<blockStartMarker indent\x3D\"1\">^\\s*(\?:if.+\?then\\s*(\?!.+\?)|for|while|select|class|module|try|catch|^\\s*(\?:protected|private)\?\\s*(\?&lt;!end)\\s*(\?:sub|function)|else)</blockStartMarker>\r\t<blockEndMarker>^\\s*(\?:end|wend|next|else|catch|elseif)(\?:\\s+|$)</blockEndMarker>\r\t\r\t<symbols>\r\t\t<symbol type\x3D\"Class\">\r\t\t\t<entryRegEx>^\\s*class\\s+\\w+\\s*</entryRegEx>\r\t\t</symbol>\r\t\t<symbol type\x3D\"Method\">\r\t\t\t<entryRegEx>^\\s*(\?:protected|private)\?\\s*(\?&lt;!end)\\s*(\?:sub|function).+\?\\([^\\)]*\\)\\s*(\?:as\\s*\\w+\\s*)\?</entryRegEx>\r\t\t</symbol>\r\t\t<symbol type\x3D\"Module\">\r\t\t\t<entryRegEx>^\\s*module\\s+\\w+\\s*</entryRegEx>\r\t\t</symbol>\t\t\r\t</symbols>\r\t\r\t<contexts defaultColor\x3D\"#0\" caseSensitive\x3D\"no\">\t\t\r        <highlightContext name\x3D\"Doubles\" highlightColor\x3D\"#006532\">\r            <entryRegEx>(\?&lt;\x3D[^\\w\\d]|^)(([0-9]+\\.[0-9]*)|([0-9]{11\x2C}))(\?\x3D[^\\w\\d]|$)</entryRegEx>\r        </highlightContext>    \t\r        \r        <highlightContext name\x3D\"Integers\" highlightColor\x3D\"#326598\">\r            <entryRegEx>(\?&lt;\x3D[^\\w\\d]|^)([0-9]{1\x2C10})(\?\x3D[^\\w\\d]|$)</entryRegEx>\r        </highlightContext>\r\r\t<highlightContext name\x3D\"PreProcessor\" highlightColor\x3D\"#0000FF\">\r            <entryRegEx>(#\\w+)</entryRegEx>\r        </highlightContext>        \r\t\t\r\t\t<highlightContext name\x3D\"Comment\" highlightColor\x3D\"#7F0000\" italic \x3D \"true\">\r\t\t\t<startRegEx>\'</startRegEx>\r\t\t\t<endRegEx>[\\n\\r]</endRegEx>\r\t\t</highlightContext>\r\t\t\r\t\t<highlightContext name\x3D\"C-Comment\" highlightColor\x3D\"#7F0000\" italic \x3D \"true\">\r\t\t\t<startRegEx>//</startRegEx>\r\t\t\t<endRegEx>[\\n\\r]</endRegEx>\r\t\t</highlightContext>\r\t\t\r\t\t<highlightContext name\x3D\"String\" highlightColor\x3D\"#6500FE\">\r\t\t\t<startRegEx>\"</startRegEx>\r\t\t\t<endRegEx>[^\"\\n\\r]*[\"\\n\\r]</endRegEx>\r\t\t</highlightContext>\r\r        <highlightContext name\x3D\"Keywords\" highlightColor\x3D\"#0000FF\" bold\x3D\"true\">\r            <keywords>\r                <string>And</string>\r                <string>Loop</string>\r                <string>Array</string>\r                <string>Me</string>\r                <string>As</string>\r                <string>Mod</string>\r                <string>Boolean</string>\r                <string>Module</string>\r                <string>ByRef</string>\r                <string>Namespace</string>\r                <string>ByVal</string>\r                <string>New</string>\r                <string>Call</string>\r                <string>Next</string>\r                <string>Case</string>\r                <string>Nil</string>\r                <string>Catch</string>\r                <string>Not</string>\r                <string>Class</string>\r                <string>Object</string>\r                <string>Color</string>\r                <string>Of</string>\r                <string>Const</string>\r                <string>Or</string>\r                <string>DebugPrint</string>\r                <string>Private</string>\r                <string>Declare</string>\r                <string>Protected</string>\r                <string>Dim</string>\r                <string>Public</string>\r                <string>Do</string>\r                <string>Raise</string>\r                <string>Double</string>\r                <string>Redim</string>\r                <string>Downto</string>\r                <string>Rem</string>\r                <string>Each</string>\r                <string>Return</string>\r                <string>Else</string>\r                <string>Return</string>\r                <string>ElseIf</string>\r                <string>Select</string>\r                <string>End</string>\r                <string>Self</string>\r                <string>Event</string>\r                <string>Shared</string>\r                <string>Exception</string>\r                <string>Single</string>\r                <string>Exit</string>\r                <string>Static</string>\r                <string>False</string>\r                <string>Step</string>\r                <string>Finally</string>\r                <string>String</string>\r                <string>For</string>\r                <string>Sub</string>\r                <string>Function</string>\r                <string>Then</string>\r                <string>GoTo</string>\r                <string>To</string>\r                <string>Handles</string>\r                <string>True</string>\r                <string>If</string>\r                <string>Try</string>\r                <string>Implements</string>\r                <string>Until</string>\r                <string>In</string>\r                <string>Wend</string>\r                <string>Inherits</string>\r                <string>While</string>\r                <string>Inline68K</string>\r                <string>#bad</string>\r                <string>Integer</string>\r                <string>#else</string>\r                <string>Interface</string>\r                <string>#endif</string>\r                <string>Isa</string>\r                <string>#if</string>\r                <string>Lib</string>\r                <string>#pragma</string>\r                <string>Assigns</string>\r                <string>Extends</string>\r                <string>Paramarray</string>\r            </keywords>\r        </highlightContext>\r\t</contexts>\r</highlightDefinition>", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events CheckButton
	#tag Event
		Sub Action()
		  ScriptSource.ClearBookmarks
		  ErrorList.DeleteAllRows
		  ErrorStatus.Text = "Checking..."
		  
		  ErrorCount = 0
		  Script.Reset
		  Script.Context = TargetObject
		  Script.Source = ScriptSource.Text
		  Script.Precompile
		  Script.Reset
		  Script.Source = ""
		  
		  If ErrorCount = 1 Then
		    Return
		  ElseIf ErrorCount > 1 Then
		    ScriptStatus.Text = Format(ErrorCount, "###,##0") + " errors found."
		  Else
		    ScriptStatus.Text = "Check complete, no errors."
		  End If
		  
		  ErrorStatus.Text = ScriptStatus.Text
		  If ErrorCount > 0 Then
		    TabPanel1.Caption(1) = "Errors (" + Str(ErrorCount) + ")"
		  Else
		    TabPanel1.Caption(1) = "Errors"
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Script
	#tag Event
		Sub CompilerError(line As Integer, errorNumber As Integer, errorMsg As String)
		  #pragma Unused errorMsg
		  ScriptStatus.Text = "Error in script on line " + Str(line) + ": (" +Str(errorNumber) + ") " + ErrorCodeToString(ErrorNumber)
		  ScriptSource.AddBookmark(line)
		  ErrorList.AddRow(Str(errorNumber), ErrorCodeToString(ErrorNumber), "ScriptSource, line: " + Str(line))
		  ErrorList.CellTag(ErrorList.LastIndex, 2) = line
		  ErrorCount = ErrorCount + 1
		  ErrorStatus.Text = Str(ErrorCount) + " errors found."
		End Sub
	#tag EndEvent
	#tag Event
		Sub Print(msg As String)
		  MsgBox(msg)
		End Sub
	#tag EndEvent
	#tag Event
		Function Input(prompt As String) As String
		  Call MsgBox(prompt, 0, "Script asked for input!")
		  Return "Don't call 'Input'!"
		End Function
	#tag EndEvent
	#tag Event
		Sub RuntimeError(line As Integer, error As RuntimeException)
		  ScriptStatus.Text = "Error in script on line " + Str(line) + ": (" +Str(error.ErrorNumber) + ") " + error.Message
		  ScriptSource.AddBookmark(line)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TabPanel1
	#tag Event
		Sub Change()
		  Select Case Me.Value
		  Case 0
		    ScriptSource.Enabled = True
		  Case 1
		    ScriptSource.Enabled = False
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScriptSource
	#tag Event
		Sub Open()
		  dim def as new HighlightDefinition
		  if def.loadFromXml(RBDef) then
		    Me.SyntaxDefinition = def
		    
		  end if
		  Me.SetScrollbars(PaintScrollLeftRight, PaintScrollUpDown)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ErrorList
	#tag Event
		Sub DoubleClick()
		  If Me.ListIndex > -1 Then
		    TabPanel1.Value = 0
		    ScriptSource.SelectLine(Me.CellTag(Me.ListIndex, 2))
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PaintScrollUpDown
	#tag Event
		Sub ValueChanged()
		  ScriptSource.ScrollPosition = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PaintScrollLeftRight
	#tag Event
		Sub ValueChanged()
		  ScriptSource.ScrollPositionX = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RunButton
	#tag Event
		Sub Action()
		  ScriptStatus.Text = ""
		  ErrorStatus.Text = ""
		  Script.Reset
		  Script.Source = ScriptSource.Text
		  Script.Context = TargetObject
		  Script.Run
		  
		End Sub
	#tag EndEvent
#tag EndEvents
