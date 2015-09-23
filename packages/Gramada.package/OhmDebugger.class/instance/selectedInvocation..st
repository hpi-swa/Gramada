accessing
selectedInvocation: currentInvocation

	self currentInvocation: currentInvocation.
	self currentInvocation 
		== self ruleInvocationStack last
		ifTrue: [ self haltPosition: #before ]
		ifFalse: [ self haltPosition: #after ]