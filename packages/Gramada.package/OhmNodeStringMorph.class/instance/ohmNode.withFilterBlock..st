accessing
ohmNode: anObject withFilterBlock: aBlock

	ohmNode := anObject.
	filterBlock := aBlock.
	self contentChanged.