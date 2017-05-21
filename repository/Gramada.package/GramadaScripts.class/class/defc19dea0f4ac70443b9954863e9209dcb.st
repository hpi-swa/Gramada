definitions
defc19dea0f4ac70443b9954863e9209dcb
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:invocations | invocations reversed ]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'c19dea0f-4ac7-0443-b995-4863e9209dcb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '27 May 2015 6:12:36 pm')})).
(#sourceCode -> '[:in :out | (
	[:invocations | invocations reversed ]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})