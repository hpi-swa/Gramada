editing
actionNameOfRule 

	| baseActionName takenNames |

	baseActionName := OhmAttributes ruleNameToMessageName: self ohmRule ruleName.
	baseActionName := baseActionName , ' aNode '.
	takenNames := Bag new.
	baseActionName := (self ohmRule body nodesResultingInCST) 
		inject: baseActionName 
		into: [:actionName :c | |nextName nextNameNumber|
			nextName := c asActionBindingName.
			nextNameNumber := takenNames occurrencesOf: nextName. 
			takenNames add: nextName.
			actionName , 
				'with' , 
				nextName capitalized  , 
				': ' , 
				nextName , 
				(nextNameNumber > 0 ifTrue: [nextNameNumber] ifFalse: ['']) ,
				' ' ].

	^ baseActionName