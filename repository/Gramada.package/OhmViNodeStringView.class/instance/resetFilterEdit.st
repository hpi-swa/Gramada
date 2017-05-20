initialization
resetFilterEdit 

	filterEdit := UiListView new
		listOrientation: #vertical;
		listSpec: (UiItemViewColumnSpec newFrom: {
			#text -> #text. } );
		model: (OhmViNodeStringRulesModel new node: self node; yourself);
		hResizing: #spaceFill;
		vResizing: #rigid;
		selectionMode: UiViewMultiSelection;
		borderStyle: (BorderStyle inset width: 1);
		yourself.
	^ filterEdit