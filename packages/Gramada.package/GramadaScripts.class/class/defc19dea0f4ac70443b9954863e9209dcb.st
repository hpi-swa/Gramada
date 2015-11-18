definitions
defc19dea0f4ac70443b9954863e9209dcb
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'27 May 2015 6:12:36 pm'); yourself)); add: (#id->#'c19dea0f-4ac7-0443-b995-4863e9209dcb'); add: (#block->[:in :out | (
	[:invocations | invocations reversed ]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:invocations | invocations reversed ]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)