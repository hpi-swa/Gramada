as yet unclassified
listExpression: aNode

	^ aNode children gather: [:c | self value: c]