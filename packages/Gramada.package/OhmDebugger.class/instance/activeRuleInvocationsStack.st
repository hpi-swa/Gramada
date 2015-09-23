accessing
activeRuleInvocationsStack

	^ self ruleInvocationStack copyFrom: 1 
		to: (self ruleInvocationStack indexOf: self currentInvocation)