creation
newTextMorphWith: aString

	| newTextMorph |
	newTextMorph := TextMorph new
		autoFit: false;
		contents: aString;
		readOnly: true;
		toggleLocked;
		yourself.
	newTextMorph fontName: self textStyle defaultFont name pointSize: 12.

	^ newTextMorph
		