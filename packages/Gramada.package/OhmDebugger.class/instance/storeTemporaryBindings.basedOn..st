accessing
storeTemporaryBindings: state basedOn: result

	self ruleInvocationStack size > 1 ifTrue: [
		result ifTrue: [
			state bindings "Case for not rules which have an arity of 0 --pre"
				ifNotEmpty: [:bindings | self nextToLastRuleInvocation temporaryChildBindings addAll: state bindings ]]
		ifFalse: [ self  nextToLastRuleInvocation temporaryChildBindings 
			addLast: false ]].