layout
adjustOwnBounds

	self height: (self submorphs collect: [:sm | sm height]) sum.
	

		