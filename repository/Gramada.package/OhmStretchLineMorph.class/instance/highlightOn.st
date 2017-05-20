highlighting
highlightOn

		self color: (self color negated).
		
		self textMorph selectFrom: self localStart to: self localEnd - 1.
		self textMorph selectionChanged; changed.