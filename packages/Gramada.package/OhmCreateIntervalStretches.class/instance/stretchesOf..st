accessing
stretchesOf: aNode

	self stretches: 
		((1 to: aNode interval contents size) 
			collect: [:i | OrderedCollection new]).
	self startOffset: aNode interval start - 1.
	self value: aNode.
	^ self stretches