as yet unclassified
defaultExpression: aNode

	^ (aNode children gather: [:child | self value: child]) flatten