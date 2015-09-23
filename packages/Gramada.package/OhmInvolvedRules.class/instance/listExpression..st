standard attributes
listExpression: aNode

	^ Set newFrom: (aNode children gather: [:child | self value: child])