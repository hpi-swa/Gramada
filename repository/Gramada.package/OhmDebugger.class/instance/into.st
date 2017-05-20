debugging
into

	| currentNode innerNodes |
	self haltPosition = #after ifTrue: [ ^ false ].
	currentNode := self currentNode.
	innerNodes := #ohmDebugging 
		withLayerDo: [currentNode innerNodesAt: self currentState].
	innerNodes 
		ifEmpty: [ ^ false ]
		ifNotEmpty: [self haltBeforeCondition: 
						[ :d | innerNodes first == d currentNode].
					self haltAfterCondition: 
						[:d | currentNode == currentNode "For memoized results"]].
	self proceed.