accessing
potentialChildActions
	| calledRules |
	calledRules := self actionData rule outgoingCalls 
		collect: [:c | self actionData rule boundGrammar ruleDeclarations at: c ruleName].
	^ (calledRules gather: [:r | OhmAttributes possibleActionsForRule: r])
		select: [:a | a methodClass = self actionData action methodClass]
	