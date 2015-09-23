as yet unclassified
defaultContextMenu

	| menu |
	menu := ViContextMenu new.
	
	"Connect back to editor to make source code more readable."
	menu
		addIcon: UiFugueIcons folderOpenDocumentTextIcon text: 'Open it (CMD+O)' receiver: self editView selector: #openIt;
		addSeparator;
		addIcon: UiFugueIcons arrowStepIcon text: 'Senders of it (CMD+N)' receiver: self editView selector: #sendersOfIt;
		addIcon: UiFugueIcons scriptsTextIcon text: 'Implementors of it (CMD+M)' receiver: self editView selector: #implementorsOfIt.

	^ menu