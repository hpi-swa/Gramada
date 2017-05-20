standard attributes
defaultExpression: aNode

	^ Set newFrom: ((aNode children gather: [:c | self value: c]) 
		, { aNode ruleName})