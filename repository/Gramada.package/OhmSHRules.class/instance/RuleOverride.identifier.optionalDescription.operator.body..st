actions
RuleOverride: aNode identifier: anId optionalDescription: description operator: anOperator body: ruleBody

	| ranges |
	ranges := (self value: ruleBody) asOrderedCollection.
	ranges  
		addAll: {self rangeFrom: anId type: #ruleDeclarationName.
				 self rangeFrom: anOperator type: #operator. };
		addAll: (self value: description).
	^ ranges