event handling
mouseEnter: evt
		
		self stretch highlightOn: evt.

		self hint: TextMorph new.
		self hint 
			contents: self ohmNode ruleName;
			backgroundColor: Color white;
			topLeft: evt position + (15@0).

		self owner addMorphFront: self hint.