definitions
def1db6c178bad4514ab5da0e18e7b312e9
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ohmResult | | matchedST |
		matchedST := ohmResult succeeded 
			ifTrue: [ohmResult cst]
			ifFalse: [ohmResult failure state bindings 
						ifEmpty: [OhmNode new]
						ifNotEmptyDo: [:bindings | bindings first]].
		(matchedST children notEmpty and: [matchedST children first parent isNil])
			ifTrue: ["To also display incomplete nodes"
					  (matchedST grammar 
						semanticAction: OhmSetParentAttribute new)
							value: matchedST].
		matchedST]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'1db6c178-bad4-514a-b5da-0e18e7b312e9').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'78d57678-18df-ed4f-8b2b-d2b9bd33ecdc').
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '27 May 2015 6:27:12 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ohmResult | | matchedST |
		matchedST := ohmResult succeeded 
			ifTrue: [ohmResult cst]
			ifFalse: [ohmResult failure state bindings 
						ifEmpty: [OhmNode new]
						ifNotEmptyDo: [:bindings | bindings first]].
		(matchedST children notEmpty and: [matchedST children first parent isNil])
			ifTrue: ["To also display incomplete nodes"
					  (matchedST grammar 
						semanticAction: OhmSetParentAttribute new)
							value: matchedST].
		matchedST]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})