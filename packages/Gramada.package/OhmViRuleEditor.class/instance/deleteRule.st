editing
deleteRule

	self ohmRule boundGrammar removeRuleNamed: self ohmRule ruleName.
	self close.