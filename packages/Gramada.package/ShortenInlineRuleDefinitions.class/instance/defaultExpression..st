as yet unclassified
defaultExpression: aNode
	
	^ aNode children inject: '' into: [:s :c | s , (self value: c)]