accessing
addNodeMorphFor: aNode asChildOf: parentNode

	| nodeMorph |
	
	nodeMorph := self addNodeMorphFor: aNode.
	(self nodeMorphs at: parentNode)
		addChild: nodeMorph.
	^ nodeMorph