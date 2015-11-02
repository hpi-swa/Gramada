definitions
defb40e948a1f3be64e885c5029f1ceae22
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'81fca6fe-e11e-b94d-b098-79a1617509c8'); add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'8 June 2015 9:53:33 am'); yourself)); add: (#id->#'b40e948a-1f3b-e64e-885c-5029f1ceae22'); add: (#block->[:in :out | (
	[:objects | 
			objects select: [:failure | failure state bindings notEmpty] 
			thenCollect: [:ohmFailure | |ohmNode|
				ohmNode := ohmFailure state bindings first.
				ohmNode children first parent 
				ifNil: ["To also display incomplete nodes"
					  (ohmNode grammar 
						semanticAction: OhmSetParentAttribute new)
							value: ohmNode].
			ohmNode]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | 
			objects select: [:failure | failure state bindings notEmpty] 
			thenCollect: [:ohmFailure | |ohmNode|
				ohmNode := ohmFailure state bindings first.
				ohmNode children first parent 
				ifNil: ["To also display incomplete nodes"
					  (ohmNode grammar 
						semanticAction: OhmSetParentAttribute new)
							value: ohmNode].
			ohmNode]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)