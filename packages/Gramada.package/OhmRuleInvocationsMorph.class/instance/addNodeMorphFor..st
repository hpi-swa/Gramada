accessing
addNodeMorphFor: aNode

	| nodeMorph |
	
	nodeMorph := (OhmRuleInvocationMorph new)
		node: aNode;
		contents: (aNode debugNodeString ifNil: [ aNode name ]); 
		fontName: 'Sergoe' size: 10; 
		yourself.
	self nodeMorphs at: aNode put: nodeMorph.
	self addMorph: nodeMorph.
	^nodeMorph