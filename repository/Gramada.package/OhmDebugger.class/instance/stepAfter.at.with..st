debugging callbacks
stepAfter: aNode at: state with: result

	self storeTemporaryBindings: state basedOn: result.
	
	(self haltAfterCondition value: self)
		ifTrue: [ self haltPosition: #after.
				self currentInvocation: self ruleInvocationStack last.
				self haltDebugProcess.].

	self ruleInvocationStack removeLast.