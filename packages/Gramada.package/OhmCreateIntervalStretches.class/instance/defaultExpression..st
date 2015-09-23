actions
defaultExpression: aNode
	"Order matters as this way we construct it from top to bottom"
	(aNode interval start - self startOffset
		to: ((aNode interval end) 
				min: aNode interval start + (aNode interval contents size)) - self startOffset)
		do: [:index | 
			index = (self stretches size + 1)
				ifTrue: ["pass"]
				ifFalse: [self assert: index < (self stretches size + 1).
						(self stretches at: index) add: aNode.]].

	aNode children do: [:c | self value: c].