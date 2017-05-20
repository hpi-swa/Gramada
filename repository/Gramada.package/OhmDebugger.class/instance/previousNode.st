accessing
previousNode

	self ruleInvocationStack size < 2 ifTrue: [^ nil].
	^ (self ruleInvocationStack at: (self ruleInvocationStack indexOf: self currentRuleInvocation) - 1) node