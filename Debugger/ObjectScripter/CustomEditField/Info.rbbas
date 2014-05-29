#tag Module
Protected Module Info
	#tag Note, Name = 1. Info
		Note: The code is now hosted and updated here:
		
		  http://code.google.com/p/custom-editfield/
		
		The following is outdated information. For latest list of issues, see the above website!
		
		----------------------------------------------------
		
		CustomEditField
		Well, here it is, a canvas-based, custom editfield.
		Enjoy.
		
		Known Issues: 
		• Linux has a problem positioning the caret, as I don't have a linux box, this issue is unlikely to be solved anytime soon.
		• A bug in RB2008r3.1 raises the keydown event twice for special chars entered using option + [key]
		• A bug? in 2008r5+ prevents the editfield to account for the vertical offset of the toolbar (if present), when the autocomplete suggestions window appera, will appear
		shifted up by the height of the toolbar. This is a Windows-only issue. To work around it, use the ShouldDisplaySuggestionWindowAtPos event and account for the vertical offset.
		
		Special Thanks to:
		Ryan Dary, Scott Fortmann-Roe, Dr Gerard Hammond, Roger Meier, Paul Rodman, Dave Sisemore, Bobby Skinner, Thomas Tempelmann, Seth Verrinder, Dave Wooldridge
		And to all of you out there who bought the source, reported bugs and made suggestions!
		
		©2009 Alex Restrepo
		send comments, suggestions, fixes to alexrestrepo@mac.com
		Use in whatever way you like... at your own risk, no warranties! :P
		let me know if you find it useful.
		
		License:
		This control is licensed under the Creative Commons Attribution License. That is to say, anybody can use my work for any reason,
		I only ask that you give me credit where credit is due (About window or documentation).
		Also, if you make any changes/improvements please send them to me so I can make them available to the public.
		
		Thank you.
		
		Alex Restrepo
	#tag EndNote

	#tag Note, Name = 2. Release Notes
		Note: The code is now hosted and updated here:
		
		  http://code.google.com/p/custom-editfield/
		
		
		Version history (not updated any more, see above link instead)
		
		1.6.2  9/5/2009
		• Change: PlaceholderSelected event now has a paramter for when the placeholder is double-clicked.
		• Fix: Placeholders can now have bold, italic and underline properties.
		• Fix: Delete/backspace keys now works correctly when the caret is next to a placeholder...
		• Fix: Documents without a syntax definition are no longer scanned for symbols, allowing faster loading times.
		• Fix: The PlaceholderSelected event now gets raised in the correct order.
		• Fix: The visual block-highlighting code has been improved under windows.
		• New: Event ShouldDisplaySuggestionWindowAtPos(byref X as Integer, byref Y as Integer) As Boolean, to workaround a RB bug in windows (2008r5+) where the height of a toolbar is returned as -1 (windows only), making the suggestion window appear shifted up by the height of the toolbar.
		
		1.6.1  8/28/2009
		• Change: CEF.DocumentSymbols now returns an array of DocumentSymbol, allowing multiple identical symbols in a single document.
		• Fix: Loading time improved when no syntax is defined.
		• Fix: Huge SetText speed improvement, now a 100000 line file loads in just under 2 seconds in my 2.16GHz MacBookPro (first gen core duo)
		• Fix: you can now save files even if they are already open in another app.
		• Fix: Autocomplete is no longer triggered just before first letter (shouldTriggerAutocomplete event will pass false for the hasAutocompleteOptions parameter, if the cursor is just before first letter)
		• Fix: tabwidth = 0 now defaults to 1
		• Fix: Support for Control Arrays
		• Fix: Improved keyboard input, specially under windows.
		• Fix: Documents are now highlighted in order, if the document is scrolled, lines on screen get highlighted first.
		• New: Xcode-like Placeholders! you can now define placeholders in the syntax definition, these are single units, meaning that they will always be totally contained in a selection.
		If clicked on, they will select themselves automatically and raise the PlaceholderSelected event. see the note on Syntax Definitions for more info.
		• New: Xcode-like code block highlighting, when the mouse is over the folding markers area.
		• New: ReadOnly property
		• New: Event BlockCharsMatched(blockOpenChar as string, blockOpenOffset as Integer, blockCloseChar as string, blockCloseOffset as Integer)
		• New: Autocomplete suggestions window now auto resizes to the width of the available suggestions.
		
		1.6   2/2/2009
		• Fixed autocomplete bug which in some cases would skip letters in the autocompleted words.
		• Fixed a bug in the syntax highlighter when dealing with accented characters.
		• Fixed Find Window, it's no longer being hidden (preventing the app from colosing under windows)
		• Added a way to highlight multiple character ranges: see HighlightCharacterRange(method) and ClearHighlightedRangesOnTextChange(property) in the docs.
		• Added UseBackgroundColorForLine event, to change the background color of a particular line, see DemoWindow.TestField.UseBackgroundColorForLine
		• Added AutocompleteAppliesStandardCase property.
		• Added LineNumbersTextSize property
		• Added LineNumbersTextFont property
		• Added UseBookmarkIconForLine event, if you want to use a custom bookmark picture instead of the default one.
		• Added AddBookmark, ClearBookmark / ClearBookmarks, BookmarkList methods to manage bookmarks.
		• Added GutterClicked event, useful in case you want to set bookmarks when the user clicks on the line numbers. See DemoWindow.TestField.GutterClicked for an example.
		• Added GutterWidth property, returns the size of the gutter in pixels.
		• Added PaintBelowLine event, in case you need to draw anything BELOW a text line, the order of paint operations are: highlights, selection, paintBelow, paint line, paintAbove
		• Added PaintAboveLine event, in case you need to draw anything ABOVE  a text line, the order of paint operations are: highlightRanges, text selection, paintBelow, paint text line, paintAbove
		• Added PaintOver event, raised after the editfield is done drawing itself, here you can draw custom graphics on top of the editfield.
		• Added ReindentText method, this will force reindent the text using the highlight definition rules.
		• Added TextInserted(offset as integer, text as String) Event
		• Added TextRemoved(offset as integer, text as String) Event
		• Added HighlightMatchingBracketsMode property, 0 is the default "circle" mode, 1 is a new "highlight" mode, which is common in most editors.
		• Added BracketHighlightColor property, only useful if the HighlightMatchingBracketsMode is 1.
		• Added HorizontalScrollValueChanged event, raised when the editfield scrolls horizontally.
		• Added VerticalScrollValueChanged event , raised when the editfield scrolls vertically.
		• Added ScrollValuesChanged event, raised when the editfield is scrolled horizontally or vertically.
		• Added a ContainerControl that contains an editfield and its scrollbars. It proxies all of the events/properties of the editfield.
		
		1.5.1   9/10/2008
		• fixed undoBug in windows, new lines (enters) weren't being handled correctly.
		• fixed mouseMove event, now it's raised everywhere instead of just the gutter.
		• fixed bug saving new/modified HighlightDefinitions.
		• fixed scroll pageStep, it's now correctly set to the number of lines displayed
		• fixed drag-scroll too fast in windows
		• fixed bug with the autocomplete options window that showed the options in the wrong position on screen, when the window had a toolbar (windows only)
		• added displayDirtyLines property
		• added line between line numbers and text when printing
		• added TextSelectionColor property, defaults to system highlight color (setting TextSelectionColor to &c000000 also defaults it to the System Highlight color)
		• SelectionChanged/textchanged events are no longer fired multiple times when undoing
		
		1.5   7/4/2008
		• Added a new "text storage" type: MemoryBlockStorageWide. Which is noticeably faster than ArrayStorage, when handling unicode characters. See docs for more info.
		• Added a CustomEditFieldPrinter class, similar to StyledTextPrinter, to easily print the contents of the edit field. See demo project for details.
		• Added a find/replace dialog, similar to OSX's find/replace dialog.
		• Added a new tag to syntax definitions (<symbols>) this tag allows the editfield to track method/class (or other) declarations and their location.
		You can access the symbols using one of these: CustomEditField.CaretSymbol, CustomEditField.DocumentSymbols or CustomEditField.SymbolAtLine. See docs, syntax definitions and demo project for more info.
		• Fixed bug that prevented autocompleted block-end words from being properly un-indented.
		• Improved (a lot!) speed matching opening/closing brackets.
		• Optimized drawing code, now typing on the last line of a long text shouldn't be any slower than on any other line.
		
		1.4.1   6/6/2008
		• Fixed crash when creating empty fields using MemoryBlockStorage
		• Fixed crash when closing an instance of the EditField while its contents were being highlighted, stopped highlighting thread when closing control.
		• Added method toggleLineFold(lineIndex as integer) to toggle the folding of a line.
		• Added method foldAllLines to... well... fold all lines.
		• Added method unfoldAllLines...
		• Added method foldBlockAtCaretPos, which folds the enclosing block where the caret is at, if any.
		• Added property displayRightMarginMarker, that displays a semi-transparent line at the right edge of the field, along with the property rightmarginAtPixel which defines the location (in pixels) of the line. If the value is 0, it's drawn at the default printer width.
		• Added a "Syntax colors" window to the demo project, it shows how to read the different contexts in a definition, and how to set their colors.
		• Added the "Syntax Definitions" note, a quick manual on how to write your own syntax definition.
		
		1.4    6/6/2008
		• Fixed problem with some accented characters (ö,ó...) that couldn't be selected when using MemoryBlockStorage and when invisible characters were visible.
		• Highlight Contexts can now have a background color for tokens "backgroundColor = '#....'"
		• You can now easily add < and > as matching brackets, simply add them to the BLOCK_OPEN_CHARS and BLOCK_CLOSE_CHARS constants respectively (see docs).
		• Added Method to clear all line icons (CustomEditField.ClearLineIcons)
		• Undo now works in "blocks", by default, all events of the same type (typing, deleting) that occur within 3 seconds, are undo/redo in one step, instead of by char. See docs for more info.
		• Added support for "code blocks" in the definitions xmls that automatically indent the code within them, they also define line foldings.(<blockStartMarker>/<blockEndMarker>)
		• Fixed UTF support, utf(8/16) now works correctly (if UseMemoryBlockStorage = false), or at least it should!
		• Highlight Contexts can now have a bold, italic and underline for tokens (bold/italic/underline = "true/false")
		• Added convenience method to save contents to a file: Save(toFile as folderItem, encoding as textencoding = nil)
		• Added line foldings. These are recognized by the code blocks tags.
		
		1.3    5/16/2008
		• Fixed a bug with the variable tab width setting, now, new lines or modified lines with tabs keep their tabWidth settings.
		• Fixed a bug in the ShouldTriggerAutocomplete event, the hasAutocompleteOptions is correctly set now.
		• Fixed small bug when after selecting text and clicking on the field again, the field would handle the click-after-drag as a double click.
		• Option-delete/backspace, now deletes the previous/next word.
		• Visible space character is now displayed correclty with the same width as the space character.
		• The insertion point can now have 2 different setthings, normal (single pixel) and thick (2 pixels) (ThickInsertionPoint as boolean).
		
		1.2    5/16/2008
		• Fixed a crash when the autocomplete window was active and you tiped a word that wasn't in the list.
		• Size of the tab character can now be variable, set with CustomEditField.TabWidth.
		• PageUp, PageDown, Home and End now scroll the editfield.
		• Moving up on the first line, or down on the last, now jumps to the start/end of the line.
		• ConstructContextualMenu is now forwarded appropriately.
		
		1.1    5/15/2008
		• Visible tab character is now displayed with the same width as the tab character
		• Fixed bug when clicking in the space between the gutter and the text (margin) instead of jumping to the end of line, it now goes to the start, as it should.
		• Added the ShouldTriggerAutocomplete event, so the autocomplete mechanism can be triggered by the user, using any key they want.
		
		1.0    5/14/2008
		• Made the source compatible with RB versions earlier than 2008r1
		• First public release
		
		0.9    4/30/2008
		• Fixed problem positioning the caret in windows.
		• Made undo system available externally, you can either ignore it, or hook it to your own menus.
		• Drag/drop now works correctly under windows.
		
		0.8    4/29/2008
		• initial release
	#tag EndNote

	#tag Note, Name = 3. Docs
		********************************************************************************************************************************************** Global Settings:
		CEF_VERSION: the current version of the editfield, in case you need it...
		
		TextStorageType: determines the kind of structure used internally by the editfield to store text, the possible values are:
		
		STORAGE_MEMORYBLOCK = 0
		This is the fastest storage Method, uses a MemoryBlock to store the text... however, does NOT support multi-byte characters.
		Encodings: this method will re-encode the text to either macroman, or windowsansi.
		
		STORAGE_ARRAY = 1
		This is the slowest method, uses an array to store the characters in the text. This method supports utf8 and utf16 characters.
		Encodings: same as input, utf8 if nil.
		
		STORAGE_WIDEMEMORYBLOCK = 2
		This method is slower than STORAGE_MEMORYBLOCK but faster than STORAGE_ARRAY, it uses a *wide* memory block to store the text, 
		which means that it will use 4bytes per character, that is, it will use 4 times the memory that STORAGE_MEMORYBLOCK uses (2bytes per char in windows). It is however 
		noticeably faster than STORAGE_ARRAY, and supports utf characters.
		Encodings: UTF16... all text is stored as UTF16, and is returned as UTF16.
		
		UseOldRenderer:
		This Boolean value forces the field to draw its contents using QuickDraw instead of Quartz (this setting is only meaningful under OSX).
		setting this flag to true yields better performance, if you don't mind uglier results :)
		
		
		
		
		********************************************************************************************************************************************** CustomEditFieldPrinter
		This class allows you to easily print the contents of the editfield.
		To obtain a CustomEditFieldPrinter object, simply call CustomEditField.CustomEditFieldPrinter(g as Graphics) and pass the graphics context where you want to draw onto,
		you'll receive a fully configured CustomEditFieldPrinter object.
		
		This class has a single method:
		DrawBlock(x as integer, y as integer, width as integer, height as integer, lineRange as dataRange, wrap as boolean = false, lineNumbers as boolean = false) As integer
		
		it allows you to draw a "block" of text, to the specified rect (X,Y, Width, Height). You'll need to specify the range of lines to print, using a DataRange Object. Finally, 2 optional
		parameters, wrap, which defaults to false, sets word wrap on or off, and lineNumbers allows you to print the linenumber to the left of the printed line.
		
		It returns the last painted text line that was drawn into the specified rect, with this value, you can set a new print range, and call DrawBlock again.
		
		For more information, please look at the Demo project in DemoWindow.Print.
		
		
		
		
		********************************************************************************************************************************************** CustomEditField
		********************************************************************************************************************************************** Undo:
		The undo system has a global setting: CustomEditField.UNDO_EVT_BLOCK_SECS, you can set this to any value, and what it does is records 
		all actions of the same type up to this value in secods, all these actions will be undo/redo in a single step. If the action changes (from typing to deleting or the other way around)
		all the actions up to that point (under UNDO_EVT_BLOCK_SECS) are recorded in a single block.
		Setting it to 0 uses the original behavior (1 char at the time)
		
		
		
		
		********************************************************************************************************************************************** Block chars:
		There are 2 constants that define the characters that define a "block"
		BLOCK_OPEN_CHARS = "([{"
		BLOCK_CLOSE_CHARS = ")]}"
		
		you can add more chars to these constants to define your own blocks, as long as their positions in the constant string match, and as long as they're a single char.
		for example if you wanted '+' and '-' to define a block, modify the constants like so:
		BLOCK_OPEN_CHARS = "([{+"
		BLOCK_CLOSE_CHARS = ")]}-"
		
		
		
		
		********************************************************************************************************************************************** Events:
		AutocompleteOptionsForPrefix(prefix as string) as AutocompleteOptions
		Basically, you can use your own autocomplete engine here, prefix is the word for which you need to provide the autocomplete options.
		You need to set the following properties in the AutocompleteOptions object you wish to return:
		prefix as string: the word for which you will be providing the options.
		options() as string: the Autocomplete options for the prefix
		longestCommonPrefix as string: the longest common prefix of all the available options.
		The project includes an autocomplete engine based on a patricia tree, check the included demo project to see how it works.
		
		HighlightingComplete
		Raised when the highlighting Thread has finished Highlighting
		
		LineCountChanged(newLineCount as integer)
		The number of lines has changed. Useful if you're handling your own scrollbars.
		
		MaxLineLengthChanged(maxLineLengthInPixels as integer)
		There's a new longest line in the field. Useful when handling your own Scrollbars.
		
		SelChanged(line as integer, column as integer, length as integer)
		Same as SelChanged for a regular editfield, however, this event gives you the curret line number, column number and selection length.
		
		ShouldTriggerAutocomplete(Key as string, hasAutocompleteOptions as boolean) as Boolean
		key is the current pressed key, hasAutocompleteOptions is true if there any autocompleteOptions for the word where the caret is.
		Return true if you want to trigger the autoComplete mechanism
		
		UseBackgroundColorForLine(lineIndex as integer, byref lineBackgroundColor as color) As boolean
		Return true to use a custom background color for the specified line, set the lineBackgroundColor parameter to the desired color.
		
		Event UseBookmarkIconForLine(lineIndex as integer) As Picture
		Raised when a bookmarked line is about to be drawn, return a Picture to use that picture as the bookmark indicator, or return nil to use the default.
		
		Event GutterClicked(onLine as integer, x as integer, y as integer)
		Raised when the user clicks on the gutter, x and y are the local coordinates of the click
		
		Event PaintBelowLine(lineIndex as integer, g as graphics, x as integer, y as integer, w as integer, h as integer)
		Raised before painting the textline with index "lineIndex", g is the graphics context for the textline, x, y, w, h the rect in the editfield where the textline will be drawn.
		
		Event PaintAboveLine(lineIndex as integer, g as graphics, x as integer, y as integer, w as integer, h as integer)
		Raised after painting the textline with index "lineIndex", g is the graphics context for the textline, x, y, w, h the rect in the editfield where the textline will be drawn.
		
		Event PaintOver(g as Graphics)
		Raised after the editfield is done drawing itself, in case you need to do Custom drawing on top of the editfield.
		
		Event PlaceholderSelected(placeholderLabel as String, lineIndex as integer, line as textLine, placeholder as textPlaceholder, doubleClick as Boolean)
		Rasied when a placeholder is selected, either clicked on, or using the keyboard.
		
		Event TextInserted(offset as integer, text as String)
		Raised after text is inserted, offset is the character position where "text" was inserted
		
		Event TextRemoved(offset as integer, text as String)
		Raised after text is removed, offset is the character position from where "text" was removed
		
		Event HorizontalScrollValueChanged()
		Raised when the editfield changes its horizontal scroll value
		
		Event VerticalScrollValueChanged()
		Raised when the editfield changes its vertical scroll value
		
		Event ScrollValuesChanged()
		Raised when the editfield changes any of its scroll values.
		
		Event ShouldDisplaySuggestionWindowAtPos(byref X as Integer, byref Y as Integer) As Boolean
		Raised when the autocomplete suggestion window is about to appear, you can modify the x,y values of where you want the window to appear
		Return true to use the new values.
		
		
		********************************************************************************************************************************************** Methods:
		CanUndo as Boolean
		Returns true if there are undo steps available.
		
		CaretSymbol as DocumentSymbol
		Returns the document symbol for the current line.
		
		CanRedo as Boolean
		Returns true if there are redo steps available.
		
		CharPosAtLineNum(lineNumber as integer) as integer
		Returns the index of the first character of the given line number, the first character is 0.
		Returns -1 for nonexisting lines
		
		CharPosAtXY(X as integer, Y as integer) as integer
		Returns the index of the character at the given X, Y coordinates.
		
		ClearLineIcons
		Clears all the line icons.
		
		Copy
		Copies the selected text to the clipboard.
		
		CustomEditFieldPrinter(printerGraphics as graphics) as CustomEditFieldPrinter
		Returns a CustomEditFieldPrinter object, ready to be used for printing or drawing.
		
		DocumentSymbols as DocumentSymbol()
		Returns an array of all the Document Symbols in the current document.
		You'll need to sort them by offset if you need them in order.
		
		Find(what as string, ignoreCase as boolean, wrap as boolean, redraw as boolean = true, startPos as integer = -1) as integer
		Finds the "what" string in the editfield, ignoreCase, wrap determines if the search should start again from the begining of the document, 
		redraw redraws the editfield, startPos is the estarting search position, if -1, the search starts at the caret position.
		Returns the location of the found string, -1 if not found.
		
		FoldAllLines
		Folds all foldable lines.
		
		FoldBlockAtCaretPos
		Folds the enclosing block where the caret is at.
		
		GetLine(index as integer) as string
		Returns the text contained in the given line.
		
		HighlightCharacterRange(offset as integer, length as integer, withColor as color, rounded as boolean = false)
		Highlights the specified character range, with the given color. The optional rounded parameter allows for a rounded-rect selection.
		If the ClearHighlightedRangesOnTextChange property is true, all highlighted characters will be cleared when the text changes, if not, you are responsible for keeping the highlighted characters in sync.
		Adding a character range over a previous one will merge both ranges, unless they have different colors, in which case the old one is splitted where they overlap.
		
		Insert(offset as integer, text as string)
		Inserts the given text at the given index (offset). This method is used internally by the control, and externally by the undo mechanism, you shouldn't use it direclty, use instead selstart and seltext.
		
		InvalidateAllLines
		Marks all the visible lines to be re-drawn as soon as possible.
		
		InvalidateLine(index as integer)
		Marks the line at index to be re-drawn as soon as possible.
		
		LineCount as integer
		Returns the number of text lines in the field.
		
		LineIcon(index as integer) as picture / LineIcon(index as integer, assigns value as picture)
		Allows you to get and set an icon for the line at index, the icon is displayed only if the "display line numbers" option is active, since icons are drown on top of the line number.
		Setting the lineIcon to nil clears the icon.
		
		LineNumAtCharPos(offset as integer) as integer
		Returns the line number where the character at index 'offset' is. The first line is line 0, line 0 is displayed as line 1 on screen.
		Returns -1 for offsets past the last character
		
		Paste
		Pastes whatever text is in the clipboard into the EditField.
		
		Redo
		Redoes the last undone step.
		
		Redraw
		Redraws the whole control.
		
		ReHighlight
		Rehighlights the whole document.
		
		Remove(offset as integer, length as integer, updateCaret as boolean = true)
		Removes 'length' characters from the editfield, starting at index 'offset'. updateCaret will move the the caret to the left by 'length' characters, if true.
		This method is used internally by the control, and externally by the undo mechanism, you shouldn't use it direclty, use instead selstart and seltext.
		
		Replace(offset as integer, length as integer, text as string)
		Replaces 'length' characters with 'text' starting at index 'offset'.
		This method is used internally by the control, and externally by the undo mechanism, you shouldn't use it direclty, use instead selstart and seltext.
		
		ResetUndo
		Clears the undo/redo stacks.
		
		Save(toFile as folderItem, encoding as textencoding = nil)
		Save(toFile as folderItem, fileType as string = "Text", encoding as textencoding = nil)
		Saves the contents of the editfield to the specified file, if encoding is nil, the encoding of the text will be used, if not, the provided encoding will be used instead.
		
		SelectAll
		What can I say....
		
		SelectLine(lineNumber as integer)
		Selects the given line.
		
		SelectNextPlaceholder
		Selects the next placeholder in the current document.
		
		SetScrollbars(horizontal as scrollbar, vertical as scrollbar)
		Use this method to set the scrollbars for the control.
		
		SymbolAtLine(index as integer) as DocumentSymbol
		Returns the DocumentSymbol for the given line, nil if none.
		
		SymbolCount as Integer
		Returns the number of symbols in the document.
		
		ToggleLineFold(lineIndex as integer)
		Toggles the folding of the given line.
		
		Undo
		Undoes the latest modification to the text.
		
		UnfoldAllLines
		Unfolds all folded lines.
		
		XYAtCharPos(charPos as integer, byref X as integer, byref Y as integer)
		Returns the X,Y onscreen coordinates of the given character at index 'charPos'
		
		
		
		
		********************************************************************************************************************************************** Properties:
		AutoCloseBrackets as Boolean: 
		Automatically closes any (,[,{ whenever you type one.
		
		AutoIndentNewLines as Boolean:
		Automatically indents new lines to match the indentation of the previous line.
		
		BackColor as Color:
		Background color of the field.
		
		Border as Boolean:
		Displays a border around the field.
		
		BorderColor as Color.
		
		CaretColor as Color.
		
		CaretPos as Integer:
		Sets/gets the position of the caret. when selLength = 0, caretPos and selStart are the same.
		
		ClearHighlightedRangesOnTextChange as Boolean
		If true all highlighted character ranges will be cleared when the text is changed, and before the TextChanged event is raised. You can re-calculate ranges in the textChanged event
		and add them to the field, these will be redrawn on the next update which should be after the TextChanged event is handled.
		
		DirtyLinesColor As color
		DisplayDirtyLines as Boolean
		Shows modified/unsaved lines
		
		DisplayInvisibleCharacters as Boolean.
		
		DisplayLineNumbers as Boolean.
		
		DisplayRightMarginMarker as Boolean
		
		EnableAutocomplete as Boolean.
		
		GutterBackgroundColor as Color.
		
		GutterSeparationLineColor as Color.
		
		GutterWidth as integer. Returns the  width size in pixels of the gutter.
		
		HighlightBlocksOnMouseOverGutter as Boolean
		Turns on/off visual highlighting of code blocks when the mouse cursor is over the gutter
		
		HighlightMatchingBrackets as Boolean.
		Highlights opening/closing brackets when you type them.
		
		LeftMarginOffset as Integer
		Separation in pixels between the left edge of the control and the text
		
		LineNumbersColor as Color.
		
		MaxVisibleLines as Integer:
		Returns the maximum number of visible lines.
		
		ReadOnly as Boolean
		Makes the editfield editable or read-only
		
		RightMarginAtPixel as integer
		Sets the location in pixels where the right margin marker is drawn. If set to 0, it will default to the defaul width for the default PrinterSetup.
		
		ScrollPosition as integer:
		Sets/Gets the index of the first visible line in the field. (verticall scroll)
		
		ScrollPositionX as integer:
		Sets/Gets the horizontal scroll position, in pixels.
		
		SelLength as integer:
		length of the currently selected text
		
		SelStart as integer:
		Starting index of the current selection.
		
		SelText as String:
		Gets the currently selected text, replaces the currently selected text.
		
		SyntaxDefinition as HighlightDefinition
		Syntax Highlight Definition used to highlight the contents of the editfield. If the definition is nil, the default text color is used to display the text.
		
		TabWidth as integer:
		Gets/Sets the width (in spaces) of the Tab Character
		
		Text as String:
		Gets/Sets the text for the field.
		
		TextColor as Color:
		This is the default text color, used only when the syntaxDefinition is nil.
		
		TextFont as String:
		The font used to display the text.
		
		TextHeight as Integer:
		Returns the height of the text (line height)
		
		TextLength as Integer:
		Returns the length of the text in the field.
		
		TextSelectionColor as Color
		Gets/sets the color to use for text selection. if set to &c000000 the OS default color is used.
		
		TextSize as Integer:
		The text size used to display text.
		
		ThickInsertionPoint as Boolean:
		Determines wether the insertion point's width is 1 or 2 pixels
	#tag EndNote

	#tag Note, Name = 4. Syntax Definitions
		Quick and dirty guide on how to write a syntax definition.
		If you want, send me your definitions and I'll make them available on my website.
		
		Basic structure:
		<?xml version="1.0" encoding="UTF-8"?>
		    <!--
		        Version 1.0 are the files used by my previous SyntaxHighlightEditField, which are compatible with this EditField.
		        Version 1.1 adds some extensions, used by this editfield and are not understood by the previous one.
		    -->
		    <highlightDefinition version="1.1">
		
		    <!-- name for this definition, available as HighlightDefinitionInstance.name -->
		    <name>Definition Name</name>
		
		    <!--
		        Code Block definitions/line folding definitions
		        <blockStartMarker> defines the start of a code block, that can be folded, the attribute "indent" gives the number of indentations
		        that will be added to the a new line of text after the line that opens the block. for example, in the example below, the blockStartMarker
		        defines a C-style block:
		        {
		            and after hitting enter, all new lines below the opening line, will be indented "indent" times.
		        }
		        this example also defines a multi-line comment as a block:
		        /*
		        */
		    -->
		    <blockStartMarker indent="1">\{\s*(?:$|//|/\*)|\s*/\*</blockStartMarker>
		    <blockEndMarker>^\s*\}|\s*\*/</blockEndMarker>
		
		    <!--
		        Symbols
		        This block defines the symbols to bookmark by the editfield
		        In this Example, we define a "Class" and "Method" symbols.
		        These will be "bookmarked" and can be accessed using documentSymbols, CaretSymbol, or SymbolAtLine
		    -->
		    <symbols>
		        <symbol type="Class">
		                <entryRegEx>^[ \t]*((?:public|private|protected)?[ \t]*class[^{]+)</entryRegEx>
		        </symbol>
		        <symbol type="Method">
		                <entryRegEx>((?:public|private|protected)[ \t]+(?:(?:abstract|static|final|synchronized|native|strictfp)[ \t]+)*(?:[A-Za-z0-9_\-\.&lt;&gt;]+(?:\[\])?[ \t]+)?[A-Za-z0-9_\-]+[ \t]*\([^\)]*\)[ \t]*(?:\s*throws[ \t]*[A-Za-z0-9_\-, \t\.]+)?)\s*(?=\{?)</entryRegEx>
		        </symbol>
		    </symbols>
		    
		    <!--
		        Placeholders
		        This tag defines what text will be turned into a placeholder by the editfield.
		        In this Example, the text <#placeholder#> will turn into a round rect with the text "placeholder" in it.       
		        IMPORTANT: the RegEx contained here will be used to match the whole text needed to be turrned into placeholder, and the first subgroup will be used as the placeholder label. 
		    -->
		    <placeholders highlightColor="#000000" backgroundColor="#e9effa">&lt;#(.+?)#&gt;</placeholders>
		
		    <!-- Main document settings, defaultcolor is the color used by all text that is not highlighted -->
		    <contexts defaultColor="#0" caseSensitive="yes">
		
		    <!--
		        Highlight contexts, contexts are the main portion of the highlighter, they define the rules to find and highlight portions of text.
		        Name is an identifier for the context, highlight color is the color with which the context will be highlighted, this color overrides the color
		        of enclosing contexts.
		        Contexts can be nested, you can define any context within a context, this allows you to highlight portions of a context with different colors.
		
		        valid attributes for the highlightContext tag:
		        name: name of the context
		        highlightColor: color used to highlight words matched by the context #RRGGBB
		        backgroundColor: color to use as background for the matched words #RRGGBB
		        bold: true/false, should matched words be bolded? defaults to false
		        italic: true/false, should matched words be italic? defaults to false
		        underline: true/false, should matched words be underline? defaults to false
		
		        There are 4 different ways to define a context, all of which are exclusive, from top priority down they are:
		        <startRegEx>: it defines a possible multi-line context, everything starting with the regular expression <startRegex>
		        up to the regular expression <endRegex> will be highlighted.
		
		        <entryRegEx>: it defines a regular expression to match in a SINGLE line of text, if it's found, this context will be used.
		
		        <keywords>: defines a list of words to be highlighted, each regex has to be enclosed in <string></string> tags
		
		        <regexes>: defines a list or regular expressions that define the context, matching one of these uses this context for highlighting,
		        each regex has to be enclosed in <string></string> tags
		
		        in this example, XML tags are defined:
		    -->
		
		    <highlightContext name="Tags" highlightColor="#881280">
		        <entryRegEx>(&lt;[^&gt;]*&gt;)</entryRegEx>
		
		        <!-- Inner context, these highlight words within the enclosing context, in this case strings and attributes -->
		        <highlightContext name="Strings in Tags" highlightColor="#1A1AA6">
		            <entryRegEx>("[^"&gt;&lt;]*")</entryRegEx>
		        </highlightContext>
		
		        <highlightContext name="Single Strings in Tags" highlightColor="#1A1AA6">
		            <entryRegEx>('[^'&gt;&lt;]*')</entryRegEx>
		        </highlightContext>
		
		        <highlightContext name="Attributes in Tags" highlightColor="#994500">
		            <entryRegEx>([\w-]*)[ \t]*=(?=[ \t]*"[^"&gt;&lt;]*")</entryRegEx>
		        </highlightContext>
		    </highlightContext>
		
		    <!-- example: XML comments -->
		        <highlightContext name="Comment" highlightColor="#236E25">
		            <startRegEx>&lt;!--</startRegEx>
		            <endRegEx>--&gt;</endRegEx>
		            <highlightContext name="bolded" highlightColor="#FF0000" bold="true">
		                <keywords>
		                    <string>TODO</string>
		                    <string>HACK</string>
		                </keywords>
		            </highlightContext>
		        </highlightContext>
		    </contexts>
		</highlightDefinition>
	#tag EndNote

	#tag Note, Name = 5. Issues and Bugs
		For latest list of issues, see the website:
		
		  http://code.google.com/p/custom-editfield/
	#tag EndNote


	#tag ViewBehavior
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
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule