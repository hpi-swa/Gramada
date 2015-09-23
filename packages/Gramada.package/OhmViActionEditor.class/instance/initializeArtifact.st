as yet unclassified
initializeArtifact

	| sourceCodeEdit |
	
	sourceCodeEdit := OhmViActionTextualEdit new
		outerBorderWidth: 0;
		scrollingMode: #never;
		autoCreateArtifacts: true;
		margins: (20@0 corner: 4@4).
		
	sourceCodeEdit eventHandler grabKeyboardOnMouseEnter: true.

	self artifact: sourceCodeEdit.
	self artifact textMorph styler: OhmUnifiedActionStyler new.