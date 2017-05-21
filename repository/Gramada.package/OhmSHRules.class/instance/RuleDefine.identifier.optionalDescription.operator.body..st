actions
RuleDefine: aNode identifier: anId optionalDescription: description operator: anOperator body: ruleBody

	| ranges |
	ranges := (self value: ruleBody) asOrderedCollection.
	ranges  
		addAll: { self rangeFrom: anId type: #ohmRuleDeclarationName.
				 self rangeFrom: anOperator type: #ohmOperator. };
		addAll: (self value: description).
	^ ranges