debugging callbacks
stepBefore: aNode at: parsingState

	self ruleInvocationStack
		addLast: (OhmRuleInvocation onNode: aNode at: parsingState).
	
	self currentInvocation: self ruleInvocationStack last.
	
	(self haltBeforeCondition value: self)
		ifTrue: [ self haltPosition: #before.
				self haltDebugProcess].