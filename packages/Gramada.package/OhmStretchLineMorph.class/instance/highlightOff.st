highlighting
highlightOff

	self textMorph selectFrom:0  to: 0.
	self textMorph selectionChanged; changed.
	self color: (self color negated).