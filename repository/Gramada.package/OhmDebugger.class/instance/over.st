debugging
over
	
	| stackDepth siblings | 

	stackDepth := self activeRuleInvocationsStack size.
	stackDepth <= 1 ifTrue: [ ^ false ].

	siblings := #ohmDebugging withLayerDo: [
		self previousNode innerNodesAt: self currentState].
	
	self haltBeforeCondition: 
		[ :d | d ruleInvocationStack size = stackDepth 
				and: [siblings includes: d currentNode] ].
	self haltAfterCondition: 
		[ :d | d ruleInvocationStack size < stackDepth ].
	self proceed.