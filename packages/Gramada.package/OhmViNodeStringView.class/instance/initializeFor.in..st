initialization
initializeFor: aScript in: anEnvironment

	self setProperty: #viewId toValue: self class defaultViewId.     
	self connect: self signal: #selectionChanged: to: anEnvironment selector: #notifyChangedSelection:.

	self 
		color: Color white;
		borderWidth: 0;
		filterBlock: [:stretch | true ].