layout
highlightActiveInvocations

	self invocations collect: [:i | i node] thenDo: [:n | (self nodeMorphs at: n) text allBold ]