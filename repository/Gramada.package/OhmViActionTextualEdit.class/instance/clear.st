accessing
clear
	
	self colorBackground: (OhmViSelectionColor colorForLabel: self actionData action methodClass className).
	self colorHighlightedBackground: (OhmViSelectionColor colorForLabel: self actionData action methodClass className).
	self theText: self unifiedSource.
	self color: ((OhmViSelectionColor 
		colorForLabel: self actionData action methodClass className) alpha: 0.15)